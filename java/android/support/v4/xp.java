package android.support.v4;

import io.reactivex.SingleObserver;

@f90
/* loaded from: classes3.dex */
public final class xp<T> extends jz1<t41<T>> {

    /* renamed from: do, reason: not valid java name */
    public final np f8000do;

    public xp(np npVar) {
        this.f8000do = npVar;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super t41<T>> singleObserver) {
        this.f8000do.subscribe(new wx0(singleObserver));
    }
}
