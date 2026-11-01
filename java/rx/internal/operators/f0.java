package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.observers.Cnew;
import rx.subjects.Cfor;

/* loaded from: classes4.dex */
public final class f0<T, V> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f34723do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends Observable<V>> f34724if;

    /* renamed from: rx.internal.operators.f0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f34725do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f34727if;

        /* renamed from: rx.internal.operators.f0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0522do implements Func1<V, T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Object f34728do;

            public C0522do(Object obj) {
                this.f34728do = obj;
            }

            @Override // rx.functions.Func1
            public T call(V v) {
                return (T) this.f34728do;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, Cfor cfor, ax1 ax1Var) {
            super(y22Var);
            this.f34725do = cfor;
            this.f34727if = ax1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34725do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34727if.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rx.Observer
        public void onNext(T t) {
            try {
                this.f34725do.onNext(f0.this.f34724if.call(t).l4(1).Z(null).K1(new C0522do(t)));
            } catch (Throwable th) {
                s80.m7297goto(th, this);
            }
        }
    }

    public f0(Observable<? extends T> observable, Func1<? super T, ? extends Observable<V>> func1) {
        this.f34723do = observable;
        this.f34724if = func1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        ax1 ax1Var = new ax1(y22Var);
        Cfor cforG6 = Cfor.g6();
        y22Var.add(Observable.P1(cforG6).r5(Cnew.m39117try(ax1Var)));
        return new Cdo(y22Var, cforG6, ax1Var);
    }
}
