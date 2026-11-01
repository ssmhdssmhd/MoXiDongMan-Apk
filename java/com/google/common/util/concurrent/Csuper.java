package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.collect.r0;
import com.google.common.util.concurrent.Cgoto;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

@ki0
/* renamed from: com.google.common.util.concurrent.super, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csuper<V> extends Cgoto<Object, V> {

    /* renamed from: while, reason: not valid java name */
    private Csuper<V>.Cfor<?> f15896while;

    /* renamed from: com.google.common.util.concurrent.super$do, reason: invalid class name */
    public final class Cdo extends Csuper<V>.Cfor<ListenableFuture<V>> {
        private final AsyncCallable<V> callable;

        public Cdo(AsyncCallable<V> asyncCallable, Executor executor) {
            super(executor);
            this.callable = (AsyncCallable) af1.m205continue(asyncCallable);
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public String toPendingString() {
            return this.callable.toString();
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public ListenableFuture<V> runInterruptibly() throws Exception {
            this.thrownByExecute = false;
            return (ListenableFuture) af1.i(this.callable.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.callable);
        }

        @Override // com.google.common.util.concurrent.Csuper.Cfor
        public void setValue(ListenableFuture<V> listenableFuture) {
            Csuper.this.mo17975abstract(listenableFuture);
        }
    }

    /* renamed from: com.google.common.util.concurrent.super$for, reason: invalid class name */
    public abstract class Cfor<T> extends Cinterface<T> {
        private final Executor listenerExecutor;
        public boolean thrownByExecute = true;

        public Cfor(Executor executor) {
            this.listenerExecutor = (Executor) af1.m205continue(executor);
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public final void afterRanInterruptibly(T t, Throwable th) {
            Csuper.this.f15896while = null;
            if (th == null) {
                setValue(t);
                return;
            }
            if (th instanceof ExecutionException) {
                Csuper.this.mo17980private(th.getCause());
            } else if (th instanceof CancellationException) {
                Csuper.this.cancel(false);
            } else {
                Csuper.this.mo17980private(th);
            }
        }

        public final void execute() {
            try {
                this.listenerExecutor.execute(this);
            } catch (RejectedExecutionException e) {
                if (this.thrownByExecute) {
                    Csuper.this.mo17980private(e);
                }
            }
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public final boolean isDone() {
            return Csuper.this.isDone();
        }

        public abstract void setValue(T t);
    }

    /* renamed from: com.google.common.util.concurrent.super$if, reason: invalid class name */
    public final class Cif extends Csuper<V>.Cfor<V> {
        private final Callable<V> callable;

        public Cif(Callable<V> callable, Executor executor) {
            super(executor);
            this.callable = (Callable) af1.m205continue(callable);
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public V runInterruptibly() throws Exception {
            this.thrownByExecute = false;
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.Csuper.Cfor
        public void setValue(V v) {
            Csuper.this.mo17979package(v);
        }

        @Override // com.google.common.util.concurrent.Cinterface
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    public Csuper(r0<? extends ListenableFuture<?>> r0Var, boolean z, Executor executor, AsyncCallable<V> asyncCallable) {
        super(r0Var, z, false);
        this.f15896while = new Cdo(asyncCallable, executor);
        i();
    }

    @Override // com.google.common.util.concurrent.Cgoto
    public void d(int i, @b51 Object obj) {
    }

    @Override // com.google.common.util.concurrent.Cgoto
    public void g() {
        Csuper<V>.Cfor<?> cfor = this.f15896while;
        if (cfor != null) {
            cfor.execute();
        }
    }

    @Override // com.google.common.util.concurrent.Cgoto
    public void l(Cgoto.Cfor cfor) {
        super.l(cfor);
        if (cfor == Cgoto.Cfor.OUTPUT_FUTURE_DONE) {
            this.f15896while = null;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: switch */
    public void mo17981switch() {
        Csuper<V>.Cfor<?> cfor = this.f15896while;
        if (cfor != null) {
            cfor.interruptTask();
        }
    }

    public Csuper(r0<? extends ListenableFuture<?>> r0Var, boolean z, Executor executor, Callable<V> callable) {
        super(r0Var, z, false);
        this.f15896while = new Cif(callable, executor);
        i();
    }
}
