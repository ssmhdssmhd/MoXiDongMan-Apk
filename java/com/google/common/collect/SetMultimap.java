package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public interface SetMultimap<K, V> extends Multimap<K, V> {
    @Override // com.google.common.collect.Multimap
    Map<K, Collection<V>> asMap();

    @Override // com.google.common.collect.Multimap
    Set<Map.Entry<K, V>> entries();

    @Override // com.google.common.collect.Multimap
    boolean equals(@b51 Object obj);

    @Override // com.google.common.collect.Multimap
    Set<V> get(@b51 K k);

    @Override // com.google.common.collect.Multimap
    @lf
    Set<V> removeAll(@b51 Object obj);

    @Override // com.google.common.collect.Multimap
    @lf
    Set<V> replaceValues(K k, Iterable<? extends V> iterable);
}
