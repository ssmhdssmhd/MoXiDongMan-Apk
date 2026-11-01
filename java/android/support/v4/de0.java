package android.support.v4;

import com.google.common.collect.SetMultimap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public abstract class de0<K, V> extends zd0<K, V> implements SetMultimap<K, V> {
    @Override // android.support.v4.zd0, android.support.v4.ae0
    public abstract SetMultimap<K, V> delegate();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((de0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((de0<K, V>) obj, iterable);
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return delegate().entries();
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    public Set<V> get(@b51 K k) {
        return delegate().get((SetMultimap<K, V>) k);
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    @lf
    public Set<V> removeAll(@b51 Object obj) {
        return delegate().removeAll(obj);
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    @lf
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues((SetMultimap<K, V>) k, (Iterable) iterable);
    }
}
