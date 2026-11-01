package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class FactoryPools {

    /* renamed from: do, reason: not valid java name */
    private static final String f10491do = "FactoryPools";

    /* renamed from: for, reason: not valid java name */
    private static final Resetter<Object> f10492for = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final int f10493if = 20;

    public interface Factory<T> {
        T create();
    }

    public interface Poolable {
        @NonNull
        com.bumptech.glide.util.pool.Cdo getVerifier();
    }

    public interface Resetter<T> {
        void reset(@NonNull T t);
    }

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$do, reason: invalid class name */
    public class Cdo implements Resetter<Object> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public void reset(@NonNull Object obj) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$for, reason: invalid class name */
    public class Cfor<T> implements Resetter<List<T>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void reset(@NonNull List<T> list) {
            list.clear();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$if, reason: invalid class name */
    public class Cif<T> implements Factory<List<T>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<T> create() {
            return new ArrayList();
        }
    }

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$new, reason: invalid class name */
    public static final class Cnew<T> implements Pools.Pool<T> {

        /* renamed from: do, reason: not valid java name */
        private final Factory<T> f10494do;

        /* renamed from: for, reason: not valid java name */
        private final Pools.Pool<T> f10495for;

        /* renamed from: if, reason: not valid java name */
        private final Resetter<T> f10496if;

        public Cnew(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
            this.f10495for = pool;
            this.f10494do = factory;
            this.f10496if = resetter;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T tAcquire = this.f10495for.acquire();
            if (tAcquire == null) {
                tAcquire = this.f10494do.create();
                if (Log.isLoggable(FactoryPools.f10491do, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Created new ");
                    sb.append(tAcquire.getClass());
                }
            }
            if (tAcquire instanceof Poolable) {
                tAcquire.getVerifier().mo12092if(false);
            }
            return (T) tAcquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (t instanceof Poolable) {
                ((Poolable) t).getVerifier().mo12092if(true);
            }
            this.f10496if.reset(t);
            return this.f10495for.release(t);
        }
    }

    private FactoryPools() {
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static <T> Pools.Pool<List<T>> m12081case() {
        return m12083else(20);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    private static <T extends Poolable> Pools.Pool<T> m12082do(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory) {
        return m12085if(pool, factory, m12084for());
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public static <T> Pools.Pool<List<T>> m12083else(int i) {
        return m12085if(new Pools.SynchronizedPool(i), new Cif(), new Cfor());
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private static <T> Resetter<T> m12084for() {
        return (Resetter<T>) f10492for;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private static <T> Pools.Pool<T> m12085if(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
        return new Cnew(pool, factory, resetter);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static <T extends Poolable> Pools.Pool<T> m12086new(int i, @NonNull Factory<T> factory) {
        return m12082do(new Pools.SimplePool(i), factory);
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static <T extends Poolable> Pools.Pool<T> m12087try(int i, @NonNull Factory<T> factory) {
        return m12082do(new Pools.SynchronizedPool(i), factory);
    }
}
