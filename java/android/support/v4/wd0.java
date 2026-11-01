package android.support.v4;

import com.google.common.collect.ListMultimap;
import java.util.Collection;
import java.util.List;

@ki0
/* loaded from: classes2.dex */
public abstract class wd0<K, V> extends zd0<K, V> implements ListMultimap<K, V> {
    @Override // android.support.v4.zd0, android.support.v4.ae0
    public abstract ListMultimap<K, V> delegate();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((wd0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((wd0<K, V>) obj, iterable);
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    public List<V> get(@b51 K k) {
        return delegate().get((ListMultimap<K, V>) k);
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    @lf
    public List<V> removeAll(@b51 Object obj) {
        return delegate().removeAll(obj);
    }

    @Override // android.support.v4.zd0, com.google.common.collect.Multimap
    @lf
    public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues((ListMultimap<K, V>) k, (Iterable) iterable);
    }
}
