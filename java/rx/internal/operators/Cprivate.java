package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func0;
import rx.observers.Cnew;

/* renamed from: rx.internal.operators.private, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cprivate<T, U> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f35228do;

    /* renamed from: if, reason: not valid java name */
    public final Func0<? extends Observable<U>> f35229if;

    /* renamed from: rx.internal.operators.private$do, reason: invalid class name */
    public class Cdo extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35230do;

        public Cdo(y22 y22Var) {
            this.f35230do = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            Cprivate.this.f35228do.r5(Cnew.m39112case(this.f35230do));
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35230do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(U u) {
        }
    }

    public Cprivate(Observable<? extends T> observable, Func0<? extends Observable<U>> func0) {
        this.f35228do = observable;
        this.f35229if = func0;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        try {
            this.f35229if.call().l4(1).r5(new Cdo(y22Var));
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
        }
    }
}
