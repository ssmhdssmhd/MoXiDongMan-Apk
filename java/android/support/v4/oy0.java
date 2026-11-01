package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class oy0 extends fy0<Object> {

    /* renamed from: do, reason: not valid java name */
    public static final oy0 f4805do = new oy0();

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super Object> maybeObserver) {
        maybeObserver.onSubscribe(Cif.NEVER);
    }
}
