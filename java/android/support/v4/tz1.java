package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Cif;

/* loaded from: classes3.dex */
public final class tz1<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f6713do;

    public tz1(T t) {
        this.f6713do = t;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        singleObserver.onSubscribe(Cif.m29364do());
        singleObserver.onSuccess(this.f6713do);
    }
}
