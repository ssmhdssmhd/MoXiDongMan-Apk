package io.reactivex;

import android.support.v4.b41;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public interface Observer<T> {
    void onComplete();

    void onError(@b41 Throwable th);

    void onNext(@b41 T t);

    void onSubscribe(@b41 Disposable disposable);
}
