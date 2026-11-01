package com.google.common.cache;

import android.support.v4.ib2;
import android.support.v4.li0;
import com.google.common.collect.Maps;
import com.google.common.collect.x0;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@li0
/* renamed from: com.google.common.cache.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<K, V> extends AbstractCache<K, V> implements LoadingCache<K, V> {
    @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
    public final V apply(K k) {
        return getUnchecked(k);
    }

    @Override // com.google.common.cache.LoadingCache
    public x0<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap linkedHashMapP = Maps.p();
        for (K k : iterable) {
            if (!linkedHashMapP.containsKey(k)) {
                linkedHashMapP.put(k, get(k));
            }
        }
        return x0.copyOf((Map) linkedHashMapP);
    }

    @Override // com.google.common.cache.LoadingCache
    public V getUnchecked(K k) {
        try {
            return get(k);
        } catch (ExecutionException e) {
            throw new ib2(e.getCause());
        }
    }

    @Override // com.google.common.cache.LoadingCache
    public void refresh(K k) {
        throw new UnsupportedOperationException();
    }
}
