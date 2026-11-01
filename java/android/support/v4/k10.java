package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class k10 implements CompletableObserver, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f3249do = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        Cdo.dispose(this.f3249do);
    }

    /* renamed from: do, reason: not valid java name */
    public void m4174do() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f3249do.get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.CompletableObserver
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f3249do, disposable, getClass())) {
            m4174do();
        }
    }
}
