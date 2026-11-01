package com.google.common.cache;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.kt0;
import android.support.v4.li0;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Cprivate;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@ki0(emulated = true)
/* renamed from: com.google.common.cache.for, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfor<K, V> {

    /* renamed from: com.google.common.cache.for$do, reason: invalid class name */
    public static class Cdo extends Cfor<K, V> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Executor f13903if;

        /* renamed from: com.google.common.cache.for$do$do, reason: invalid class name and collision with other inner class name */
        public class CallableC0080do implements Callable<V> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Object f13904do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Object f13906if;

            public CallableC0080do(Object obj, Object obj2) {
                this.f13904do = obj;
                this.f13906if = obj2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public V call() throws Exception {
                return Cfor.this.reload(this.f13904do, this.f13906if).get();
            }
        }

        public Cdo(Executor executor) {
            this.f13903if = executor;
        }

        @Override // com.google.common.cache.Cfor
        public V load(K k) throws Exception {
            return (V) Cfor.this.load(k);
        }

        @Override // com.google.common.cache.Cfor
        public Map<K, V> loadAll(Iterable<? extends K> iterable) throws Exception {
            return Cfor.this.loadAll(iterable);
        }

        @Override // com.google.common.cache.Cfor
        public ListenableFuture<V> reload(K k, V v) throws Exception {
            kt0 kt0VarM4511if = kt0.m4511if(new CallableC0080do(k, v));
            this.f13903if.execute(kt0VarM4511if);
            return kt0VarM4511if;
        }
    }

    /* renamed from: com.google.common.cache.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0081for extends RuntimeException {
        public C0081for(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.common.cache.for$if, reason: invalid class name */
    public static final class Cif<K, V> extends Cfor<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Function<K, V> computingFunction;

        public Cif(Function<K, V> function) {
            this.computingFunction = (Function) af1.m205continue(function);
        }

        @Override // com.google.common.cache.Cfor
        public V load(K k) {
            return (V) this.computingFunction.apply(af1.m205continue(k));
        }
    }

    /* renamed from: com.google.common.cache.for$new, reason: invalid class name */
    public static final class Cnew<V> extends Cfor<Object, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Supplier<V> computingSupplier;

        public Cnew(Supplier<V> supplier) {
            this.computingSupplier = (Supplier) af1.m205continue(supplier);
        }

        @Override // com.google.common.cache.Cfor
        public V load(Object obj) {
            af1.m205continue(obj);
            return this.computingSupplier.get();
        }
    }

    /* renamed from: com.google.common.cache.for$try, reason: invalid class name */
    public static final class Ctry extends UnsupportedOperationException {
    }

    @li0
    public static <K, V> Cfor<K, V> asyncReloading(Cfor<K, V> cfor, Executor executor) {
        af1.m205continue(cfor);
        af1.m205continue(executor);
        return cfor.new Cdo(executor);
    }

    public static <K, V> Cfor<K, V> from(Function<K, V> function) {
        return new Cif(function);
    }

    public abstract V load(K k) throws Exception;

    public Map<K, V> loadAll(Iterable<? extends K> iterable) throws Exception {
        throw new Ctry();
    }

    @li0
    public ListenableFuture<V> reload(K k, V v) throws Exception {
        af1.m205continue(k);
        af1.m205continue(v);
        return Cprivate.m18266class(load(k));
    }

    public static <V> Cfor<Object, V> from(Supplier<V> supplier) {
        return new Cnew(supplier);
    }
}
