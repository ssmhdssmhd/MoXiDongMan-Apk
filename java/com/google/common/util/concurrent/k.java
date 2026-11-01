package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.util.concurrent.Cpublic;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

@ki0
/* loaded from: classes2.dex */
class k<V> extends Cpublic.Cdo<V> implements RunnableFuture<V> {

    /* renamed from: this, reason: not valid java name */
    private volatile Cinterface<?> f15863this;

    /* renamed from: com.google.common.util.concurrent.k$do, reason: invalid class name */
    public final class Cdo extends Cinterface<ListenableFuture<V>> {
        private final AsyncCallable<V> callable;

        public Cdo(AsyncCallable<V> asyncCallable) {
            this.callable = (AsyncCallable) af1.m205continue(asyncCallable);
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public final boolean isDone() {
            return k.this.isDone();
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public String toPendingString() {
            return this.callable.toString();
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public void afterRanInterruptibly(ListenableFuture<V> listenableFuture, Throwable th) {
            if (th == null) {
                k.this.mo17975abstract(listenableFuture);
            } else {
                k.this.mo17980private(th);
            }
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public ListenableFuture<V> runInterruptibly() throws Exception {
            return (ListenableFuture) af1.i(this.callable.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.callable);
        }
    }

    /* renamed from: com.google.common.util.concurrent.k$if, reason: invalid class name */
    public final class Cif extends Cinterface<V> {
        private final Callable<V> callable;

        public Cif(Callable<V> callable) {
            this.callable = (Callable) af1.m205continue(callable);
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public void afterRanInterruptibly(V v, Throwable th) {
            if (th == null) {
                k.this.mo17979package(v);
            } else {
                k.this.mo17980private(th);
            }
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public final boolean isDone() {
            return k.this.isDone();
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    public k(Callable<V> callable) {
        this.f15863this = new Cif(callable);
    }

    public static <V> k<V> a(AsyncCallable<V> asyncCallable) {
        return new k<>(asyncCallable);
    }

    public static <V> k<V> b(Runnable runnable, @b51 V v) {
        return new k<>(Executors.callable(runnable, v));
    }

    public static <V> k<V> c(Callable<V> callable) {
        return new k<>(callable);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: default */
    public String mo17977default() {
        Cinterface<?> cinterface = this.f15863this;
        if (cinterface == null) {
            return super.mo17977default();
        }
        return "task=[" + cinterface + "]";
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: final */
    public void mo17978final() {
        Cinterface<?> cinterface;
        super.mo17978final();
        if (m17976continue() && (cinterface = this.f15863this) != null) {
            cinterface.interruptTask();
        }
        this.f15863this = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        Cinterface<?> cinterface = this.f15863this;
        if (cinterface != null) {
            cinterface.run();
        }
        this.f15863this = null;
    }

    public k(AsyncCallable<V> asyncCallable) {
        this.f15863this = new Cdo(asyncCallable);
    }
}
