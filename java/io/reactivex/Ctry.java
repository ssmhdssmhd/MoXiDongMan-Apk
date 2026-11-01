package io.reactivex;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.schedulers.Cconst;
import io.reactivex.internal.schedulers.Cgoto;
import io.reactivex.internal.util.Ccase;
import io.reactivex.schedulers.SchedulerRunnableIntrospection;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final long f27625do = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* renamed from: io.reactivex.try$do, reason: invalid class name */
    public static final class Cdo implements Disposable, Runnable, SchedulerRunnableIntrospection {

        /* renamed from: do, reason: not valid java name */
        @b41
        public final Runnable f27626do;

        /* renamed from: for, reason: not valid java name */
        @a51
        public Thread f27627for;

        /* renamed from: if, reason: not valid java name */
        @b41
        public final Cfor f27628if;

        public Cdo(@b41 Runnable runnable, @b41 Cfor cfor) {
            this.f27626do = runnable;
            this.f27628if = cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27627for == Thread.currentThread()) {
                Cfor cfor = this.f27628if;
                if (cfor instanceof Cgoto) {
                    ((Cgoto) cfor).m29692goto();
                    return;
                }
            }
            this.f27628if.dispose();
        }

        @Override // io.reactivex.schedulers.SchedulerRunnableIntrospection
        public Runnable getWrappedRunnable() {
            return this.f27626do;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27628if.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27627for = Thread.currentThread();
            try {
                this.f27626do.run();
            } finally {
                dispose();
                this.f27627for = null;
            }
        }
    }

    /* renamed from: io.reactivex.try$for, reason: invalid class name */
    public static abstract class Cfor implements Disposable {

        /* renamed from: io.reactivex.try$for$do, reason: invalid class name */
        public final class Cdo implements Runnable, SchedulerRunnableIntrospection {

            /* renamed from: case, reason: not valid java name */
            public long f27629case;

            /* renamed from: do, reason: not valid java name */
            @b41
            public final Runnable f27630do;

            /* renamed from: for, reason: not valid java name */
            public final long f27632for;

            /* renamed from: if, reason: not valid java name */
            @b41
            public final tw1 f27633if;

            /* renamed from: new, reason: not valid java name */
            public long f27634new;

            /* renamed from: try, reason: not valid java name */
            public long f27635try;

            public Cdo(long j, @b41 Runnable runnable, long j2, @b41 tw1 tw1Var, long j3) {
                this.f27630do = runnable;
                this.f27633if = tw1Var;
                this.f27632for = j3;
                this.f27635try = j2;
                this.f27629case = j;
            }

            @Override // io.reactivex.schedulers.SchedulerRunnableIntrospection
            public Runnable getWrappedRunnable() {
                return this.f27630do;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0035  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                long j;
                this.f27630do.run();
                if (this.f27633if.isDisposed()) {
                    return;
                }
                Cfor cfor = Cfor.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jMo29784do = cfor.mo29784do(timeUnit);
                long j2 = Ctry.f27625do;
                long j3 = jMo29784do + j2;
                long j4 = this.f27635try;
                if (j3 >= j4) {
                    long j5 = this.f27632for;
                    if (jMo29784do >= j4 + j5 + j2) {
                        long j6 = this.f27632for;
                        long j7 = jMo29784do + j6;
                        long j8 = this.f27634new + 1;
                        this.f27634new = j8;
                        this.f27629case = j7 - (j6 * j8);
                        j = j7;
                    } else {
                        long j9 = this.f27629case;
                        long j10 = this.f27634new + 1;
                        this.f27634new = j10;
                        j = j9 + (j10 * j5);
                    }
                }
                this.f27635try = jMo29784do;
                this.f27633if.replace(Cfor.this.mo29362for(this, j - jMo29784do, timeUnit));
            }
        }

        /* renamed from: do */
        public long mo29784do(@b41 TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @b41
        /* renamed from: for */
        public abstract Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit);

        @b41
        /* renamed from: if */
        public Disposable mo29677if(@b41 Runnable runnable) {
            return mo29362for(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        @b41
        /* renamed from: new */
        public Disposable mo29701new(@b41 Runnable runnable, long j, long j2, @b41 TimeUnit timeUnit) {
            tw1 tw1Var = new tw1();
            tw1 tw1Var2 = new tw1(tw1Var);
            Runnable runnableO = jp1.o(runnable);
            long nanos = timeUnit.toNanos(j2);
            long jMo29784do = mo29784do(TimeUnit.NANOSECONDS);
            Disposable disposableMo29362for = mo29362for(new Cdo(jMo29784do + timeUnit.toNanos(j), runnableO, jMo29784do, tw1Var2, nanos), j, timeUnit);
            if (disposableMo29362for == io.reactivex.internal.disposables.Cif.INSTANCE) {
                return disposableMo29362for;
            }
            tw1Var.replace(disposableMo29362for);
            return tw1Var2;
        }
    }

    /* renamed from: io.reactivex.try$if, reason: invalid class name */
    public static final class Cif implements Disposable, Runnable, SchedulerRunnableIntrospection {

        /* renamed from: do, reason: not valid java name */
        @b41
        public final Runnable f27636do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f27637for;

        /* renamed from: if, reason: not valid java name */
        @b41
        public final Cfor f27638if;

        public Cif(@b41 Runnable runnable, @b41 Cfor cfor) {
            this.f27636do = runnable;
            this.f27638if = cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27637for = true;
            this.f27638if.dispose();
        }

        @Override // io.reactivex.schedulers.SchedulerRunnableIntrospection
        public Runnable getWrappedRunnable() {
            return this.f27636do;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27637for;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f27637for) {
                return;
            }
            try {
                this.f27636do.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27638if.dispose();
                throw Ccase.m29712case(th);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static long m29843do() {
        return f27625do;
    }

    @b41
    /* renamed from: case */
    public Disposable mo29689case(@b41 Runnable runnable, long j, long j2, @b41 TimeUnit timeUnit) {
        Cfor cforMo4229if = mo4229if();
        Cif cif = new Cif(jp1.o(runnable), cforMo4229if);
        Disposable disposableMo29701new = cforMo4229if.mo29701new(cif, j, j2, timeUnit);
        return disposableMo29701new == io.reactivex.internal.disposables.Cif.INSTANCE ? disposableMo29701new : cif;
    }

    /* renamed from: else */
    public void mo29679else() {
    }

    /* renamed from: for */
    public long mo29783for(@b41 TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: goto */
    public void mo29680goto() {
    }

    @b41
    /* renamed from: if */
    public abstract Cfor mo4229if();

    @b41
    /* renamed from: new */
    public Disposable mo29697new(@b41 Runnable runnable) {
        return mo29361try(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    @b41
    /* renamed from: this, reason: not valid java name */
    public <S extends Ctry & Disposable> S m29844this(@b41 Function<io.reactivex.Cfor<io.reactivex.Cfor<np>>, np> function) {
        return new Cconst(function, this);
    }

    @b41
    /* renamed from: try */
    public Disposable mo29361try(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
        Cfor cforMo4229if = mo4229if();
        Cdo cdo = new Cdo(jp1.o(runnable), cforMo4229if);
        cforMo4229if.mo29362for(cdo, j, timeUnit);
        return cdo;
    }
}
