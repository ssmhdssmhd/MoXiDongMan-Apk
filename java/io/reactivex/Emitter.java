package io.reactivex;

import android.support.v4.b41;

/* loaded from: classes3.dex */
public interface Emitter<T> {
    void onComplete();

    void onError(@b41 Throwable th);

    void onNext(@b41 T t);
}
