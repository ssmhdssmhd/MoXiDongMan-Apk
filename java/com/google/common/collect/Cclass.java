package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.collect.Ctry;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@ki0
/* renamed from: com.google.common.collect.class, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cclass<K, V> extends Ctry<K, V> implements SetMultimap<K, V> {
    private static final long serialVersionUID = 7431625294878419160L;

    public Cclass(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Ctry
    public abstract Set<V> createCollection();

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((Cclass<K, V>) obj);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public boolean put(@b51 K k, @b51 V v) {
        return super.put(k, v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Collection replaceValues(@b51 Object obj, Iterable iterable) {
        return replaceValues((Cclass<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Ctry
    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override // com.google.common.collect.Ctry
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return new Ctry.Cfinal(k, (Set) collection);
    }

    @Override // com.google.common.collect.Ctry
    public Set<V> createUnmodifiableEmptyCollection() {
        return Collections.emptySet();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public Set<V> get(@b51 K k) {
        return (Set) super.get((Cclass<K, V>) k);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @lf
    public Set<V> removeAll(@b51 Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public Set<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((Cclass<K, V>) k, (Iterable) iterable);
    }
}
