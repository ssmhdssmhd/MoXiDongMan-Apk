package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.collect.Ctry;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;

@ki0
/* renamed from: com.google.common.collect.super, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Csuper<K, V> extends Cclass<K, V> implements SortedSetMultimap<K, V> {
    private static final long serialVersionUID = 430848587173315748L;

    public Csuper(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public abstract SortedSet<V> createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((Csuper<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Collection replaceValues(@b51 Object obj, Iterable iterable) {
        return replaceValues((Csuper<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return collection instanceof NavigableSet ? new Ctry.Cconst(k, (NavigableSet) collection, null) : new Ctry.Csuper(k, (SortedSet) collection, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set get(@b51 Object obj) {
        return get((Csuper<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Set replaceValues(@b51 Object obj, Iterable iterable) {
        return replaceValues((Csuper<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public <E> SortedSet<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return collection instanceof NavigableSet ? c3.b((NavigableSet) collection) : Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public SortedSet<V> createUnmodifiableEmptyCollection() {
        return (SortedSet<V>) unmodifiableCollectionSubclass((Collection) createCollection());
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public SortedSet<V> get(@b51 K k) {
        return (SortedSet) super.get((Csuper<K, V>) k);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @lf
    public SortedSet<V> removeAll(@b51 Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public SortedSet<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((Csuper<K, V>) k, (Iterable) iterable);
    }
}
