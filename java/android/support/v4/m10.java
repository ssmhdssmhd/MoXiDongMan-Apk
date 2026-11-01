package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class m10<T> implements MaybeObserver<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f3818do = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        Cdo.dispose(this.f3818do);
    }

    /* renamed from: do, reason: not valid java name */
    public void m4820do() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f3818do.get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.MaybeObserver
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f3818do, disposable, getClass())) {
            m4820do();
        }
    }
}
