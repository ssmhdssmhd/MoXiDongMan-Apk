package io.reactivex;

import android.support.v4.a51;
import android.support.v4.b41;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;

/* loaded from: classes3.dex */
public interface FlowableEmitter<T> extends Emitter<T> {
    boolean isCancelled();

    long requested();

    @b41
    FlowableEmitter<T> serialize();

    void setCancellable(@a51 Cancellable cancellable);

    void setDisposable(@a51 Disposable disposable);

    boolean tryOnError(@b41 Throwable th);
}
