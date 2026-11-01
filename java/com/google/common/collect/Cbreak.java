package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.li0;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;

@li0
/* renamed from: com.google.common.collect.break, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cbreak<K, V> extends Maps.Cextends<K, V> implements NavigableMap<K, V> {

    /* renamed from: com.google.common.collect.break$if, reason: invalid class name */
    public final class Cif extends Maps.Cwhile<K, V> {
        private Cif() {
        }

        @Override // com.google.common.collect.Maps.Cwhile
        /* renamed from: for */
        public NavigableMap<K, V> mo15487for() {
            return Cbreak.this;
        }

        @Override // com.google.common.collect.Maps.Cwhile
        /* renamed from: if */
        public Iterator<Map.Entry<K, V>> mo15488if() {
            return Cbreak.this.mo15465if();
        }
    }

    @Override // java.util.NavigableMap
    @b51
    public Map.Entry<K, V> ceilingEntry(K k) {
        return tailMap(k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k) {
        return (K) Maps.g(ceilingEntry(k));
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    public NavigableMap<K, V> descendingMap() {
        return new Cif();
    }

    @Override // java.util.NavigableMap
    @b51
    public Map.Entry<K, V> firstEntry() {
        return (Map.Entry) s1.m16249transient(mo15460do(), null);
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        Map.Entry<K, V> entryFirstEntry = firstEntry();
        if (entryFirstEntry != null) {
            return entryFirstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    @b51
    public Map.Entry<K, V> floorEntry(K k) {
        return headMap(k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k) {
        return (K) Maps.g(floorEntry(k));
    }

    @Override // java.util.AbstractMap, java.util.Map
    @b51
    public abstract V get(@b51 Object obj);

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> headMap(K k) {
        return headMap(k, false);
    }

    @Override // java.util.NavigableMap
    @b51
    public Map.Entry<K, V> higherEntry(K k) {
        return tailMap(k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k) {
        return (K) Maps.g(higherEntry(k));
    }

    /* renamed from: if */
    public abstract Iterator<Map.Entry<K, V>> mo15465if();

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set<K> keySet() {
        return navigableKeySet();
    }

    @Override // java.util.NavigableMap
    @b51
    public Map.Entry<K, V> lastEntry() {
        return (Map.Entry) s1.m16249transient(mo15465if(), null);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        Map.Entry<K, V> entryLastEntry = lastEntry();
        if (entryLastEntry != null) {
            return entryLastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    @b51
    public Map.Entry<K, V> lowerEntry(K k) {
        return headMap(k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k) {
        return (K) Maps.g(lowerEntry(k));
    }

    public NavigableSet<K> navigableKeySet() {
        return new Maps.Cabstract(this);
    }

    @b51
    public Map.Entry<K, V> pollFirstEntry() {
        return (Map.Entry) s1.h(mo15460do());
    }

    @b51
    public Map.Entry<K, V> pollLastEntry() {
        return (Map.Entry) s1.h(mo15465if());
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> subMap(K k, K k2) {
        return subMap(k, true, k2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> tailMap(K k) {
        return tailMap(k, true);
    }
}
