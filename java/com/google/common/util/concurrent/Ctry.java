package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ji0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import org.apache.commons.lang3.Cclass;

@li0
@o8
/* renamed from: com.google.common.util.concurrent.try, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ctry implements Service {

    /* renamed from: if, reason: not valid java name */
    private static final Logger f15911if = Logger.getLogger(Ctry.class.getName());

    /* renamed from: do, reason: not valid java name */
    private final Ccase f15912do = new C0155try(this, null);

    /* renamed from: com.google.common.util.concurrent.try$do, reason: invalid class name */
    public class Cdo extends Service.Cif {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ScheduledExecutorService f15913do;

        public Cdo(ScheduledExecutorService scheduledExecutorService) {
            this.f15913do = scheduledExecutorService;
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: do */
        public void mo18039do(Service.Cfor cfor, Throwable th) {
            this.f15913do.shutdown();
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: try */
        public void mo18043try(Service.Cfor cfor) {
            this.f15913do.shutdown();
        }
    }

    @o8
    /* renamed from: com.google.common.util.concurrent.try$for, reason: invalid class name */
    public static abstract class Cfor extends Cnew {

        /* renamed from: com.google.common.util.concurrent.try$for$do, reason: invalid class name */
        public class Cdo extends Cextends<Void> implements Callable<Void> {

            /* renamed from: do, reason: not valid java name */
            private final Runnable f15916do;

            /* renamed from: for, reason: not valid java name */
            private final Ccase f15917for;

            /* renamed from: if, reason: not valid java name */
            private final ScheduledExecutorService f15918if;

            /* renamed from: new, reason: not valid java name */
            private final ReentrantLock f15919new = new ReentrantLock();

            /* renamed from: try, reason: not valid java name */
            @ji0("lock")
            @b51
            private Future<Void> f15920try;

            public Cdo(Ccase ccase, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                this.f15916do = runnable;
                this.f15918if = scheduledExecutorService;
                this.f15917for = ccase;
            }

            @Override // com.google.common.util.concurrent.Cextends, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                this.f15919new.lock();
                try {
                    return this.f15920try.cancel(z);
                } finally {
                    this.f15919new.unlock();
                }
            }

            @Override // com.google.common.util.concurrent.Cextends, android.support.v4.ae0
            /* renamed from: do */
            public Future<? extends Void> delegate() {
                throw new UnsupportedOperationException("Only cancel and isCancelled is supported by this future");
            }

            /* renamed from: for, reason: not valid java name */
            public void m18376for() {
                try {
                    Cif cifM18375new = Cfor.this.m18375new();
                    Throwable th = null;
                    this.f15919new.lock();
                    try {
                        Future<Void> future = this.f15920try;
                        if (future == null || !future.isCancelled()) {
                            this.f15920try = this.f15918if.schedule(this, cifM18375new.f15921do, cifM18375new.f15922if);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    this.f15919new.unlock();
                    if (th != null) {
                        this.f15917for.m18086class(th);
                    }
                } catch (Throwable th3) {
                    this.f15917for.m18086class(th3);
                }
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Void call() throws Exception {
                this.f15916do.run();
                m18376for();
                return null;
            }

            @Override // com.google.common.util.concurrent.Cextends, java.util.concurrent.Future
            public boolean isCancelled() {
                this.f15919new.lock();
                try {
                    return this.f15920try.isCancelled();
                } finally {
                    this.f15919new.unlock();
                }
            }
        }

        @o8
        /* renamed from: com.google.common.util.concurrent.try$for$if, reason: invalid class name */
        public static final class Cif {

            /* renamed from: do, reason: not valid java name */
            private final long f15921do;

            /* renamed from: if, reason: not valid java name */
            private final TimeUnit f15922if;

            public Cif(long j, TimeUnit timeUnit) {
                this.f15921do = j;
                this.f15922if = (TimeUnit) af1.m205continue(timeUnit);
            }
        }

        public Cfor() {
            super(null);
        }

        @Override // com.google.common.util.concurrent.Ctry.Cnew
        /* renamed from: for, reason: not valid java name */
        public final Future<?> mo18374for(Ccase ccase, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            Cdo cdo = new Cdo(ccase, scheduledExecutorService, runnable);
            cdo.m18376for();
            return cdo;
        }

        /* renamed from: new, reason: not valid java name */
        public abstract Cif m18375new() throws Exception;
    }

    /* renamed from: com.google.common.util.concurrent.try$if, reason: invalid class name */
    public class Cif implements ThreadFactory {
        public Cif() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return Cimplements.m18220final(Ctry.this.m18368case(), runnable);
        }
    }

    /* renamed from: com.google.common.util.concurrent.try$new, reason: invalid class name */
    public static abstract class Cnew {

        /* renamed from: com.google.common.util.concurrent.try$new$do, reason: invalid class name */
        public static class Cdo extends Cnew {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ long f15924do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ TimeUnit f15925for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ long f15926if;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(long j, long j2, TimeUnit timeUnit) {
                super(null);
                this.f15924do = j;
                this.f15926if = j2;
                this.f15925for = timeUnit;
            }

            @Override // com.google.common.util.concurrent.Ctry.Cnew
            /* renamed from: for */
            public Future<?> mo18374for(Ccase ccase, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return scheduledExecutorService.scheduleWithFixedDelay(runnable, this.f15924do, this.f15926if, this.f15925for);
            }
        }

        /* renamed from: com.google.common.util.concurrent.try$new$if, reason: invalid class name */
        public static class Cif extends Cnew {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ long f15927do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ TimeUnit f15928for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ long f15929if;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cif(long j, long j2, TimeUnit timeUnit) {
                super(null);
                this.f15927do = j;
                this.f15929if = j2;
                this.f15928for = timeUnit;
            }

            @Override // com.google.common.util.concurrent.Ctry.Cnew
            /* renamed from: for */
            public Future<?> mo18374for(Ccase ccase, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return scheduledExecutorService.scheduleAtFixedRate(runnable, this.f15927do, this.f15929if, this.f15928for);
            }
        }

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }

        /* renamed from: do, reason: not valid java name */
        public static Cnew m18380do(long j, long j2, TimeUnit timeUnit) {
            af1.m205continue(timeUnit);
            af1.m232throw(j2 > 0, "delay must be > 0, found %s", j2);
            return new Cdo(j, j2, timeUnit);
        }

        /* renamed from: if, reason: not valid java name */
        public static Cnew m18381if(long j, long j2, TimeUnit timeUnit) {
            af1.m205continue(timeUnit);
            af1.m232throw(j2 > 0, "period must be > 0, found %s", j2);
            return new Cif(j, j2, timeUnit);
        }

        /* renamed from: for */
        public abstract Future<?> mo18374for(Ccase ccase, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        private Cnew() {
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Cif cif, Executor executor) {
        this.f15912do.addListener(cif, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f15912do.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f15912do.awaitTerminated();
    }

    /* renamed from: case, reason: not valid java name */
    public String m18368case() {
        return getClass().getSimpleName();
    }

    /* renamed from: else, reason: not valid java name */
    public void m18369else() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f15912do.failureCause();
    }

    /* renamed from: for, reason: not valid java name */
    public ScheduledExecutorService m18370for() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new Cif());
        addListener(new Cdo(scheduledExecutorServiceNewSingleThreadScheduledExecutor), Cimplements.m18221for());
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m18371goto() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f15912do.isRunning();
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void m18372new() throws Exception;

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service startAsync() {
        this.f15912do.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.Cfor state() {
        return this.f15912do.state();
    }

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service stopAsync() {
        this.f15912do.stopAsync();
        return this;
    }

    public String toString() {
        return m18368case() + " [" + state() + "]";
    }

    /* renamed from: try, reason: not valid java name */
    public abstract Cnew m18373try();

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15912do.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15912do.awaitTerminated(j, timeUnit);
    }

    /* renamed from: com.google.common.util.concurrent.try$try, reason: invalid class name and collision with other inner class name */
    public final class C0155try extends Ccase {

        /* renamed from: import, reason: not valid java name */
        private final ReentrantLock f15930import;

        /* renamed from: native, reason: not valid java name */
        private final Runnable f15931native;

        /* renamed from: throw, reason: not valid java name */
        @l01
        private volatile Future<?> f15933throw;

        /* renamed from: while, reason: not valid java name */
        @l01
        private volatile ScheduledExecutorService f15934while;

        /* renamed from: com.google.common.util.concurrent.try$try$do, reason: invalid class name */
        public class Cdo implements Supplier<String> {
            public Cdo() {
            }

            @Override // com.google.common.base.Supplier
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public String get() {
                return Ctry.this.m18368case() + Cclass.f28652do + C0155try.this.state();
            }
        }

        /* renamed from: com.google.common.util.concurrent.try$try$for, reason: invalid class name */
        public class Cfor implements Runnable {
            public Cfor() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C0155try.this.f15930import.lock();
                    try {
                        if (C0155try.this.state() != Service.Cfor.STOPPING) {
                            return;
                        }
                        Ctry.this.m18369else();
                        C0155try.this.f15930import.unlock();
                        C0155try.this.m18088final();
                    } finally {
                        C0155try.this.f15930import.unlock();
                    }
                } catch (Throwable th) {
                    C0155try.this.m18086class(th);
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.try$try$if, reason: invalid class name */
        public class Cif implements Runnable {
            public Cif() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0155try.this.f15930import.lock();
                try {
                    Ctry.this.m18371goto();
                    C0155try c0155try = C0155try.this;
                    c0155try.f15933throw = Ctry.this.m18373try().mo18374for(Ctry.this.f15912do, C0155try.this.f15934while, C0155try.this.f15931native);
                    C0155try.this.m18087const();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.try$try$new, reason: invalid class name */
        public class Cnew implements Runnable {
            public Cnew() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0155try.this.f15930import.lock();
                try {
                } finally {
                    try {
                    } finally {
                    }
                }
                if (C0155try.this.f15933throw.isCancelled()) {
                    return;
                }
                Ctry.this.m18372new();
            }
        }

        private C0155try() {
            this.f15930import = new ReentrantLock();
            this.f15931native = new Cnew();
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: case */
        public final void mo18085case() {
            this.f15933throw.cancel(false);
            this.f15934while.execute(new Cfor());
        }

        @Override // com.google.common.util.concurrent.Ccase
        public String toString() {
            return Ctry.this.toString();
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: try */
        public final void mo18090try() {
            this.f15934while = Cimplements.m18225native(Ctry.this.m18370for(), new Cdo());
            this.f15934while.execute(new Cif());
        }

        public /* synthetic */ C0155try(Ctry ctry, Cdo cdo) {
            this();
        }
    }
}
