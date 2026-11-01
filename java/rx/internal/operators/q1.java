package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayDeque;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class q1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f35265do;

    /* renamed from: for, reason: not valid java name */
    public final int f35266for;

    /* renamed from: if, reason: not valid java name */
    public final rx.Cif f35267if;

    /* renamed from: rx.internal.operators.q1$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35268do;

        public Cdo(Cif cif) {
            this.f35268do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f35268do.m38668if(j);
        }
    }

    /* renamed from: rx.internal.operators.q1$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> implements Func1<Object, T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35271do;

        /* renamed from: for, reason: not valid java name */
        public final rx.Cif f35273for;

        /* renamed from: if, reason: not valid java name */
        public final long f35274if;

        /* renamed from: new, reason: not valid java name */
        public final int f35275new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicLong f35276try = new AtomicLong();

        /* renamed from: case, reason: not valid java name */
        public final ArrayDeque<Object> f35270case = new ArrayDeque<>();

        /* renamed from: else, reason: not valid java name */
        public final ArrayDeque<Long> f35272else = new ArrayDeque<>();

        public Cif(y22<? super T> y22Var, int i, long j, rx.Cif cif) {
            this.f35271do = y22Var;
            this.f35275new = i;
            this.f35274if = j;
            this.f35273for = cif;
        }

        @Override // rx.functions.Func1
        public T call(Object obj) {
            return (T) Creturn.m38691try(obj);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38667do(long j) {
            long j2 = j - this.f35274if;
            while (true) {
                Long lPeek = this.f35272else.peek();
                if (lPeek == null || lPeek.longValue() >= j2) {
                    return;
                }
                this.f35270case.poll();
                this.f35272else.poll();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38668if(long j) {
            u6.m8258goto(this.f35276try, j, this.f35270case, this.f35271do, this);
        }

        @Override // rx.Observer
        public void onCompleted() {
            m38667do(this.f35273for.mo38373if());
            this.f35272else.clear();
            u6.m8262try(this.f35276try, this.f35270case, this.f35271do, this);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35270case.clear();
            this.f35272else.clear();
            this.f35271do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35275new != 0) {
                long jMo38373if = this.f35273for.mo38373if();
                if (this.f35270case.size() == this.f35275new) {
                    this.f35270case.poll();
                    this.f35272else.poll();
                }
                m38667do(jMo38373if);
                this.f35270case.offer(Creturn.m38682break(t));
                this.f35272else.offer(Long.valueOf(jMo38373if));
            }
        }
    }

    public q1(long j, TimeUnit timeUnit, rx.Cif cif) {
        this.f35265do = timeUnit.toMillis(j);
        this.f35267if = cif;
        this.f35266for = -1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var, this.f35266for, this.f35265do, this.f35267if);
        y22Var.add(cif);
        y22Var.setProducer(new Cdo(cif));
        return cif;
    }

    public q1(int i, long j, TimeUnit timeUnit, rx.Cif cif) {
        if (i >= 0) {
            this.f35265do = timeUnit.toMillis(j);
            this.f35267if = cif;
            this.f35266for = i;
            return;
        }
        throw new IndexOutOfBoundsException("count could not be negative");
    }
}
