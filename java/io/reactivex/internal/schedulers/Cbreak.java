package io.reactivex.internal.schedulers;

import android.support.v4.jp1;

/* renamed from: io.reactivex.internal.schedulers.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak extends Cdo implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public Cbreak(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.Cdo, io.reactivex.schedulers.SchedulerRunnableIntrospection
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            this.runner = null;
        } catch (Throwable th) {
            this.runner = null;
            lazySet(Cdo.FINISHED);
            jp1.l(th);
        }
    }
}
