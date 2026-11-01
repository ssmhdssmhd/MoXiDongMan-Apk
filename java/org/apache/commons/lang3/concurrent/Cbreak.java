package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: org.apache.commons.lang3.concurrent.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: class, reason: not valid java name */
    public static final int f28658class = 0;

    /* renamed from: const, reason: not valid java name */
    private static final int f28659const = 1;

    /* renamed from: break, reason: not valid java name */
    private int f28660break;

    /* renamed from: case, reason: not valid java name */
    private long f28661case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f28662catch;

    /* renamed from: do, reason: not valid java name */
    private final ScheduledExecutorService f28663do;

    /* renamed from: else, reason: not valid java name */
    private long f28664else;

    /* renamed from: for, reason: not valid java name */
    private final TimeUnit f28665for;

    /* renamed from: goto, reason: not valid java name */
    private int f28666goto;

    /* renamed from: if, reason: not valid java name */
    private final long f28667if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f28668new;

    /* renamed from: this, reason: not valid java name */
    private int f28669this;

    /* renamed from: try, reason: not valid java name */
    private ScheduledFuture<?> f28670try;

    /* renamed from: org.apache.commons.lang3.concurrent.break$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cbreak.this.m32287if();
        }
    }

    public Cbreak(long j, TimeUnit timeUnit, int i) {
        this(null, j, timeUnit, i);
    }

    /* renamed from: break, reason: not valid java name */
    public TimeUnit m32277break() {
        return this.f28665for;
    }

    /* renamed from: case, reason: not valid java name */
    public ScheduledExecutorService m32278case() {
        return this.f28663do;
    }

    /* renamed from: catch, reason: not valid java name */
    public synchronized boolean m32279catch() {
        return this.f28662catch;
    }

    /* renamed from: class, reason: not valid java name */
    public final synchronized void m32280class(int i) {
        this.f28666goto = i;
    }

    /* renamed from: const, reason: not valid java name */
    public synchronized void m32281const() {
        if (!this.f28662catch) {
            if (this.f28668new) {
                m32278case().shutdownNow();
            }
            ScheduledFuture<?> scheduledFuture = this.f28670try;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            this.f28662catch = true;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized void m32282do() throws InterruptedException {
        boolean z;
        if (m32279catch()) {
            throw new IllegalStateException("TimedSemaphore is shut down!");
        }
        if (this.f28670try == null) {
            this.f28670try = m32284final();
        }
        do {
            z = m32286goto() <= 0 || this.f28669this < m32286goto();
            if (z) {
                this.f28669this++;
            } else {
                wait();
            }
        } while (!z);
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized int m32283else() {
        return this.f28660break;
    }

    /* renamed from: final, reason: not valid java name */
    public ScheduledFuture<?> m32284final() {
        return m32278case().scheduleAtFixedRate(new Cdo(), m32289this(), m32289this(), m32277break());
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized int m32285for() {
        return this.f28669this;
    }

    /* renamed from: goto, reason: not valid java name */
    public final synchronized int m32286goto() {
        return this.f28666goto;
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized void m32287if() {
        int i = this.f28669this;
        this.f28660break = i;
        this.f28661case += i;
        this.f28664else++;
        this.f28669this = 0;
        notifyAll();
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized int m32288new() {
        return m32286goto() - m32285for();
    }

    /* renamed from: this, reason: not valid java name */
    public long m32289this() {
        return this.f28667if;
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized double m32290try() {
        double d;
        long j = this.f28664else;
        if (j == 0) {
            d = 0.0d;
        } else {
            double d2 = this.f28661case;
            double d3 = j;
            Double.isNaN(d2);
            Double.isNaN(d3);
            d = d2 / d3;
        }
        return d;
    }

    public Cbreak(ScheduledExecutorService scheduledExecutorService, long j, TimeUnit timeUnit, int i) {
        if (j <= 0) {
            throw new IllegalArgumentException("Time period must be greater 0!");
        }
        this.f28667if = j;
        this.f28665for = timeUnit;
        if (scheduledExecutorService != null) {
            this.f28663do = scheduledExecutorService;
            this.f28668new = false;
        } else {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
            scheduledThreadPoolExecutor.setContinueExistingPeriodicTasksAfterShutdownPolicy(false);
            scheduledThreadPoolExecutor.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
            this.f28663do = scheduledThreadPoolExecutor;
            this.f28668new = true;
        }
        m32280class(i);
    }
}
