package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import android.support.v4.bs1;
import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.schedulers.SchedulerRunnableIntrospection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends Ctry {

    /* renamed from: new, reason: not valid java name */
    public static final Ctry f27355new = io.reactivex.schedulers.Cdo.m29768else();

    /* renamed from: for, reason: not valid java name */
    @b41
    public final Executor f27356for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f27357if;

    /* renamed from: io.reactivex.internal.schedulers.new$do, reason: invalid class name */
    public final class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final Cif f27358do;

        public Cdo(Cif cif) {
            this.f27358do = cif;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif cif = this.f27358do;
            cif.direct.replace(Cnew.this.mo29697new(cif));
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.new$for, reason: invalid class name */
    public static final class Cfor extends Ctry.Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final boolean f27361do;

        /* renamed from: if, reason: not valid java name */
        public final Executor f27363if;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f27364new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicInteger f27365try = new AtomicInteger();

        /* renamed from: case, reason: not valid java name */
        public final cq f27360case = new cq();

        /* renamed from: for, reason: not valid java name */
        public final io.reactivex.internal.queue.Cdo<Runnable> f27362for = new io.reactivex.internal.queue.Cdo<>();

        /* renamed from: io.reactivex.internal.schedulers.new$for$do, reason: invalid class name */
        public static final class Cdo extends AtomicBoolean implements Runnable, Disposable {
            private static final long serialVersionUID = -2421395018820541164L;
            public final Runnable actual;

            public Cdo(Runnable runnable) {
                this.actual = runnable;
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.actual.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        /* renamed from: io.reactivex.internal.schedulers.new$for$for, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0344for implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final tw1 f27366do;

            /* renamed from: if, reason: not valid java name */
            private final Runnable f27368if;

            public RunnableC0344for(tw1 tw1Var, Runnable runnable) {
                this.f27366do = tw1Var;
                this.f27368if = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f27366do.replace(Cfor.this.mo29677if(this.f27368if));
            }
        }

        /* renamed from: io.reactivex.internal.schedulers.new$for$if, reason: invalid class name */
        public static final class Cif extends AtomicInteger implements Runnable, Disposable {
            public static final int FINISHED = 2;
            public static final int INTERRUPTED = 4;
            public static final int INTERRUPTING = 3;
            public static final int READY = 0;
            public static final int RUNNING = 1;
            private static final long serialVersionUID = -3603436687413320876L;
            public final Runnable run;
            public final DisposableContainer tasks;
            public volatile Thread thread;

            public Cif(Runnable runnable, DisposableContainer disposableContainer) {
                this.run = runnable;
                this.tasks = disposableContainer;
            }

            public void cleanup() {
                DisposableContainer disposableContainer = this.tasks;
                if (disposableContainer != null) {
                    disposableContainer.delete(this);
                }
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                while (true) {
                    int i = get();
                    if (i >= 2) {
                        return;
                    }
                    if (i == 0) {
                        if (compareAndSet(0, 4)) {
                            cleanup();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.thread;
                        if (thread != null) {
                            thread.interrupt();
                            this.thread = null;
                        }
                        set(4);
                        cleanup();
                        return;
                    }
                }
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get() == 0) {
                    this.thread = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.thread = null;
                        return;
                    }
                    try {
                        this.run.run();
                        this.thread = null;
                        if (compareAndSet(1, 2)) {
                            cleanup();
                            return;
                        }
                        while (get() == 3) {
                            Thread.yield();
                        }
                        Thread.interrupted();
                    } catch (Throwable th) {
                        this.thread = null;
                        if (compareAndSet(1, 2)) {
                            cleanup();
                        } else {
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        }
                        throw th;
                    }
                }
            }
        }

        public Cfor(Executor executor, boolean z) {
            this.f27363if = executor;
            this.f27361do = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27364new) {
                return;
            }
            this.f27364new = true;
            this.f27360case.dispose();
            if (this.f27365try.getAndIncrement() == 0) {
                this.f27362for.clear();
            }
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            if (j <= 0) {
                return mo29677if(runnable);
            }
            if (this.f27364new) {
                return io.reactivex.internal.disposables.Cif.INSTANCE;
            }
            tw1 tw1Var = new tw1();
            tw1 tw1Var2 = new tw1(tw1Var);
            bs1 bs1Var = new bs1(new RunnableC0344for(tw1Var2, jp1.o(runnable)), this.f27360case);
            this.f27360case.add(bs1Var);
            Executor executor = this.f27363if;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    bs1Var.setFuture(((ScheduledExecutorService) executor).schedule((Callable) bs1Var, j, timeUnit));
                } catch (RejectedExecutionException e) {
                    this.f27364new = true;
                    jp1.l(e);
                    return io.reactivex.internal.disposables.Cif.INSTANCE;
                }
            } else {
                bs1Var.setFuture(new io.reactivex.internal.schedulers.Cfor(Cnew.f27355new.mo29361try(bs1Var, j, timeUnit)));
            }
            tw1Var.replace(bs1Var);
            return tw1Var2;
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: if */
        public Disposable mo29677if(@b41 Runnable runnable) {
            Disposable cdo;
            if (this.f27364new) {
                return io.reactivex.internal.disposables.Cif.INSTANCE;
            }
            Runnable runnableO = jp1.o(runnable);
            if (this.f27361do) {
                cdo = new Cif(runnableO, this.f27360case);
                this.f27360case.add(cdo);
            } else {
                cdo = new Cdo(runnableO);
            }
            this.f27362for.offer(cdo);
            if (this.f27365try.getAndIncrement() == 0) {
                try {
                    this.f27363if.execute(this);
                } catch (RejectedExecutionException e) {
                    this.f27364new = true;
                    this.f27362for.clear();
                    jp1.l(e);
                    return io.reactivex.internal.disposables.Cif.INSTANCE;
                }
            }
            return cdo;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27364new;
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.internal.queue.Cdo<Runnable> cdo = this.f27362for;
            int iAddAndGet = 1;
            while (!this.f27364new) {
                do {
                    Runnable runnablePoll = cdo.poll();
                    if (runnablePoll != null) {
                        runnablePoll.run();
                    } else if (this.f27364new) {
                        cdo.clear();
                        return;
                    } else {
                        iAddAndGet = this.f27365try.addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    }
                } while (!this.f27364new);
                cdo.clear();
                return;
            }
            cdo.clear();
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.new$if, reason: invalid class name */
    public static final class Cif extends AtomicReference<Runnable> implements Runnable, Disposable, SchedulerRunnableIntrospection {
        private static final long serialVersionUID = -4101336210206799084L;
        public final tw1 direct;
        public final tw1 timed;

        public Cif(Runnable runnable) {
            super(runnable);
            this.timed = new tw1();
            this.direct = new tw1();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(null) != null) {
                this.timed.dispose();
                this.direct.dispose();
            }
        }

        @Override // io.reactivex.schedulers.SchedulerRunnableIntrospection
        public Runnable getWrappedRunnable() {
            Runnable runnable = get();
            return runnable != null ? runnable : io.reactivex.internal.functions.Cdo.f25284if;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    tw1 tw1Var = this.timed;
                    io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
                    tw1Var.lazySet(cdo);
                    this.direct.lazySet(cdo);
                } catch (Throwable th) {
                    lazySet(null);
                    this.timed.lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
                    this.direct.lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
                    throw th;
                }
            }
        }
    }

    public Cnew(@b41 Executor executor, boolean z) {
        this.f27356for = executor;
        this.f27357if = z;
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: case */
    public Disposable mo29689case(@b41 Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        if (!(this.f27356for instanceof ScheduledExecutorService)) {
            return super.mo29689case(runnable, j, j2, timeUnit);
        }
        try {
            Cbreak cbreak = new Cbreak(jp1.o(runnable));
            cbreak.setFuture(((ScheduledExecutorService) this.f27356for).scheduleAtFixedRate(cbreak, j, j2, timeUnit));
            return cbreak;
        } catch (RejectedExecutionException e) {
            jp1.l(e);
            return io.reactivex.internal.disposables.Cif.INSTANCE;
        }
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cfor(this.f27356for, this.f27357if);
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: new, reason: not valid java name */
    public Disposable mo29697new(@b41 Runnable runnable) {
        Runnable runnableO = jp1.o(runnable);
        try {
            if (this.f27356for instanceof ExecutorService) {
                Ccatch ccatch = new Ccatch(runnableO);
                ccatch.setFuture(((ExecutorService) this.f27356for).submit(ccatch));
                return ccatch;
            }
            if (this.f27357if) {
                Cfor.Cif cif = new Cfor.Cif(runnableO, null);
                this.f27356for.execute(cif);
                return cif;
            }
            Cfor.Cdo cdo = new Cfor.Cdo(runnableO);
            this.f27356for.execute(cdo);
            return cdo;
        } catch (RejectedExecutionException e) {
            jp1.l(e);
            return io.reactivex.internal.disposables.Cif.INSTANCE;
        }
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: try */
    public Disposable mo29361try(@b41 Runnable runnable, long j, TimeUnit timeUnit) {
        Runnable runnableO = jp1.o(runnable);
        if (!(this.f27356for instanceof ScheduledExecutorService)) {
            Cif cif = new Cif(runnableO);
            cif.timed.replace(f27355new.mo29361try(new Cdo(cif), j, timeUnit));
            return cif;
        }
        try {
            Ccatch ccatch = new Ccatch(runnableO);
            ccatch.setFuture(((ScheduledExecutorService) this.f27356for).schedule(ccatch, j, timeUnit));
            return ccatch;
        } catch (RejectedExecutionException e) {
            jp1.l(e);
            return io.reactivex.internal.disposables.Cif.INSTANCE;
        }
    }
}
