package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import com.google.common.base.Function;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.Cinstanceof;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@v10("Use FluentFuture.from(Futures.immediate*Future) or SettableFuture")
@ki0(emulated = true)
@o8
/* renamed from: com.google.common.util.concurrent.public, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cpublic<V> extends Cabstract<V> {

    /* renamed from: com.google.common.util.concurrent.public$do, reason: invalid class name */
    public static abstract class Cdo<V> extends Cpublic<V> implements AbstractFuture.Trusted<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @lf
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @lf
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @lf
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }
    }

    @Deprecated
    /* renamed from: protected, reason: not valid java name */
    public static <V> Cpublic<V> m18308protected(Cpublic<V> cpublic) {
        return (Cpublic) af1.m205continue(cpublic);
    }

    /* renamed from: transient, reason: not valid java name */
    public static <V> Cpublic<V> m18309transient(ListenableFuture<V> listenableFuture) {
        return listenableFuture instanceof Cpublic ? (Cpublic) listenableFuture : new Cdefault(listenableFuture);
    }

    /* renamed from: implements, reason: not valid java name */
    public final <T> Cpublic<T> m18310implements(Function<? super V, T> function, Executor executor) {
        return (Cpublic) Cprivate.m18284static(this, function, executor);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final <T> Cpublic<T> m18311instanceof(AsyncFunction<? super V, T> asyncFunction, Executor executor) {
        return (Cpublic) Cprivate.m18286switch(this, asyncFunction, executor);
    }

    @Cinstanceof.Cdo("AVAILABLE but requires exceptionType to be Throwable.class")
    /* renamed from: interface, reason: not valid java name */
    public final <X extends Throwable> Cpublic<V> m18312interface(Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        return (Cpublic) Cprivate.m18290try(this, cls, asyncFunction, executor);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m18313strictfp(FutureCallback<? super V> futureCallback, Executor executor) {
        Cprivate.m18269do(this, futureCallback, executor);
    }

    @li0
    /* renamed from: synchronized, reason: not valid java name */
    public final Cpublic<V> m18314synchronized(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (Cpublic) Cprivate.m18280package(this, j, timeUnit, scheduledExecutorService);
    }

    @Cinstanceof.Cdo("AVAILABLE but requires exceptionType to be Throwable.class")
    /* renamed from: volatile, reason: not valid java name */
    public final <X extends Throwable> Cpublic<V> m18315volatile(Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        return (Cpublic) Cprivate.m18279new(this, cls, function, executor);
    }
}
