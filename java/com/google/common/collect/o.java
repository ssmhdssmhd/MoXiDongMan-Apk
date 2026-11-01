package com.google.common.collect;

import android.support.v4.ki0;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
final class o<K, V> extends n<K, V> implements FilteredSetMultimap<K, V> {
    public o(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        super(setMultimap, predicate);
    }

    @Override // com.google.common.collect.n, com.google.common.collect.Cgoto
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> createEntries() {
        return c3.m15712this(unfiltered().entries(), entryPredicate());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((o<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((o<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.n, com.google.common.collect.Multimap
    public Set<V> get(K k) {
        return (Set) super.get((o<K, V>) k);
    }

    @Override // com.google.common.collect.n, com.google.common.collect.Multimap
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((o<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.n, com.google.common.collect.FilteredMultimap
    public SetMultimap<K, V> unfiltered() {
        return (SetMultimap) this.f14463case;
    }
}
