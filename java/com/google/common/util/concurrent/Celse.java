package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.jd0;
import android.support.v4.ki0;
import com.google.common.base.Function;
import com.google.common.util.concurrent.Cpublic;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

@ki0
/* renamed from: com.google.common.util.concurrent.else, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Celse<I, O, F, T> extends Cpublic.Cdo<O> implements Runnable {

    /* renamed from: break, reason: not valid java name */
    @b51
    public F f15740break;

    /* renamed from: this, reason: not valid java name */
    @b51
    public ListenableFuture<? extends I> f15741this;

    /* renamed from: com.google.common.util.concurrent.else$do, reason: invalid class name */
    public static final class Cdo<I, O> extends Celse<I, O, AsyncFunction<? super I, ? extends O>, ListenableFuture<? extends O>> {
        public Cdo(ListenableFuture<? extends I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
            super(listenableFuture, asyncFunction);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Celse
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public ListenableFuture<? extends O> c(AsyncFunction<? super I, ? extends O> asyncFunction, @b51 I i) throws Exception {
            ListenableFuture<? extends O> listenableFutureApply = asyncFunction.apply(i);
            af1.i(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncFunction);
            return listenableFutureApply;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Celse
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(ListenableFuture<? extends O> listenableFuture) {
            mo17975abstract(listenableFuture);
        }
    }

    /* renamed from: com.google.common.util.concurrent.else$if, reason: invalid class name */
    public static final class Cif<I, O> extends Celse<I, O, Function<? super I, ? extends O>, O> {
        public Cif(ListenableFuture<? extends I> listenableFuture, Function<? super I, ? extends O> function) {
            super(listenableFuture, function);
        }

        @Override // com.google.common.util.concurrent.Celse
        public void d(@b51 O o) {
            mo17979package(o);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Celse
        @b51
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public O c(Function<? super I, ? extends O> function, @b51 I i) {
            return function.apply(i);
        }
    }

    public Celse(ListenableFuture<? extends I> listenableFuture, F f) {
        this.f15741this = (ListenableFuture) af1.m205continue(listenableFuture);
        this.f15740break = (F) af1.m205continue(f);
    }

    public static <I, O> ListenableFuture<O> a(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        af1.m205continue(function);
        Cif cif = new Cif(listenableFuture, function);
        listenableFuture.addListener(cif, Cimplements.m18232throw(executor, cif));
        return cif;
    }

    public static <I, O> ListenableFuture<O> b(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        af1.m205continue(executor);
        Cdo cdo = new Cdo(listenableFuture, asyncFunction);
        listenableFuture.addListener(cdo, Cimplements.m18232throw(executor, cdo));
        return cdo;
    }

    @b51
    @jd0
    public abstract T c(F f, @b51 I i) throws Exception;

    @jd0
    public abstract void d(@b51 T t);

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: default */
    public String mo17977default() {
        String str;
        ListenableFuture<? extends I> listenableFuture = this.f15741this;
        F f = this.f15740break;
        String strMo17977default = super.mo17977default();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (f != null) {
            return str + "function=[" + f + "]";
        }
        if (strMo17977default == null) {
            return null;
        }
        return str + strMo17977default;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: final */
    public final void mo17978final() {
        m17982throws(this.f15741this);
        this.f15741this = null;
        this.f15740break = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture<? extends I> listenableFuture = this.f15741this;
        F f = this.f15740break;
        if ((isCancelled() | (listenableFuture == null)) || (f == null)) {
            return;
        }
        this.f15741this = null;
        if (listenableFuture.isCancelled()) {
            mo17975abstract(listenableFuture);
            return;
        }
        try {
            try {
                Object objC = c(f, Cprivate.m18275goto(listenableFuture));
                this.f15740break = null;
                d(objC);
            } catch (Throwable th) {
                try {
                    mo17980private(th);
                } finally {
                    this.f15740break = null;
                }
            }
        } catch (Error e) {
            mo17980private(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            mo17980private(e2);
        } catch (ExecutionException e3) {
            mo17980private(e3.getCause());
        }
    }
}
