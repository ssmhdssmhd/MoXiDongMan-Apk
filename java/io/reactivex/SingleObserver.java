package io.reactivex;

import android.support.v4.b41;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public interface SingleObserver<T> {
    void onError(@b41 Throwable th);

    void onSubscribe(@b41 Disposable disposable);

    void onSuccess(@b41 T t);
}
