package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class n10<T> implements Observer<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f4106do = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        Cdo.dispose(this.f4106do);
    }

    /* renamed from: do, reason: not valid java name */
    public void m5069do() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f4106do.get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f4106do, disposable, getClass())) {
            m5069do();
        }
    }
}
