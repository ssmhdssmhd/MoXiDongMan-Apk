package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class o10<T> implements SingleObserver<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f4400do = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        Cdo.dispose(this.f4400do);
    }

    /* renamed from: do, reason: not valid java name */
    public void m5445do() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f4400do.get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.SingleObserver
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f4400do, disposable, getClass())) {
            m5445do();
        }
    }
}
