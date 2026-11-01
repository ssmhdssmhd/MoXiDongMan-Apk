package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
public interface SortedSetMultimap<K, V> extends SetMultimap<K, V> {
    @Override // com.google.common.collect.SetMultimap, com.google.common.collect.Multimap
    Map<K, Collection<V>> asMap();

    @Override // com.google.common.collect.SetMultimap, com.google.common.collect.Multimap
    SortedSet<V> get(@b51 K k);

    @Override // com.google.common.collect.SetMultimap, com.google.common.collect.Multimap
    @lf
    SortedSet<V> removeAll(@b51 Object obj);

    @Override // com.google.common.collect.SetMultimap, com.google.common.collect.Multimap
    @lf
    SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable);

    Comparator<? super V> valueComparator();
}
