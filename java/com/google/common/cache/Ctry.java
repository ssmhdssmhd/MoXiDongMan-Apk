package com.google.common.cache;

import android.support.v4.af1;
import android.support.v4.li0;
import com.google.common.collect.x0;
import java.util.concurrent.ExecutionException;

@li0
/* renamed from: com.google.common.cache.try, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Ctry<K, V> extends Cnew<K, V> implements LoadingCache<K, V> {

    /* renamed from: com.google.common.cache.try$do, reason: invalid class name */
    public static abstract class Cdo<K, V> extends Ctry<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final LoadingCache<K, V> f13941do;

        public Cdo(LoadingCache<K, V> loadingCache) {
            this.f13941do = (LoadingCache) af1.m205continue(loadingCache);
        }

        @Override // com.google.common.cache.Ctry, com.google.common.cache.Cnew, android.support.v4.ae0
        /* renamed from: do, reason: merged with bridge method [inline-methods] */
        public final LoadingCache<K, V> delegate() {
            return this.f13941do;
        }
    }

    @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
    public V apply(K k) {
        return delegate().apply(k);
    }

    @Override // com.google.common.cache.Cnew, android.support.v4.ae0
    /* renamed from: do, reason: not valid java name */
    public abstract LoadingCache<K, V> delegate();

    @Override // com.google.common.cache.LoadingCache
    public V get(K k) throws ExecutionException {
        return delegate().get(k);
    }

    @Override // com.google.common.cache.LoadingCache
    public x0<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
        return delegate().getAll(iterable);
    }

    @Override // com.google.common.cache.LoadingCache
    public V getUnchecked(K k) {
        return delegate().getUnchecked(k);
    }

    @Override // com.google.common.cache.LoadingCache
    public void refresh(K k) {
        delegate().refresh(k);
    }
}
