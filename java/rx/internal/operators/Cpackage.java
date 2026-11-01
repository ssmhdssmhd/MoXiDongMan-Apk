package rx.internal.operators;

import android.support.v4.ww1;
import android.support.v4.y22;
import rx.Observable;
import rx.observers.Cnew;
import rx.plugins.Cif;
import rx.subscriptions.Cfor;

/* renamed from: rx.internal.operators.package, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cpackage<T, U> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f35222do;

    /* renamed from: if, reason: not valid java name */
    public final Observable<U> f35223if;

    /* renamed from: rx.internal.operators.package$do, reason: invalid class name */
    public class Cdo extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35224do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ww1 f35225for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35226if;

        public Cdo(y22 y22Var, ww1 ww1Var) {
            this.f35226if = y22Var;
            this.f35225for = ww1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35224do) {
                return;
            }
            this.f35224do = true;
            this.f35225for.m9298if(Cfor.m39229try());
            Cpackage.this.f35222do.r5(this.f35226if);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35224do) {
                Cif.m39151protected(th);
            } else {
                this.f35224do = true;
                this.f35226if.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(U u) {
            onCompleted();
        }
    }

    public Cpackage(Observable<? extends T> observable, Observable<U> observable2) {
        this.f35222do = observable;
        this.f35223if = observable2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        ww1 ww1Var = new ww1();
        y22Var.add(ww1Var);
        Cdo cdo = new Cdo(Cnew.m39112case(y22Var), ww1Var);
        ww1Var.m9298if(cdo);
        this.f35223if.r5(cdo);
    }
}
