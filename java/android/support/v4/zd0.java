package android.support.v4;

import com.google.common.collect.Multimap;
import com.google.common.collect.Multiset;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public abstract class zd0<K, V> extends ae0 implements Multimap<K, V> {
    @Override // com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        return delegate().asMap();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        delegate().clear();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(@b51 Object obj, @b51 Object obj2) {
        return delegate().containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@b51 Object obj) {
        return delegate().containsKey(obj);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsValue(@b51 Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // android.support.v4.ae0
    public abstract Multimap<K, V> delegate();

    public Collection<Map.Entry<K, V>> entries() {
        return delegate().entries();
    }

    @Override // com.google.common.collect.Multimap
    public boolean equals(@b51 Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public Collection<V> get(@b51 K k) {
        return delegate().get(k);
    }

    @Override // com.google.common.collect.Multimap
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // com.google.common.collect.Multimap
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // com.google.common.collect.Multimap
    public Set<K> keySet() {
        return delegate().keySet();
    }

    @Override // com.google.common.collect.Multimap
    public Multiset<K> keys() {
        return delegate().keys();
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean put(K k, V v) {
        return delegate().put(k, v);
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        return delegate().putAll(k, iterable);
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean remove(@b51 Object obj, @b51 Object obj2) {
        return delegate().remove(obj, obj2);
    }

    @lf
    public Collection<V> removeAll(@b51 Object obj) {
        return delegate().removeAll(obj);
    }

    @lf
    public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues(k, iterable);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return delegate().size();
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> values() {
        return delegate().values();
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        return delegate().putAll(multimap);
    }
}
