package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import com.google.common.collect.b2;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ki0
/* renamed from: com.google.common.collect.goto, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cgoto<K, V> implements Multimap<K, V> {

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient Collection<Map.Entry<K, V>> f14302do;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient Multiset<K> f14303for;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient Set<K> f14304if;

    /* renamed from: new, reason: not valid java name */
    @l01
    private transient Collection<V> f14305new;

    /* renamed from: try, reason: not valid java name */
    @l01
    private transient Map<K, Collection<V>> f14306try;

    /* renamed from: com.google.common.collect.goto$do, reason: invalid class name */
    public class Cdo extends b2.Ccase<K, V> {
        public Cdo() {
        }

        @Override // com.google.common.collect.b2.Ccase
        /* renamed from: do */
        public Multimap<K, V> mo15595do() {
            return Cgoto.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return Cgoto.this.entryIterator();
        }
    }

    /* renamed from: com.google.common.collect.goto$for, reason: invalid class name */
    public class Cfor extends AbstractCollection<V> {
        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Cgoto.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return Cgoto.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Cgoto.this.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return Cgoto.this.size();
        }
    }

    /* renamed from: com.google.common.collect.goto$if, reason: invalid class name */
    public class Cif extends Cgoto<K, V>.Cdo implements Set<Map.Entry<K, V>> {
        public Cif() {
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

    @Override // com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.f14306try;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapCreateAsMap = createAsMap();
        this.f14306try = mapCreateAsMap;
        return mapCreateAsMap;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(@b51 Object obj, @b51 Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsValue(@b51 Object obj) {
        Iterator<Collection<V>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Map<K, Collection<V>> createAsMap();

    public abstract Collection<Map.Entry<K, V>> createEntries();

    public abstract Set<K> createKeySet();

    public abstract Multiset<K> createKeys();

    public abstract Collection<V> createValues();

    @Override // com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.f14302do;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> collectionCreateEntries = createEntries();
        this.f14302do = collectionCreateEntries;
        return collectionCreateEntries;
    }

    public abstract Iterator<Map.Entry<K, V>> entryIterator();

    @Override // com.google.common.collect.Multimap
    public boolean equals(@b51 Object obj) {
        return b2.m15563else(this, obj);
    }

    @Override // com.google.common.collect.Multimap
    public int hashCode() {
        return asMap().hashCode();
    }

    @Override // com.google.common.collect.Multimap
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Multimap
    public Set<K> keySet() {
        Set<K> set = this.f14304if;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.f14304if = setCreateKeySet;
        return setCreateKeySet;
    }

    @Override // com.google.common.collect.Multimap
    public Multiset<K> keys() {
        Multiset<K> multiset = this.f14303for;
        if (multiset != null) {
            return multiset;
        }
        Multiset<K> multisetCreateKeys = createKeys();
        this.f14303for = multisetCreateKeys;
        return multisetCreateKeys;
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean put(@b51 K k, @b51 V v) {
        return get(k).add(v);
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean putAll(@b51 K k, Iterable<? extends V> iterable) {
        af1.m205continue(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            return !collection.isEmpty() && get(k).addAll(collection);
        }
        Iterator<? extends V> it = iterable.iterator();
        return it.hasNext() && s1.m16222do(get(k), it);
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean remove(@b51 Object obj, @b51 Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public Collection<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        af1.m205continue(iterable);
        Collection<V> collectionRemoveAll = removeAll(k);
        putAll(k, iterable);
        return collectionRemoveAll;
    }

    public String toString() {
        return asMap().toString();
    }

    public Iterator<V> valueIterator() {
        return Maps.b0(entries().iterator());
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> values() {
        Collection<V> collection = this.f14305new;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.f14305new = collectionCreateValues;
        return collectionCreateValues;
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        boolean zPut = false;
        for (Map.Entry<? extends K, ? extends V> entry : multimap.entries()) {
            zPut |= put(entry.getKey(), entry.getValue());
        }
        return zPut;
    }
}
