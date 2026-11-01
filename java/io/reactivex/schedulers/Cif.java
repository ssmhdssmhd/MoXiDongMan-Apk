package io.reactivex.schedulers;

import android.support.v4.b41;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.schedulers.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends Ctry {

    /* renamed from: for, reason: not valid java name */
    public long f27544for;

    /* renamed from: if, reason: not valid java name */
    public final Queue<C0351if> f27545if = new PriorityBlockingQueue(11);

    /* renamed from: new, reason: not valid java name */
    public volatile long f27546new;

    /* renamed from: io.reactivex.schedulers.if$do, reason: invalid class name */
    public final class Cdo extends Ctry.Cfor {

        /* renamed from: do, reason: not valid java name */
        public volatile boolean f27547do;

        /* renamed from: io.reactivex.schedulers.if$do$do, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0350do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final C0351if f27549do;

            public RunnableC0350do(C0351if c0351if) {
                this.f27549do = c0351if;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cif.this.f27545if.remove(this.f27549do);
            }
        }

        public Cdo() {
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27547do = true;
        }

        @Override // io.reactivex.Ctry.Cfor
        /* renamed from: do, reason: not valid java name */
        public long mo29784do(@b41 TimeUnit timeUnit) {
            return Cif.this.mo29783for(timeUnit);
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            if (this.f27547do) {
                return io.reactivex.internal.disposables.Cif.INSTANCE;
            }
            long nanos = Cif.this.f27546new + timeUnit.toNanos(j);
            Cif cif = Cif.this;
            long j2 = cif.f27544for;
            cif.f27544for = 1 + j2;
            C0351if c0351if = new C0351if(this, nanos, runnable, j2);
            Cif.this.f27545if.add(c0351if);
            return io.reactivex.disposables.Cif.m29363case(new RunnableC0350do(c0351if));
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: if */
        public Disposable mo29677if(@b41 Runnable runnable) {
            if (this.f27547do) {
                return io.reactivex.internal.disposables.Cif.INSTANCE;
            }
            Cif cif = Cif.this;
            long j = cif.f27544for;
            cif.f27544for = 1 + j;
            C0351if c0351if = new C0351if(this, 0L, runnable, j);
            Cif.this.f27545if.add(c0351if);
            return io.reactivex.disposables.Cif.m29363case(new RunnableC0350do(c0351if));
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27547do;
        }
    }

    /* renamed from: io.reactivex.schedulers.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0351if implements Comparable<C0351if> {

        /* renamed from: do, reason: not valid java name */
        public final long f27551do;

        /* renamed from: for, reason: not valid java name */
        public final Cdo f27552for;

        /* renamed from: if, reason: not valid java name */
        public final Runnable f27553if;

        /* renamed from: new, reason: not valid java name */
        public final long f27554new;

        public C0351if(Cdo cdo, long j, Runnable runnable, long j2) {
            this.f27551do = j;
            this.f27553if = runnable;
            this.f27552for = cdo;
            this.f27554new = j2;
        }

        @Override // java.lang.Comparable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(C0351if c0351if) {
            long j = this.f27551do;
            long j2 = c0351if.f27551do;
            return j == j2 ? io.reactivex.internal.functions.Cif.m29471if(this.f27554new, c0351if.f27554new) : io.reactivex.internal.functions.Cif.m29471if(j, j2);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f27551do), this.f27553if.toString());
        }
    }

    public Cif() {
    }

    /* renamed from: const, reason: not valid java name */
    private void m29779const(long j) {
        while (true) {
            C0351if c0351ifPeek = this.f27545if.peek();
            if (c0351ifPeek == null) {
                break;
            }
            long j2 = c0351ifPeek.f27551do;
            if (j2 > j) {
                break;
            }
            if (j2 == 0) {
                j2 = this.f27546new;
            }
            this.f27546new = j2;
            this.f27545if.remove(c0351ifPeek);
            if (!c0351ifPeek.f27552for.f27547do) {
                c0351ifPeek.f27553if.run();
            }
        }
        this.f27546new = j;
    }

    /* renamed from: break, reason: not valid java name */
    public void m29780break(long j, TimeUnit timeUnit) {
        m29781catch(this.f27546new + timeUnit.toNanos(j), TimeUnit.NANOSECONDS);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m29781catch(long j, TimeUnit timeUnit) {
        m29779const(timeUnit.toNanos(j));
    }

    /* renamed from: class, reason: not valid java name */
    public void m29782class() {
        m29779const(this.f27546new);
    }

    @Override // io.reactivex.Ctry
    /* renamed from: for, reason: not valid java name */
    public long mo29783for(@b41 TimeUnit timeUnit) {
        return timeUnit.convert(this.f27546new, TimeUnit.NANOSECONDS);
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cdo();
    }

    public Cif(long j, TimeUnit timeUnit) {
        this.f27546new = timeUnit.toNanos(j);
    }
}
