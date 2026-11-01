package com.google.common.collect;

import android.support.v4.ki0;
import java.util.Collection;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@ki0
/* renamed from: com.google.common.collect.const, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cconst<K, V> extends Csuper<K, V> {
    public Cconst(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
    public Set<K> createKeySet() {
        return createMaybeNavigableKeySet();
    }

    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    @Override // com.google.common.collect.Ctry
    public SortedMap<K, Collection<V>> backingMap() {
        return (SortedMap) super.backingMap();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }
}
