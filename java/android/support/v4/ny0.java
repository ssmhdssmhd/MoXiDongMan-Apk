package android.support.v4;

import io.reactivex.SingleObserver;

@f90
/* loaded from: classes3.dex */
public final class ny0<T> extends jz1<t41<T>> {

    /* renamed from: do, reason: not valid java name */
    public final fy0<T> f4370do;

    public ny0(fy0<T> fy0Var) {
        this.f4370do = fy0Var;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super t41<T>> singleObserver) {
        this.f4370do.subscribe(new wx0(singleObserver));
    }
}
