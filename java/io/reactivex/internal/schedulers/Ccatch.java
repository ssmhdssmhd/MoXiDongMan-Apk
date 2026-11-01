package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.schedulers.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch extends Cdo implements Callable<Void> {
    private static final long serialVersionUID = 1811839108042568751L;

    public Ccatch(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.Cdo, io.reactivex.schedulers.SchedulerRunnableIntrospection
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            return null;
        } finally {
            lazySet(Cdo.FINISHED);
            this.runner = null;
        }
    }
}
