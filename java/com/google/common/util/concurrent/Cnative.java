package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ib2;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.y80;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

@lf
@li0
@o8
/* renamed from: com.google.common.util.concurrent.native, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnative implements TimeLimiter {
    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException {
        return (T) callWithTimeout(callable, j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException {
        af1.m205continue(callable);
        af1.m205continue(timeUnit);
        try {
            return callable.call();
        } catch (Error e) {
            throw new y80(e);
        } catch (RuntimeException e2) {
            throw new ib2(e2);
        } catch (Exception e3) {
            throw new ExecutionException(e3);
        } catch (Throwable th) {
            throw new ExecutionException(th);
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit) {
        af1.m205continue(t);
        af1.m205continue(cls);
        af1.m205continue(timeUnit);
        return t;
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) {
        runWithTimeout(runnable, j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) {
        af1.m205continue(runnable);
        af1.m205continue(timeUnit);
        try {
            runnable.run();
        } catch (Error e) {
            throw new y80(e);
        } catch (RuntimeException e2) {
            throw new ib2(e2);
        } catch (Throwable th) {
            throw new ib2(th);
        }
    }
}
