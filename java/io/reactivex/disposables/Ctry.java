package io.reactivex.disposables;

import android.support.v4.b41;

/* renamed from: io.reactivex.disposables.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry extends Cnew<Runnable> {
    private static final long serialVersionUID = -8219729196779211169L;

    public Ctry(Runnable runnable) {
        super(runnable);
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }

    @Override // io.reactivex.disposables.Cnew
    public void onDisposed(@b41 Runnable runnable) {
        runnable.run();
    }
}
