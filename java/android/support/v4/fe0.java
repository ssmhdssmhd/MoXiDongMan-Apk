package android.support.v4;

import com.google.common.collect.SortedSetMultimap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Set;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
public abstract class fe0<K, V> extends de0<K, V> implements SortedSetMultimap<K, V> {
    @Override // android.support.v4.de0, android.support.v4.zd0, android.support.v4.ae0
    public abstract SortedSetMultimap<K, V> delegate();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((fe0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((fe0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.SortedSetMultimap
    public Comparator<? super V> valueComparator() {
        return delegate().valueComparator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set get(@b51 Object obj) {
        return get((fe0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((fe0<K, V>) obj, iterable);
    }

    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public SortedSet<V> get(@b51 K k) {
        return delegate().get((SortedSetMultimap<K, V>) k);
    }

    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public SortedSet<V> removeAll(@b51 Object obj) {
        return delegate().removeAll(obj);
    }

    @Override // android.support.v4.de0, android.support.v4.zd0, com.google.common.collect.Multimap
    public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues((SortedSetMultimap<K, V>) k, (Iterable) iterable);
    }
}
