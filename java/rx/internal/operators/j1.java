package rx.internal.operators;

import android.support.v4.i72;
import android.support.v4.y22;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;

/* loaded from: classes4.dex */
public class j1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f34990do;

    /* renamed from: if, reason: not valid java name */
    public final Cif f34991if;

    /* renamed from: rx.internal.operators.j1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private Deque<i72<T>> f34992do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f34994if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34994if = y22Var2;
            this.f34992do = new ArrayDeque();
        }

        /* renamed from: do, reason: not valid java name */
        private void m38583do(long j) {
            long j2 = j - j1.this.f34990do;
            while (!this.f34992do.isEmpty()) {
                i72<T> first = this.f34992do.getFirst();
                if (first.m3305do() >= j2) {
                    return;
                }
                this.f34992do.removeFirst();
                this.f34994if.onNext(first.m3306if());
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            m38583do(j1.this.f34991if.mo38373if());
            this.f34994if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34994if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long jMo38373if = j1.this.f34991if.mo38373if();
            m38583do(jMo38373if);
            this.f34992do.offerLast(new i72<>(jMo38373if, t));
        }
    }

    public j1(long j, TimeUnit timeUnit, Cif cif) {
        this.f34990do = timeUnit.toMillis(j);
        this.f34991if = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
