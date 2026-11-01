package com.google.common.cache;

import android.support.v4.ae0;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.df;
import android.support.v4.li0;
import com.google.common.collect.x0;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@li0
/* renamed from: com.google.common.cache.new, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cnew<K, V> extends ae0 implements Cache<K, V> {

    /* renamed from: com.google.common.cache.new$do, reason: invalid class name */
    public static abstract class Cdo<K, V> extends Cnew<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final Cache<K, V> f13936do;

        public Cdo(Cache<K, V> cache) {
            this.f13936do = (Cache) af1.m205continue(cache);
        }

        @Override // com.google.common.cache.Cnew, android.support.v4.ae0
        public final Cache<K, V> delegate() {
            return this.f13936do;
        }
    }

    @Override // com.google.common.cache.Cache
    public ConcurrentMap<K, V> asMap() {
        return delegate().asMap();
    }

    @Override // com.google.common.cache.Cache
    public void cleanUp() {
        delegate().cleanUp();
    }

    @Override // android.support.v4.ae0
    public abstract Cache<K, V> delegate();

    @Override // com.google.common.cache.Cache
    public V get(K k, Callable<? extends V> callable) throws ExecutionException {
        return delegate().get(k, callable);
    }

    @Override // com.google.common.cache.Cache
    public x0<K, V> getAllPresent(Iterable<?> iterable) {
        return delegate().getAllPresent(iterable);
    }

    @Override // com.google.common.cache.Cache
    @b51
    public V getIfPresent(Object obj) {
        return delegate().getIfPresent(obj);
    }

    @Override // com.google.common.cache.Cache
    public void invalidate(Object obj) {
        delegate().invalidate(obj);
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll(Iterable<?> iterable) {
        delegate().invalidateAll(iterable);
    }

    @Override // com.google.common.cache.Cache
    public void put(K k, V v) {
        delegate().put(k, v);
    }

    @Override // com.google.common.cache.Cache
    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @Override // com.google.common.cache.Cache
    public long size() {
        return delegate().size();
    }

    @Override // com.google.common.cache.Cache
    public df stats() {
        return delegate().stats();
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll() {
        delegate().invalidateAll();
    }
}
