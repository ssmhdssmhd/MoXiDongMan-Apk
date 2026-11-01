package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;

/* loaded from: classes4.dex */
public final class n<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f35106do;

    /* renamed from: rx.internal.operators.n$do, reason: invalid class name */
    public static final class Cdo<T> extends Cimport<T, T> {

        /* renamed from: this, reason: not valid java name */
        public static final Object f35107this = new Object();

        /* JADX WARN: Type inference failed for: r1v1, types: [R, java.lang.Object] */
        public Cdo(y22<? super T> y22Var) {
            super(y22Var);
            this.f34936for = f35107this;
        }

        @Override // rx.internal.operators.Cimport, rx.Observer
        public void onCompleted() {
            Object obj = this.f34936for;
            if (obj == f35107this) {
                m38562do();
            } else {
                m38564if(obj);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rx.Observer
        public void onNext(T t) {
            this.f34936for = t;
        }
    }

    public n(Observable<T> observable) {
        this.f35106do = observable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        new Cdo(y22Var).m38566try(this.f35106do);
    }
}
