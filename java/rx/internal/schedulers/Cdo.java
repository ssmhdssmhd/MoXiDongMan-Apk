package rx.internal.schedulers;

import android.support.v4.dq;
import java.lang.reflect.InvocationTargetException;
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
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.Ccase;

/* renamed from: rx.internal.schedulers.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo extends rx.Cif implements SchedulerLifecycle {

    /* renamed from: case, reason: not valid java name */
    public static final C0547do f35706case;

    /* renamed from: for, reason: not valid java name */
    private static final long f35707for;

    /* renamed from: new, reason: not valid java name */
    private static final TimeUnit f35708new = TimeUnit.SECONDS;

    /* renamed from: try, reason: not valid java name */
    public static final Cfor f35709try;

    /* renamed from: do, reason: not valid java name */
    public final ThreadFactory f35710do;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<C0547do> f35711if = new AtomicReference<>(f35706case);

    /* renamed from: rx.internal.schedulers.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0547do {

        /* renamed from: case, reason: not valid java name */
        private final Future<?> f35712case;

        /* renamed from: do, reason: not valid java name */
        private final ThreadFactory f35713do;

        /* renamed from: for, reason: not valid java name */
        private final ConcurrentLinkedQueue<Cfor> f35714for;

        /* renamed from: if, reason: not valid java name */
        private final long f35715if;

        /* renamed from: new, reason: not valid java name */
        private final dq f35716new;

        /* renamed from: try, reason: not valid java name */
        private final ScheduledExecutorService f35717try;

        /* renamed from: rx.internal.schedulers.do$do$do, reason: invalid class name and collision with other inner class name */
        public class ThreadFactoryC0548do implements ThreadFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ThreadFactory f35718do;

            public ThreadFactoryC0548do(ThreadFactory threadFactory) {
                this.f35718do = threadFactory;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread threadNewThread = this.f35718do.newThread(runnable);
                threadNewThread.setName(threadNewThread.getName() + " (Evictor)");
                return threadNewThread;
            }
        }

        /* renamed from: rx.internal.schedulers.do$do$if, reason: invalid class name */
        public class Cif implements Runnable {
            public Cif() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0547do.this.m38836do();
            }
        }

        public C0547do(ThreadFactory threadFactory, long j, TimeUnit timeUnit) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            this.f35713do = threadFactory;
            long nanos = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.f35715if = nanos;
            this.f35714for = new ConcurrentLinkedQueue<>();
            this.f35716new = new dq();
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = null;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new ThreadFactoryC0548do(threadFactory));
                Celse.m38844class(scheduledExecutorServiceNewScheduledThreadPool);
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(new Cif(), nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.f35717try = scheduledExecutorServiceNewScheduledThreadPool;
            this.f35712case = scheduledFutureScheduleWithFixedDelay;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38836do() {
            if (this.f35714for.isEmpty()) {
                return;
            }
            long jM38837for = m38837for();
            Iterator<Cfor> it = this.f35714for.iterator();
            while (it.hasNext()) {
                Cfor next = it.next();
                if (next.m38841const() > jM38837for) {
                    return;
                }
                if (this.f35714for.remove(next)) {
                    this.f35716new.m1492try(next);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public long m38837for() {
            return System.nanoTime();
        }

        /* renamed from: if, reason: not valid java name */
        public Cfor m38838if() {
            if (this.f35716new.isUnsubscribed()) {
                return Cdo.f35709try;
            }
            while (!this.f35714for.isEmpty()) {
                Cfor cforPoll = this.f35714for.poll();
                if (cforPoll != null) {
                    return cforPoll;
                }
            }
            Cfor cfor = new Cfor(this.f35713do);
            this.f35716new.m1488do(cfor);
            return cfor;
        }

        /* renamed from: new, reason: not valid java name */
        public void m38839new(Cfor cfor) {
            cfor.m38842final(m38837for() + this.f35715if);
            this.f35714for.offer(cfor);
        }

        /* renamed from: try, reason: not valid java name */
        public void m38840try() {
            try {
                Future<?> future = this.f35712case;
                if (future != null) {
                    future.cancel(true);
                }
                ScheduledExecutorService scheduledExecutorService = this.f35717try;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
            } finally {
                this.f35716new.unsubscribe();
            }
        }
    }

    /* renamed from: rx.internal.schedulers.do$for, reason: invalid class name */
    public static final class Cfor extends Celse {

        /* renamed from: class, reason: not valid java name */
        private long f35721class;

        public Cfor(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f35721class = 0L;
        }

        /* renamed from: const, reason: not valid java name */
        public long m38841const() {
            return this.f35721class;
        }

        /* renamed from: final, reason: not valid java name */
        public void m38842final(long j) {
            this.f35721class = j;
        }
    }

    /* renamed from: rx.internal.schedulers.do$if, reason: invalid class name */
    public static final class Cif extends Cif.Cdo implements Action0 {

        /* renamed from: for, reason: not valid java name */
        private final Cfor f35723for;

        /* renamed from: if, reason: not valid java name */
        private final C0547do f35724if;

        /* renamed from: do, reason: not valid java name */
        private final dq f35722do = new dq();

        /* renamed from: new, reason: not valid java name */
        public final AtomicBoolean f35725new = new AtomicBoolean();

        /* renamed from: rx.internal.schedulers.do$if$do, reason: invalid class name and collision with other inner class name */
        public class C0549do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Action0 f35726do;

            public C0549do(Action0 action0) {
                this.f35726do = action0;
            }

            @Override // rx.functions.Action0
            public void call() {
                if (Cif.this.isUnsubscribed()) {
                    return;
                }
                this.f35726do.call();
            }
        }

        public Cif(C0547do c0547do) {
            this.f35724if = c0547do;
            this.f35723for = c0547do.m38838if();
        }

        @Override // rx.functions.Action0
        public void call() {
            this.f35724if.m38839new(this.f35723for);
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            if (this.f35722do.isUnsubscribed()) {
                return rx.subscriptions.Cfor.m39229try();
            }
            Cgoto cgotoM38850this = this.f35723for.m38850this(new C0549do(action0), j, timeUnit);
            this.f35722do.m1488do(cgotoM38850this);
            cgotoM38850this.addParent(this.f35722do);
            return cgotoM38850this;
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            return mo38375for(action0, 0L, null);
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35722do.isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (this.f35725new.compareAndSet(false, true)) {
                this.f35723for.mo38376if(this);
            }
            this.f35722do.unsubscribe();
        }
    }

    static {
        Cfor cfor = new Cfor(Ccase.NONE);
        f35709try = cfor;
        cfor.unsubscribe();
        C0547do c0547do = new C0547do(null, 0L, null);
        f35706case = c0547do;
        c0547do.m38840try();
        f35707for = Integer.getInteger("rx.io-scheduler.keepalive", 60).intValue();
    }

    public Cdo(ThreadFactory threadFactory) {
        this.f35710do = threadFactory;
        start();
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Cif(this.f35711if.get());
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        C0547do c0547do;
        C0547do c0547do2;
        do {
            c0547do = this.f35711if.get();
            c0547do2 = f35706case;
            if (c0547do == c0547do2) {
                return;
            }
        } while (!this.f35711if.compareAndSet(c0547do, c0547do2));
        c0547do.m38840try();
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        C0547do c0547do = new C0547do(this.f35710do, f35707for, f35708new);
        if (this.f35711if.compareAndSet(f35706case, c0547do)) {
            return;
        }
        c0547do.m38840try();
    }
}
