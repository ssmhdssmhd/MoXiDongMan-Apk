package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
final class r<K, V> extends q<K, V> implements FilteredSetMultimap<K, V> {

    /* renamed from: com.google.common.collect.r$do, reason: invalid class name */
    public class Cdo extends q<K, V>.Cfor implements Set<Map.Entry<K, V>> {
        public Cdo() {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return c3.m15689else(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return c3.m15683catch(this);
        }
    }

    public r(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        super(setMultimap, predicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.q, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((r<K, V>) obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.Cgoto
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> createEntries() {
        return new Cdo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((r<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.Multimap
    public Set<V> get(K k) {
        return (Set) super.get((r<K, V>) k);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.Multimap
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((r<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.FilteredMultimap
    public SetMultimap<K, V> unfiltered() {
        return (SetMultimap) this.f14534case;
    }
}
