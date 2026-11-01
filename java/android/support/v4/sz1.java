package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;

/* loaded from: classes3.dex */
public final class sz1<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f6343do;

    public sz1(SingleSource<T> singleSource) {
        this.f6343do = singleSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f6343do.subscribe(singleObserver);
    }
}
