package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import android.support.v4.bs1;
import android.support.v4.cq;
import android.support.v4.jp1;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal extends Ctry {

    /* renamed from: case, reason: not valid java name */
    public static final Cthis f27326case;

    /* renamed from: else, reason: not valid java name */
    public static final ScheduledExecutorService f27327else;

    /* renamed from: new, reason: not valid java name */
    private static final String f27328new = "rx2.single-priority";

    /* renamed from: try, reason: not valid java name */
    private static final String f27329try = "RxSingleScheduler";

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<ScheduledExecutorService> f27330for;

    /* renamed from: if, reason: not valid java name */
    public final ThreadFactory f27331if;

    /* renamed from: io.reactivex.internal.schedulers.final$do, reason: invalid class name */
    public static final class Cdo extends Ctry.Cfor {

        /* renamed from: do, reason: not valid java name */
        public final ScheduledExecutorService f27332do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f27333for;

        /* renamed from: if, reason: not valid java name */
        public final cq f27334if = new cq();

        public Cdo(ScheduledExecutorService scheduledExecutorService) {
            this.f27332do = scheduledExecutorService;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27333for) {
                return;
            }
            this.f27333for = true;
            this.f27334if.dispose();
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            if (this.f27333for) {
                return Cif.INSTANCE;
            }
            bs1 bs1Var = new bs1(jp1.o(runnable), this.f27334if);
            this.f27334if.add(bs1Var);
            try {
                bs1Var.setFuture(j <= 0 ? this.f27332do.submit((Callable) bs1Var) : this.f27332do.schedule((Callable) bs1Var, j, timeUnit));
                return bs1Var;
            } catch (RejectedExecutionException e) {
                dispose();
                jp1.l(e);
                return Cif.INSTANCE;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27333for;
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f27327else = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f27326case = new Cthis(f27329try, Math.max(1, Math.min(10, Integer.getInteger(f27328new, 5).intValue())), true);
    }

    public Cfinal() {
        this(f27326case);
    }

    /* renamed from: break, reason: not valid java name */
    public static ScheduledExecutorService m29688break(ThreadFactory threadFactory) {
        return Cclass.m29669do(threadFactory);
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: case, reason: not valid java name */
    public Disposable mo29689case(@b41 Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable runnableO = jp1.o(runnable);
        if (j2 > 0) {
            Cbreak cbreak = new Cbreak(runnableO);
            try {
                cbreak.setFuture(this.f27330for.get().scheduleAtFixedRate(cbreak, j, j2, timeUnit));
                return cbreak;
            } catch (RejectedExecutionException e) {
                jp1.l(e);
                return Cif.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = this.f27330for.get();
        Ccase ccase = new Ccase(runnableO, scheduledExecutorService);
        try {
            ccase.m29667if(j <= 0 ? scheduledExecutorService.submit(ccase) : scheduledExecutorService.schedule(ccase, j, timeUnit));
            return ccase;
        } catch (RejectedExecutionException e2) {
            jp1.l(e2);
            return Cif.INSTANCE;
        }
    }

    @Override // io.reactivex.Ctry
    /* renamed from: else */
    public void mo29679else() {
        ScheduledExecutorService andSet;
        ScheduledExecutorService scheduledExecutorService = this.f27330for.get();
        ScheduledExecutorService scheduledExecutorService2 = f27327else;
        if (scheduledExecutorService == scheduledExecutorService2 || (andSet = this.f27330for.getAndSet(scheduledExecutorService2)) == scheduledExecutorService2) {
            return;
        }
        andSet.shutdownNow();
    }

    @Override // io.reactivex.Ctry
    /* renamed from: goto */
    public void mo29680goto() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorServiceM29688break = null;
        do {
            scheduledExecutorService = this.f27330for.get();
            if (scheduledExecutorService != f27327else) {
                if (scheduledExecutorServiceM29688break != null) {
                    scheduledExecutorServiceM29688break.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorServiceM29688break == null) {
                scheduledExecutorServiceM29688break = m29688break(this.f27331if);
            }
        } while (!this.f27330for.compareAndSet(scheduledExecutorService, scheduledExecutorServiceM29688break));
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cdo(this.f27330for.get());
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: try */
    public Disposable mo29361try(@b41 Runnable runnable, long j, TimeUnit timeUnit) {
        Ccatch ccatch = new Ccatch(jp1.o(runnable));
        try {
            ccatch.setFuture(j <= 0 ? this.f27330for.get().submit(ccatch) : this.f27330for.get().schedule(ccatch, j, timeUnit));
            return ccatch;
        } catch (RejectedExecutionException e) {
            jp1.l(e);
            return Cif.INSTANCE;
        }
    }

    public Cfinal(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f27330for = atomicReference;
        this.f27331if = threadFactory;
        atomicReference.lazySet(m29688break(threadFactory));
    }
}
