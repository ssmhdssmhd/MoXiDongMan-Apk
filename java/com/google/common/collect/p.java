package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.List;

@ki0
/* loaded from: classes2.dex */
final class p<K, V> extends q<K, V> implements ListMultimap<K, V> {
    public p(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        super(listMultimap, predicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.q, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((p<K, V>) obj);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.FilteredMultimap
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public ListMultimap<K, V> unfiltered() {
        return (ListMultimap) super.unfiltered();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((p<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.Multimap
    public List<V> get(K k) {
        return (List) super.get((p<K, V>) k);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.Multimap
    public List<V> removeAll(@b51 Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((p<K, V>) k, (Iterable) iterable);
    }
}
