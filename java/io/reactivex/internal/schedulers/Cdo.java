package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.SchedulerRunnableIntrospection;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.do, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cdo extends AtomicReference<Future<?>> implements Disposable, SchedulerRunnableIntrospection {
    public static final FutureTask<Void> DISPOSED;
    public static final FutureTask<Void> FINISHED;
    private static final long serialVersionUID = 1811839108042568751L;
    public final Runnable runnable;
    public Thread runner;

    static {
        Runnable runnable = io.reactivex.internal.functions.Cdo.f25284if;
        FINISHED = new FutureTask<>(runnable, null);
        DISPOSED = new FutureTask<>(runnable, null);
    }

    public Cdo(Runnable runnable) {
        this.runnable = runnable;
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == FINISHED || future == (futureTask = DISPOSED) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.runner != Thread.currentThread());
    }

    public Runnable getWrappedRunnable() {
        return this.runnable;
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == FINISHED || future == DISPOSED;
    }

    public final void setFuture(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == FINISHED) {
                return;
            }
            if (future2 == DISPOSED) {
                future.cancel(this.runner != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }
}
