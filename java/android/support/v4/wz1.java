package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class wz1 extends jz1<Object> {

    /* renamed from: do, reason: not valid java name */
    public static final jz1<Object> f7734do = new wz1();

    private wz1() {
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Object> singleObserver) {
        singleObserver.onSubscribe(Cif.NEVER);
    }
}
