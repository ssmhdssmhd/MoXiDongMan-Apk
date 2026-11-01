package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class o1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f35176do;

    /* renamed from: rx.internal.operators.o1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public int f35177do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f35178for;

        /* renamed from: if, reason: not valid java name */
        public boolean f35179if;

        /* renamed from: rx.internal.operators.o1$do$do, reason: invalid class name and collision with other inner class name */
        public class C0533do implements Producer {

            /* renamed from: do, reason: not valid java name */
            public final AtomicLong f35181do = new AtomicLong(0);

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Producer f35183if;

            public C0533do(Producer producer) {
                this.f35183if = producer;
            }

            @Override // rx.Producer
            public void request(long j) {
                long j2;
                long jMin;
                if (j <= 0 || Cdo.this.f35179if) {
                    return;
                }
                do {
                    j2 = this.f35181do.get();
                    jMin = Math.min(j, o1.this.f35176do - j2);
                    if (jMin == 0) {
                        return;
                    }
                } while (!this.f35181do.compareAndSet(j2, j2 + jMin));
                this.f35183if.request(jMin);
            }
        }

        public Cdo(y22 y22Var) {
            this.f35178for = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35179if) {
                return;
            }
            this.f35179if = true;
            this.f35178for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35179if) {
                return;
            }
            this.f35179if = true;
            try {
                this.f35178for.onError(th);
            } finally {
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (isUnsubscribed()) {
                return;
            }
            int i = this.f35177do;
            int i2 = i + 1;
            this.f35177do = i2;
            int i3 = o1.this.f35176do;
            if (i < i3) {
                boolean z = i2 == i3;
                this.f35178for.onNext(t);
                if (!z || this.f35179if) {
                    return;
                }
                this.f35179if = true;
                try {
                    this.f35178for.onCompleted();
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35178for.setProducer(new C0533do(producer));
        }
    }

    public o1(int i) {
        if (i >= 0) {
            this.f35176do = i;
            return;
        }
        throw new IllegalArgumentException("limit >= 0 required but it was " + i);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var);
        if (this.f35176do == 0) {
            y22Var.onCompleted();
            cdo.unsubscribe();
        }
        y22Var.add(cdo);
        return cdo;
    }
}
