package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;

/* loaded from: classes4.dex */
public final class k1<T, U> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<U> f35017do;

    /* renamed from: rx.internal.operators.k1$do, reason: invalid class name */
    public class Cdo extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f35018do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f35020if;

        public Cdo(AtomicBoolean atomicBoolean, ax1 ax1Var) {
            this.f35018do = atomicBoolean;
            this.f35020if = ax1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35020if.onError(th);
            this.f35020if.unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(U u) {
            this.f35018do.set(true);
            unsubscribe();
        }
    }

    /* renamed from: rx.internal.operators.k1$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f35021do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f35023if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(y22 y22Var, AtomicBoolean atomicBoolean, ax1 ax1Var) {
            super(y22Var);
            this.f35021do = atomicBoolean;
            this.f35023if = ax1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35023if.onCompleted();
            unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35023if.onError(th);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35021do.get()) {
                this.f35023if.onNext(t);
            } else {
                request(1L);
            }
        }
    }

    public k1(Observable<U> observable) {
        this.f35017do = observable;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        ax1 ax1Var = new ax1(y22Var);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        Cdo cdo = new Cdo(atomicBoolean, ax1Var);
        y22Var.add(cdo);
        this.f35017do.r5(cdo);
        return new Cif(y22Var, atomicBoolean, ax1Var);
    }
}
