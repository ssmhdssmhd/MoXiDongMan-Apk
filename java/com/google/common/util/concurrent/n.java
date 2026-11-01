package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Cextends;
import com.google.common.collect.v0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@lf
@li0
/* loaded from: classes2.dex */
abstract class n implements ExecutorService {

    /* renamed from: do, reason: not valid java name */
    private final ExecutorService f15866do;

    /* renamed from: com.google.common.util.concurrent.n$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Callable f15867do;

        public Cdo(Callable callable) {
            this.f15867do = callable;
        }

        @Override // java.lang.Runnable
        public void run() throws Exception {
            try {
                this.f15867do.call();
            } catch (Exception e) {
                Cextends.m15062switch(e);
                throw new RuntimeException(e);
            }
        }
    }

    public n(ExecutorService executorService) {
        this.f15866do = (ExecutorService) af1.m205continue(executorService);
    }

    /* renamed from: for, reason: not valid java name */
    private <T> v0<Callable<T>> m18262for(Collection<? extends Callable<T>> collection) {
        v0.Cdo cdoBuilder = v0.builder();
        Iterator<? extends Callable<T>> it = collection.iterator();
        while (it.hasNext()) {
            cdoBuilder.mo15635do(mo18244if(it.next()));
        }
        return cdoBuilder.mo15642try();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f15866do.awaitTermination(j, timeUnit);
    }

    /* renamed from: do */
    public Runnable mo18243do(Runnable runnable) {
        return new Cdo(mo18244if(Executors.callable(runnable, null)));
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f15866do.execute(mo18243do(runnable));
    }

    /* renamed from: if */
    public abstract <T> Callable<T> mo18244if(Callable<T> callable);

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f15866do.invokeAll(m18262for(collection));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f15866do.invokeAny(m18262for(collection));
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f15866do.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f15866do.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f15866do.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f15866do.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f15866do.submit(mo18244if((Callable) af1.m205continue(callable)));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f15866do.invokeAll(m18262for(collection), j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f15866do.invokeAny(m18262for(collection), j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f15866do.submit(mo18243do(runnable));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, T t) {
        return this.f15866do.submit(mo18243do(runnable), t);
    }
}
