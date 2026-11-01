package io.reactivex.internal.schedulers;

import android.support.v4.jp1;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cdo;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase implements Callable<Void>, Disposable {

    /* renamed from: case, reason: not valid java name */
    public static final FutureTask<Void> f27277case = new FutureTask<>(Cdo.f25284if, null);

    /* renamed from: do, reason: not valid java name */
    public final Runnable f27278do;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Future<?>> f27279for = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Future<?>> f27280if = new AtomicReference<>();

    /* renamed from: new, reason: not valid java name */
    public final ExecutorService f27281new;

    /* renamed from: try, reason: not valid java name */
    public Thread f27282try;

    public Ccase(Runnable runnable, ExecutorService executorService) {
        this.f27278do = runnable;
        this.f27281new = executorService;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f27279for;
        FutureTask<Void> futureTask = f27277case;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f27282try != Thread.currentThread());
        }
        Future<?> andSet2 = this.f27280if.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f27282try != Thread.currentThread());
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        this.f27282try = Thread.currentThread();
        try {
            this.f27278do.run();
            m29666for(this.f27281new.submit(this));
            this.f27282try = null;
        } catch (Throwable th) {
            this.f27282try = null;
            jp1.l(th);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public void m29666for(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f27280if.get();
            if (future2 == f27277case) {
                future.cancel(this.f27282try != Thread.currentThread());
                return;
            }
        } while (!this.f27280if.compareAndSet(future2, future));
    }

    /* renamed from: if, reason: not valid java name */
    public void m29667if(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f27279for.get();
            if (future2 == f27277case) {
                future.cancel(this.f27282try != Thread.currentThread());
                return;
            }
        } while (!this.f27279for.compareAndSet(future2, future));
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f27279for.get() == f27277case;
    }
}
