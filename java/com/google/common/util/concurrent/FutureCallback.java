package com.google.common.util.concurrent;

import android.support.v4.b51;
import android.support.v4.ki0;

@ki0
/* loaded from: classes2.dex */
public interface FutureCallback<V> {
    void onFailure(Throwable th);

    void onSuccess(@b51 V v);
}
