package android.support.v4;

import io.reactivex.SingleObserver;

@f90
/* loaded from: classes3.dex */
public final class vz1<T> extends jz1<t41<T>> {

    /* renamed from: do, reason: not valid java name */
    public final jz1<T> f7365do;

    public vz1(jz1<T> jz1Var) {
        this.f7365do = jz1Var;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super t41<T>> singleObserver) {
        this.f7365do.subscribe(new wx0(singleObserver));
    }
}
