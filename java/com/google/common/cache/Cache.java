package com.google.common.cache;

import android.support.v4.b51;
import android.support.v4.df;
import android.support.v4.ki0;
import android.support.v4.lp;
import android.support.v4.v10;
import com.google.common.collect.x0;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@v10("Use CacheBuilder.newBuilder().build()")
@ki0
/* loaded from: classes.dex */
public interface Cache<K, V> {
    ConcurrentMap<K, V> asMap();

    void cleanUp();

    V get(K k, Callable<? extends V> callable) throws ExecutionException;

    x0<K, V> getAllPresent(Iterable<?> iterable);

    @b51
    V getIfPresent(@lp("K") Object obj);

    void invalidate(@lp("K") Object obj);

    void invalidateAll();

    void invalidateAll(Iterable<?> iterable);

    void put(K k, V v);

    void putAll(Map<? extends K, ? extends V> map);

    long size();

    df stats();
}
