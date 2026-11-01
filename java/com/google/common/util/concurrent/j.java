package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import com.google.common.util.concurrent.Cpublic;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@li0
/* loaded from: classes2.dex */
final class j<V> extends Cpublic.Cdo<V> {

    /* renamed from: break, reason: not valid java name */
    @b51
    private ScheduledFuture<?> f15860break;

    /* renamed from: this, reason: not valid java name */
    @b51
    private ListenableFuture<V> f15861this;

    /* renamed from: com.google.common.util.concurrent.j$for, reason: invalid class name */
    public static final class Cfor extends TimeoutException {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private Cfor(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.common.util.concurrent.j$if, reason: invalid class name */
    public static final class Cif<V> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        @b51
        public j<V> f15862do;

        public Cif(j<V> jVar) {
            this.f15862do = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture;
            j<V> jVar = this.f15862do;
            if (jVar == null || (listenableFuture = ((j) jVar).f15861this) == null) {
                return;
            }
            this.f15862do = null;
            if (listenableFuture.isDone()) {
                jVar.mo17975abstract(listenableFuture);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = ((j) jVar).f15860break;
                ((j) jVar).f15860break = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                        }
                    } catch (Throwable th) {
                        jVar.mo17980private(new Cfor(str));
                        throw th;
                    }
                }
                jVar.mo17980private(new Cfor(str + ": " + listenableFuture));
            } finally {
                listenableFuture.cancel(true);
            }
        }
    }

    private j(ListenableFuture<V> listenableFuture) {
        this.f15861this = (ListenableFuture) af1.m205continue(listenableFuture);
    }

    public static <V> ListenableFuture<V> d(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        j jVar = new j(listenableFuture);
        Cif cif = new Cif(jVar);
        jVar.f15860break = scheduledExecutorService.schedule(cif, j, timeUnit);
        listenableFuture.addListener(cif, Cimplements.m18221for());
        return jVar;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: default */
    public String mo17977default() {
        ListenableFuture<V> listenableFuture = this.f15861this;
        ScheduledFuture<?> scheduledFuture = this.f15860break;
        if (listenableFuture == null) {
            return null;
        }
        String str = "inputFuture=[" + listenableFuture + "]";
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: final */
    public void mo17978final() {
        m17982throws(this.f15861this);
        ScheduledFuture<?> scheduledFuture = this.f15860break;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f15861this = null;
        this.f15860break = null;
    }
}
