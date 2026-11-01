package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;

/* loaded from: classes3.dex */
public final class jy0<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final Throwable f3241do;

    public jy0(Throwable th) {
        this.f3241do = th;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        maybeObserver.onSubscribe(Cif.m29364do());
        maybeObserver.onError(this.f3241do);
    }
}
