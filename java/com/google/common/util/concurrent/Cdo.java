package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.jd0;
import android.support.v4.ki0;
import android.support.v4.mn0;
import android.support.v4.nn0;
import com.google.common.base.Function;
import com.google.common.util.concurrent.Cpublic;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

@ki0
/* renamed from: com.google.common.util.concurrent.do, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cdo<V, X extends Throwable, F, T> extends Cpublic.Cdo<V> implements Runnable {

    /* renamed from: break, reason: not valid java name */
    @b51
    public Class<X> f15737break;

    /* renamed from: catch, reason: not valid java name */
    @b51
    public F f15738catch;

    /* renamed from: this, reason: not valid java name */
    @b51
    public ListenableFuture<? extends V> f15739this;

    /* renamed from: com.google.common.util.concurrent.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0147do<V, X extends Throwable> extends Cdo<V, X, AsyncFunction<? super X, ? extends V>, ListenableFuture<? extends V>> {
        public C0147do(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction) {
            super(listenableFuture, cls, asyncFunction);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Cdo
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public ListenableFuture<? extends V> c(AsyncFunction<? super X, ? extends V> asyncFunction, X x) throws Exception {
            ListenableFuture<? extends V> listenableFutureApply = asyncFunction.apply(x);
            af1.i(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncFunction);
            return listenableFutureApply;
        }

        @Override // com.google.common.util.concurrent.Cdo
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(ListenableFuture<? extends V> listenableFuture) {
            mo17975abstract(listenableFuture);
        }
    }

    /* renamed from: com.google.common.util.concurrent.do$if, reason: invalid class name */
    public static final class Cif<V, X extends Throwable> extends Cdo<V, X, Function<? super X, ? extends V>, V> {
        public Cif(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function) {
            super(listenableFuture, cls, function);
        }

        @Override // com.google.common.util.concurrent.Cdo
        public void d(@b51 V v) {
            mo17979package(v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Cdo
        @b51
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public V c(Function<? super X, ? extends V> function, X x) throws Exception {
            return function.apply(x);
        }
    }

    public Cdo(ListenableFuture<? extends V> listenableFuture, Class<X> cls, F f) {
        this.f15739this = (ListenableFuture) af1.m205continue(listenableFuture);
        this.f15737break = (Class) af1.m205continue(cls);
        this.f15738catch = (F) af1.m205continue(f);
    }

    public static <V, X extends Throwable> ListenableFuture<V> a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        Cif cif = new Cif(listenableFuture, cls, function);
        listenableFuture.addListener(cif, Cimplements.m18232throw(executor, cif));
        return cif;
    }

    public static <X extends Throwable, V> ListenableFuture<V> b(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        C0147do c0147do = new C0147do(listenableFuture, cls, asyncFunction);
        listenableFuture.addListener(c0147do, Cimplements.m18232throw(executor, c0147do));
        return c0147do;
    }

    @b51
    @jd0
    public abstract T c(F f, X x) throws Exception;

    @jd0
    public abstract void d(@b51 T t);

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: default */
    public String mo17977default() {
        String str;
        ListenableFuture<? extends V> listenableFuture = this.f15739this;
        Class<X> cls = this.f15737break;
        F f = this.f15738catch;
        String strMo17977default = super.mo17977default();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (strMo17977default == null) {
                return null;
            }
            return str + strMo17977default;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + f + "]";
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: final */
    public final void mo17978final() {
        m17982throws(this.f15739this);
        this.f15739this = null;
        this.f15737break = null;
        this.f15738catch = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture<? extends V> listenableFuture = this.f15739this;
        Class<X> cls = this.f15737break;
        F f = this.f15738catch;
        if (((f == null) || ((listenableFuture == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.f15739this = null;
        try {
            th = listenableFuture instanceof mn0 ? nn0.m5278do((mn0) listenableFuture) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + listenableFuture.getClass() + " threw " + e.getClass() + " without a cause");
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        Object objM18275goto = th == null ? Cprivate.m18275goto(listenableFuture) : null;
        if (th == null) {
            mo17979package(objM18275goto);
            return;
        }
        if (!Csynchronized.m18318do(th, cls)) {
            mo17975abstract(listenableFuture);
            return;
        }
        try {
            Object objC = c(f, th);
            this.f15737break = null;
            this.f15738catch = null;
            d(objC);
        } catch (Throwable th2) {
            try {
                mo17980private(th2);
            } finally {
                this.f15737break = null;
                this.f15738catch = null;
            }
        }
    }
}
