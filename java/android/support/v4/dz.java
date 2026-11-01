package android.support.v4;

import rx.internal.operators.Cimport;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public abstract class dz<T, R> extends Cimport<T, R> {

    /* renamed from: this, reason: not valid java name */
    public boolean f1167this;

    public dz(y22<? super R> y22Var) {
        super(y22Var);
    }

    @Override // rx.internal.operators.Cimport, rx.Observer
    public void onCompleted() {
        if (this.f1167this) {
            return;
        }
        this.f1167this = true;
        super.onCompleted();
    }

    @Override // rx.internal.operators.Cimport, rx.Observer
    public void onError(Throwable th) {
        if (this.f1167this) {
            Cif.m39151protected(th);
        } else {
            this.f1167this = true;
            super.onError(th);
        }
    }
}
