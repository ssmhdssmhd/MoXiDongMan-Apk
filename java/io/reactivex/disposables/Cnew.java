package io.reactivex.disposables;

import android.support.v4.b41;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.disposables.new, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cnew<T> extends AtomicReference<T> implements Disposable {
    private static final long serialVersionUID = 6537757548749041217L;

    public Cnew(T t) {
        super(Cif.m29468else(t, "value is null"));
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        onDisposed(andSet);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == null;
    }

    public abstract void onDisposed(@b41 T t);
}
