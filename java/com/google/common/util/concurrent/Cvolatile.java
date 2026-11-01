package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@ki0
/* renamed from: com.google.common.util.concurrent.volatile, reason: invalid class name */
/* loaded from: classes2.dex */
class Cvolatile<V> implements ListenableFuture<V> {

    /* renamed from: do, reason: not valid java name */
    @b51
    private final V f15941do;

    /* renamed from: if, reason: not valid java name */
    public static final ListenableFuture<?> f15940if = new Cvolatile(null);

    /* renamed from: for, reason: not valid java name */
    private static final Logger f15939for = Logger.getLogger(Cvolatile.class.getName());

    /* renamed from: com.google.common.util.concurrent.volatile$do, reason: invalid class name */
    public static final class Cdo<V> extends AbstractFuture.Cthis<V> {
        public Cdo() {
            cancel(false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.volatile$if, reason: invalid class name */
    public static final class Cif<V> extends AbstractFuture.Cthis<V> {
        public Cif(Throwable th) {
            mo17980private(th);
        }
    }

    public Cvolatile(@b51 V v) {
        this.f15941do = v;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        af1.m227strictfp(runnable, "Runnable was null.");
        af1.m227strictfp(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f15939for.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.f15941do;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.f15941do + "]]";
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        af1.m205continue(timeUnit);
        return get();
    }
}
