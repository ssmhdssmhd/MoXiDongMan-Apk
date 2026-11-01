package com.google.common.util.concurrent;

import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@v10("Use FakeTimeLimiter")
@li0
@o8
/* loaded from: classes2.dex */
public interface TimeLimiter {
    @lf
    <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException, TimeoutException;

    @lf
    <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException;

    <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit);

    void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException;

    void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException;
}
