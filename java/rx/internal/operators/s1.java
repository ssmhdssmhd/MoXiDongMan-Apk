package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import rx.Observable;

/* loaded from: classes4.dex */
public final class s1<T, E> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    private final Observable<? extends E> f35342do;

    /* renamed from: rx.internal.operators.s1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35343do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, boolean z, y22 y22Var2) {
            super(y22Var, z);
            this.f35343do = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                this.f35343do.onCompleted();
            } finally {
                this.f35343do.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            try {
                this.f35343do.onError(th);
            } finally {
                this.f35343do.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35343do.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.s1$if, reason: invalid class name */
    public class Cif extends y22<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35345do;

        public Cif(y22 y22Var) {
            this.f35345do = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35345do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35345do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(E e) {
            onCompleted();
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public s1(Observable<? extends E> observable) {
        this.f35342do = observable;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        ax1 ax1Var = new ax1(y22Var, false);
        Cdo cdo = new Cdo(ax1Var, false, ax1Var);
        Cif cif = new Cif(cdo);
        ax1Var.add(cdo);
        ax1Var.add(cif);
        y22Var.add(ax1Var);
        this.f35342do.r5(cif);
        return cdo;
    }
}
