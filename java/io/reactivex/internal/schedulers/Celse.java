package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import android.support.v4.cq;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private static final String f27303case = "RxCachedWorkerPoolEvictor";

    /* renamed from: class, reason: not valid java name */
    public static final Cfor f27305class;

    /* renamed from: const, reason: not valid java name */
    private static final String f27306const = "rx2.io-priority";

    /* renamed from: else, reason: not valid java name */
    public static final Cthis f27307else;

    /* renamed from: final, reason: not valid java name */
    public static final Cdo f27308final;

    /* renamed from: new, reason: not valid java name */
    private static final String f27310new = "RxCachedThreadScheduler";

    /* renamed from: this, reason: not valid java name */
    public static final long f27311this = 60;

    /* renamed from: try, reason: not valid java name */
    public static final Cthis f27312try;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Cdo> f27313for;

    /* renamed from: if, reason: not valid java name */
    public final ThreadFactory f27314if;

    /* renamed from: catch, reason: not valid java name */
    private static final TimeUnit f27304catch = TimeUnit.SECONDS;

    /* renamed from: goto, reason: not valid java name */
    private static final String f27309goto = "rx2.io-keep-alive-time";

    /* renamed from: break, reason: not valid java name */
    private static final long f27302break = Long.getLong(f27309goto, 60).longValue();

    /* renamed from: io.reactivex.internal.schedulers.else$do, reason: invalid class name */
    public static final class Cdo implements Runnable {

        /* renamed from: case, reason: not valid java name */
        private final ThreadFactory f27315case;

        /* renamed from: do, reason: not valid java name */
        private final long f27316do;

        /* renamed from: for, reason: not valid java name */
        public final cq f27317for;

        /* renamed from: if, reason: not valid java name */
        private final ConcurrentLinkedQueue<Cfor> f27318if;

        /* renamed from: new, reason: not valid java name */
        private final ScheduledExecutorService f27319new;

        /* renamed from: try, reason: not valid java name */
        private final Future<?> f27320try;

        public Cdo(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.f27316do = nanos;
            this.f27318if = new ConcurrentLinkedQueue<>();
            this.f27317for = new cq();
            this.f27315case = threadFactory;
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = null;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, Celse.f27307else);
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.f27319new = scheduledExecutorServiceNewScheduledThreadPool;
            this.f27320try = scheduledFutureScheduleWithFixedDelay;
        }

        /* renamed from: do, reason: not valid java name */
        public void m29681do() {
            if (this.f27318if.isEmpty()) {
                return;
            }
            long jM29682for = m29682for();
            Iterator<Cfor> it = this.f27318if.iterator();
            while (it.hasNext()) {
                Cfor next = it.next();
                if (next.m29687this() > jM29682for) {
                    return;
                }
                if (this.f27318if.remove(next)) {
                    this.f27317for.remove(next);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public long m29682for() {
            return System.nanoTime();
        }

        /* renamed from: if, reason: not valid java name */
        public Cfor m29683if() {
            if (this.f27317for.isDisposed()) {
                return Celse.f27305class;
            }
            while (!this.f27318if.isEmpty()) {
                Cfor cforPoll = this.f27318if.poll();
                if (cforPoll != null) {
                    return cforPoll;
                }
            }
            Cfor cfor = new Cfor(this.f27315case);
            this.f27317for.add(cfor);
            return cfor;
        }

        /* renamed from: new, reason: not valid java name */
        public void m29684new(Cfor cfor) {
            cfor.m29686break(m29682for() + this.f27316do);
            this.f27318if.offer(cfor);
        }

        @Override // java.lang.Runnable
        public void run() {
            m29681do();
        }

        /* renamed from: try, reason: not valid java name */
        public void m29685try() {
            this.f27317for.dispose();
            Future<?> future = this.f27320try;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f27319new;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.else$for, reason: invalid class name */
    public static final class Cfor extends Cgoto {

        /* renamed from: for, reason: not valid java name */
        private long f27321for;

        public Cfor(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f27321for = 0L;
        }

        /* renamed from: break, reason: not valid java name */
        public void m29686break(long j) {
            this.f27321for = j;
        }

        /* renamed from: this, reason: not valid java name */
        public long m29687this() {
            return this.f27321for;
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.else$if, reason: invalid class name */
    public static final class Cif extends Ctry.Cfor {

        /* renamed from: for, reason: not valid java name */
        private final Cfor f27323for;

        /* renamed from: if, reason: not valid java name */
        private final Cdo f27324if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicBoolean f27325new = new AtomicBoolean();

        /* renamed from: do, reason: not valid java name */
        private final cq f27322do = new cq();

        public Cif(Cdo cdo) {
            this.f27324if = cdo;
            this.f27323for = cdo.m29683if();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27325new.compareAndSet(false, true)) {
                this.f27322do.dispose();
                this.f27324if.m29684new(this.f27323for);
            }
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            return this.f27322do.isDisposed() ? io.reactivex.internal.disposables.Cif.INSTANCE : this.f27323for.m29693try(runnable, j, timeUnit, this.f27322do);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27325new.get();
        }
    }

    static {
        Cfor cfor = new Cfor(new Cthis("RxCachedThreadSchedulerShutdown"));
        f27305class = cfor;
        cfor.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger(f27306const, 5).intValue()));
        Cthis cthis = new Cthis(f27310new, iMax);
        f27312try = cthis;
        f27307else = new Cthis(f27303case, iMax);
        Cdo cdo = new Cdo(0L, null, cthis);
        f27308final = cdo;
        cdo.m29685try();
    }

    public Celse() {
        this(f27312try);
    }

    /* renamed from: break, reason: not valid java name */
    public int m29678break() {
        return this.f27313for.get().f27317for.m996new();
    }

    @Override // io.reactivex.Ctry
    /* renamed from: else, reason: not valid java name */
    public void mo29679else() {
        Cdo cdo;
        Cdo cdo2;
        do {
            cdo = this.f27313for.get();
            cdo2 = f27308final;
            if (cdo == cdo2) {
                return;
            }
        } while (!this.f27313for.compareAndSet(cdo, cdo2));
        cdo.m29685try();
    }

    @Override // io.reactivex.Ctry
    /* renamed from: goto, reason: not valid java name */
    public void mo29680goto() {
        Cdo cdo = new Cdo(f27302break, f27304catch, this.f27314if);
        if (this.f27313for.compareAndSet(f27308final, cdo)) {
            return;
        }
        cdo.m29685try();
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cif(this.f27313for.get());
    }

    public Celse(ThreadFactory threadFactory) {
        this.f27314if = threadFactory;
        this.f27313for = new AtomicReference<>(f27308final);
        mo29680goto();
    }
}
