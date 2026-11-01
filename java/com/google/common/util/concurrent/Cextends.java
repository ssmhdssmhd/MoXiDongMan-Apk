package com.google.common.util.concurrent;

import android.support.v4.ae0;
import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@lf
@ki0
/* renamed from: com.google.common.util.concurrent.extends, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cextends<V> extends ae0 implements Future<V> {

    /* renamed from: com.google.common.util.concurrent.extends$do, reason: invalid class name */
    public static abstract class Cdo<V> extends Cextends<V> {

        /* renamed from: do, reason: not valid java name */
        private final Future<V> f15742do;

        public Cdo(Future<V> future) {
            this.f15742do = (Future) af1.m205continue(future);
        }

        @Override // com.google.common.util.concurrent.Cextends, android.support.v4.ae0
        /* renamed from: do, reason: merged with bridge method [inline-methods] */
        public final Future<V> delegate() {
            return this.f15742do;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return delegate().cancel(z);
    }

    @Override // android.support.v4.ae0
    /* renamed from: do, reason: not valid java name */
    public abstract Future<? extends V> delegate();

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return delegate().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return delegate().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return delegate().isDone();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return delegate().get(j, timeUnit);
    }
}
