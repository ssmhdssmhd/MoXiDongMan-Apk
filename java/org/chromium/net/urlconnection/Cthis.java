package org.chromium.net.urlconnection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* renamed from: org.chromium.net.urlconnection.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis implements Executor {

    /* renamed from: else, reason: not valid java name */
    private static final long f33787else = -1;

    /* renamed from: goto, reason: not valid java name */
    public static final /* synthetic */ boolean f33788goto = false;

    /* renamed from: case, reason: not valid java name */
    private long f33789case = -1;

    /* renamed from: do, reason: not valid java name */
    private final BlockingQueue<Runnable> f33790do = new LinkedBlockingQueue();

    /* renamed from: for, reason: not valid java name */
    private boolean f33791for;

    /* renamed from: if, reason: not valid java name */
    private boolean f33792if;

    /* renamed from: new, reason: not valid java name */
    private InterruptedIOException f33793new;

    /* renamed from: try, reason: not valid java name */
    private RuntimeException f33794try;

    /* renamed from: do, reason: not valid java name */
    private boolean m37778do() {
        long j = this.f33789case;
        if (j != -1) {
            return j == Thread.currentThread().getId();
        }
        this.f33789case = Thread.currentThread().getId();
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    private Runnable m37779else(boolean z, long j) throws InterruptedIOException {
        try {
            Runnable runnableTake = !z ? this.f33790do.take() : this.f33790do.poll(j, TimeUnit.NANOSECONDS);
            if (runnableTake != null) {
                return runnableTake;
            }
            throw new SocketTimeoutException();
        } catch (InterruptedException e) {
            InterruptedIOException interruptedIOException = new InterruptedIOException();
            interruptedIOException.initCause(e);
            throw interruptedIOException;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m37780case() {
        this.f33792if = false;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) throws RejectedExecutionException, InterruptedException {
        if (runnable == null) {
            throw new IllegalArgumentException();
        }
        try {
            this.f33790do.put(runnable);
        } catch (InterruptedException e) {
            throw new RejectedExecutionException(e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m37781for() {
        return this.f33792if;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m37782if() {
        return this.f33791for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m37783new() throws IOException {
        m37784try(0);
    }

    /* renamed from: try, reason: not valid java name */
    public void m37784try(int i) throws IOException {
        long jNanoTime = System.nanoTime();
        long jConvert = TimeUnit.NANOSECONDS.convert(i, TimeUnit.MILLISECONDS);
        if (this.f33791for) {
            InterruptedIOException interruptedIOException = this.f33793new;
            if (interruptedIOException == null) {
                throw this.f33794try;
            }
            throw interruptedIOException;
        }
        if (this.f33792if) {
            throw new IllegalStateException("Cannot run loop when it is already running.");
        }
        this.f33792if = true;
        while (this.f33792if) {
            if (i == 0) {
                try {
                    m37779else(false, 0L).run();
                } catch (InterruptedIOException e) {
                    this.f33792if = false;
                    this.f33791for = true;
                    this.f33793new = e;
                    throw e;
                } catch (RuntimeException e2) {
                    this.f33792if = false;
                    this.f33791for = true;
                    this.f33794try = e2;
                    throw e2;
                }
            } else {
                m37779else(true, (jConvert - System.nanoTime()) + jNanoTime).run();
            }
        }
    }
}
