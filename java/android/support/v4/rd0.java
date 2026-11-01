package android.support.v4;

import java.util.concurrent.ConcurrentMap;

@ki0
/* loaded from: classes2.dex */
public abstract class rd0<K, V> extends com.google.common.collect.z<K, V> implements ConcurrentMap<K, V> {
    @Override // com.google.common.collect.z, android.support.v4.ae0
    public abstract ConcurrentMap<K, V> delegate();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public V putIfAbsent(K k, V v) {
        return delegate().putIfAbsent(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public boolean remove(Object obj, Object obj2) {
        return delegate().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public V replace(K k, V v) {
        return delegate().replace(k, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public boolean replace(K k, V v, V v2) {
        return delegate().replace(k, v, v2);
    }
}
