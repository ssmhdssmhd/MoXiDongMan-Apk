package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ki0;
import com.google.common.base.Cpublic;
import com.google.common.base.Cthrow;
import com.google.common.base.Predicate;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

@ki0
/* loaded from: classes2.dex */
final class s<K, V> extends AbstractCollection<V> {

    /* renamed from: do, reason: not valid java name */
    @hf2
    private final FilteredMultimap<K, V> f14586do;

    public s(FilteredMultimap<K, V> filteredMultimap) {
        this.f14586do = (FilteredMultimap) af1.m205continue(filteredMultimap);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f14586do.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        return this.f14586do.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<V> iterator() {
        return Maps.b0(this.f14586do.entries().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(@b51 Object obj) {
        Predicate<? super Map.Entry<K, V>> predicateEntryPredicate = this.f14586do.entryPredicate();
        Iterator<Map.Entry<K, V>> it = this.f14586do.unfiltered().entries().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (predicateEntryPredicate.apply(next) && Cthrow.m15205do(next.getValue(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return r1.m16209transient(this.f14586do.unfiltered().entries(), Cpublic.m15173new(this.f14586do.entryPredicate(), Maps.d0(Cpublic.m15167final(collection))));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return r1.m16209transient(this.f14586do.unfiltered().entries(), Cpublic.m15173new(this.f14586do.entryPredicate(), Maps.d0(Cpublic.m15182while(Cpublic.m15167final(collection)))));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f14586do.size();
    }
}
