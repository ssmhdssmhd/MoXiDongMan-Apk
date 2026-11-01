package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ji0;
import android.support.v4.li0;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

@li0
/* loaded from: classes2.dex */
final class c implements Executor {

    /* renamed from: case, reason: not valid java name */
    private static final Logger f15666case = Logger.getLogger(c.class.getName());

    /* renamed from: do, reason: not valid java name */
    private final Executor f15667do;

    /* renamed from: if, reason: not valid java name */
    @ji0("queue")
    private final Deque<Runnable> f15669if = new ArrayDeque();

    /* renamed from: for, reason: not valid java name */
    @ji0("queue")
    private Cfor f15668for = Cfor.IDLE;

    /* renamed from: new, reason: not valid java name */
    @ji0("queue")
    private long f15670new = 0;

    /* renamed from: try, reason: not valid java name */
    private final Cif f15671try = new Cif(this, null);

    /* renamed from: com.google.common.util.concurrent.c$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f15672do;

        public Cdo(Runnable runnable) {
            this.f15672do = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15672do.run();
        }
    }

    /* renamed from: com.google.common.util.concurrent.c$for, reason: invalid class name */
    public enum Cfor {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    /* renamed from: com.google.common.util.concurrent.c$if, reason: invalid class name */
    public final class Cif implements Runnable {
        private Cif() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0050, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0055, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
        
            com.google.common.util.concurrent.c.f15666case.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
        
            return;
         */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void m18074do() {
            boolean z = false;
            boolean zInterrupted = false;
            while (true) {
                try {
                    synchronized (c.this.f15669if) {
                        if (!z) {
                            Cfor cfor = c.this.f15668for;
                            Cfor cfor2 = Cfor.RUNNING;
                            if (cfor != cfor2) {
                                c.m18072new(c.this);
                                c.this.f15668for = cfor2;
                                z = true;
                            }
                        }
                        Runnable runnable = (Runnable) c.this.f15669if.poll();
                        if (runnable == null) {
                            c.this.f15668for = Cfor.IDLE;
                        }
                    }
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                } finally {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m18074do();
            } catch (Error e) {
                synchronized (c.this.f15669if) {
                    c.this.f15668for = Cfor.IDLE;
                    throw e;
                }
            }
        }

        public /* synthetic */ Cif(c cVar, Cdo cdo) {
            this();
        }
    }

    public c(Executor executor) {
        this.f15667do = (Executor) af1.m205continue(executor);
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ long m18072new(c cVar) {
        long j = cVar.f15670new;
        cVar.f15670new = 1 + j;
        return j;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Cfor cfor;
        af1.m205continue(runnable);
        synchronized (this.f15669if) {
            Cfor cfor2 = this.f15668for;
            if (cfor2 != Cfor.RUNNING && cfor2 != (cfor = Cfor.QUEUED)) {
                long j = this.f15670new;
                Cdo cdo = new Cdo(runnable);
                this.f15669if.add(cdo);
                Cfor cfor3 = Cfor.QUEUING;
                this.f15668for = cfor3;
                try {
                    this.f15667do.execute(this.f15671try);
                    if (this.f15668for != cfor3) {
                        return;
                    }
                    synchronized (this.f15669if) {
                        if (this.f15670new == j && this.f15668for == cfor3) {
                            this.f15668for = cfor;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.f15669if) {
                        Cfor cfor4 = this.f15668for;
                        if ((cfor4 != Cfor.IDLE && cfor4 != Cfor.QUEUING) || !this.f15669if.removeLastOccurrence(cdo)) {
                            z = false;
                        }
                        if (!(e instanceof RejectedExecutionException) || z) {
                            throw e;
                        }
                    }
                    return;
                }
            }
            this.f15669if.add(runnable);
        }
    }
}
