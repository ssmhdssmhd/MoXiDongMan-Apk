package com.google.common.util.concurrent;

import android.support.v4.v10;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

@v10("Use the methods in Futures (like immediateFuture) or SettableFuture")
/* loaded from: classes2.dex */
public interface ListenableFuture<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
