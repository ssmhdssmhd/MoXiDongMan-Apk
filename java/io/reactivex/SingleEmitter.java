package io.reactivex;

import android.support.v4.a51;
import android.support.v4.b41;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;

/* loaded from: classes3.dex */
public interface SingleEmitter<T> {
    boolean isDisposed();

    void onError(@b41 Throwable th);

    void onSuccess(@b41 T t);

    void setCancellable(@a51 Cancellable cancellable);

    void setDisposable(@a51 Disposable disposable);

    boolean tryOnError(@b41 Throwable th);
}
