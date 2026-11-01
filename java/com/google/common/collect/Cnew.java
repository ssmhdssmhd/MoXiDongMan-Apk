package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@ki0
/* renamed from: com.google.common.collect.new, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cnew<K, V> extends Ctry<K, V> implements ListMultimap<K, V> {
    private static final long serialVersionUID = 6588350623831699109L;

    public Cnew(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Ctry
    public abstract List<V> createCollection();

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((Cnew<K, V>) obj);
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
        return replaceValues((Cnew<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Ctry
    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.Ctry
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return wrapList(k, (List) collection, null);
    }

    @Override // com.google.common.collect.Ctry
    public List<V> createUnmodifiableEmptyCollection() {
        return Collections.emptyList();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public List<V> get(@b51 K k) {
        return (List) super.get((Cnew<K, V>) k);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @lf
    public List<V> removeAll(@b51 Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public List<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((Cnew<K, V>) k, (Iterable) iterable);
    }
}
