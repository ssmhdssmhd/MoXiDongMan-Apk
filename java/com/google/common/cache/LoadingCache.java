package com.google.common.cache;

import android.support.v4.ki0;
import com.google.common.base.Function;
import com.google.common.collect.x0;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@ki0
/* loaded from: classes.dex */
public interface LoadingCache<K, V> extends Cache<K, V>, Function<K, V> {
    @Override // com.google.common.base.Function
    @Deprecated
    V apply(K k);

    @Override // com.google.common.cache.Cache
    ConcurrentMap<K, V> asMap();

    V get(K k) throws ExecutionException;

    x0<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException;

    V getUnchecked(K k);

    void refresh(K k);
}
