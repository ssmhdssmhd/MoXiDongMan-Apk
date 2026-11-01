package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import com.google.common.collect.Cgoto;
import com.google.common.collect.Maps;
import com.google.common.collect.b2;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@ki0
/* renamed from: com.google.common.collect.try, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ctry<K, V> extends com.google.common.collect.Cgoto<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;

    /* renamed from: case, reason: not valid java name */
    private transient Map<K, Collection<V>> f14705case;

    /* renamed from: else, reason: not valid java name */
    private transient int f14706else;

    /* renamed from: com.google.common.collect.try$break, reason: invalid class name */
    public class Cbreak extends Ctry<K, V>.C0110try implements SortedSet<K> {
        public Cbreak(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return mo16379if().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return mo16379if().firstKey();
        }

        @Override // java.util.SortedSet
        public SortedSet<K> headSet(K k) {
            return new Cbreak(mo16379if().headMap(k));
        }

        /* renamed from: if, reason: not valid java name */
        public SortedMap<K, Collection<V>> mo16379if() {
            return (SortedMap) super.mo15447if();
        }

        @Override // java.util.SortedSet
        public K last() {
            return mo16379if().lastKey();
        }

        @Override // java.util.SortedSet
        public SortedSet<K> subSet(K k, K k2) {
            return new Cbreak(mo16379if().subMap(k, k2));
        }

        @Override // java.util.SortedSet
        public SortedSet<K> tailSet(K k) {
            return new Cbreak(mo16379if().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.try$case, reason: invalid class name */
    public class Ccase extends Ctry<K, V>.Cthis implements NavigableMap<K, Collection<V>> {
        public Ccase(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.Ctry.Cthis, com.google.common.collect.Maps.d
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> mo15458if() {
            return new Celse(mo16388this());
        }

        @Override // com.google.common.collect.Ctry.Cthis, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = mo16388this().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return m16408case(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return mo16388this().ceilingKey(k);
        }

        @Override // com.google.common.collect.Ctry.Cthis, com.google.common.collect.Ctry.Cfor, com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        /* renamed from: const, reason: not valid java name */
        public Map.Entry<K, Collection<V>> m16383const(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> collectionCreateCollection = Ctry.this.createCollection();
            collectionCreateCollection.addAll(next.getValue());
            it.remove();
            return Maps.b(next.getKey(), Ctry.this.unmodifiableCollectionSubclass(collectionCreateCollection));
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new Ccase(mo16388this().descendingMap());
        }

        @Override // com.google.common.collect.Ctry.Cthis
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> mo16388this() {
            return (NavigableMap) super.mo16388this();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = mo16388this().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return m16408case(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> entryFloorEntry = mo16388this().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return m16408case(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return mo16388this().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> entryHigherEntry = mo16388this().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return m16408case(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return mo16388this().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = mo16388this().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return m16408case(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> entryLowerEntry = mo16388this().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return m16408case(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return mo16388this().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return mo16386goto();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m16383const(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return m16383const(descendingMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.Ctry.Cthis, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.Ctry.Cthis, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new Ccase(mo16388this().headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new Ccase(mo16388this().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new Ccase(mo16388this().tailMap(k, z));
        }
    }

    /* renamed from: com.google.common.collect.try$const, reason: invalid class name */
    public class Cconst extends Ctry<K, V>.Csuper implements NavigableSet<V> {
        public Cconst(@b51 K k, NavigableSet<V> navigableSet, @b51 Ctry<K, V>.Ccatch ccatch) {
            super(k, navigableSet, ccatch);
        }

        /* renamed from: this, reason: not valid java name */
        private NavigableSet<V> m16400this(NavigableSet<V> navigableSet) {
            return new Cconst(this.f14709do, navigableSet, m16393if() == null ? this : m16393if());
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v) {
            return mo16401else().ceiling(v);
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new Ccatch.Cdo(mo16401else().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return m16400this(mo16401else().descendingSet());
        }

        @Override // java.util.NavigableSet
        public V floor(V v) {
            return mo16401else().floor(v);
        }

        @Override // com.google.common.collect.Ctry.Csuper
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableSet<V> mo16401else() {
            return (NavigableSet) super.mo16401else();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v, boolean z) {
            return m16400this(mo16401else().headSet(v, z));
        }

        @Override // java.util.NavigableSet
        public V higher(V v) {
            return mo16401else().higher(v);
        }

        @Override // java.util.NavigableSet
        public V lower(V v) {
            return mo16401else().lower(v);
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) s1.h(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) s1.h(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v, boolean z, V v2, boolean z2) {
            return m16400this(mo16401else().subSet(v, z, v2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v, boolean z) {
            return m16400this(mo16401else().tailSet(v, z));
        }
    }

    /* renamed from: com.google.common.collect.try$do, reason: invalid class name */
    public class Cdo extends Ctry<K, V>.Cnew<V> {
        public Cdo() {
            super();
        }

        @Override // com.google.common.collect.Ctry.Cnew
        /* renamed from: do, reason: not valid java name */
        public V mo16403do(K k, V v) {
            return v;
        }
    }

    /* renamed from: com.google.common.collect.try$else, reason: invalid class name */
    public class Celse extends Ctry<K, V>.Cbreak implements NavigableSet<K> {
        public Celse(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.Ctry.Cbreak, java.util.SortedSet
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return mo16379if().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new Celse(mo16379if().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return mo16379if().floorKey(k);
        }

        @Override // com.google.common.collect.Ctry.Cbreak, java.util.SortedSet
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return mo16379if().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return mo16379if().lowerKey(k);
        }

        @Override // com.google.common.collect.Ctry.Cbreak
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> mo16379if() {
            return (NavigableMap) super.mo16379if();
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) s1.h(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) s1.h(descendingIterator());
        }

        @Override // com.google.common.collect.Ctry.Cbreak, java.util.SortedSet
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return new Celse(mo16379if().headMap(k, z));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new Celse(mo16379if().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return new Celse(mo16379if().tailMap(k, z));
        }
    }

    /* renamed from: com.google.common.collect.try$final, reason: invalid class name */
    public class Cfinal extends Ctry<K, V>.Ccatch implements Set<V> {
        public Cfinal(@b51 K k, Set<V> set) {
            super(k, set, null);
        }

        @Override // com.google.common.collect.Ctry.Ccatch, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zM15704protected = c3.m15704protected((Set) this.f14711if, collection);
            if (zM15704protected) {
                int size2 = this.f14711if.size();
                Ctry.this.f14706else += size2 - size;
                m16390case();
            }
            return zM15704protected;
        }
    }

    /* renamed from: com.google.common.collect.try$for, reason: invalid class name */
    public class Cfor extends Maps.d<K, Collection<V>> {

        /* renamed from: new, reason: not valid java name */
        public final transient Map<K, Collection<V>> f14723new;

        /* renamed from: com.google.common.collect.try$for$do, reason: invalid class name */
        public class Cdo extends Maps.Cnative<K, Collection<V>> {
            public Cdo() {
            }

            @Override // com.google.common.collect.Maps.Cnative, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return Cextends.m15763catch(Cfor.this.f14723new.entrySet(), obj);
            }

            @Override // com.google.common.collect.Maps.Cnative
            /* renamed from: do */
            public Map<K, Collection<V>> mo15461do() {
                return Cfor.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Cfor.this.new Cif();
            }

            @Override // com.google.common.collect.Maps.Cnative, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Ctry.this.m16377for(((Map.Entry) obj).getKey());
                return true;
            }
        }

        /* renamed from: com.google.common.collect.try$for$if, reason: invalid class name */
        public class Cif implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: do, reason: not valid java name */
            public final Iterator<Map.Entry<K, Collection<V>>> f14726do;

            /* renamed from: if, reason: not valid java name */
            @b51
            public Collection<V> f14728if;

            public Cif() {
                this.f14726do = Cfor.this.f14723new.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f14726do.next();
                this.f14728if = next.getValue();
                return Cfor.this.m16408case(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14726do.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                Cdefault.m15744try(this.f14728if != null);
                this.f14726do.remove();
                Ctry.this.f14706else -= this.f14728if.size();
                this.f14728if.clear();
                this.f14728if = null;
            }
        }

        public Cfor(Map<K, Collection<V>> map) {
            this.f14723new = map;
        }

        /* renamed from: case, reason: not valid java name */
        public Map.Entry<K, Collection<V>> m16408case(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.b(key, Ctry.this.wrapCollection(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f14723new == Ctry.this.f14705case) {
                Ctry.this.clear();
            } else {
                s1.m16228goto(new Cif());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.B(this.f14723new, obj);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<K, Collection<V>>> mo15456do() {
            return new Cdo();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@b51 Object obj) {
            return this == obj || this.f14723new.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f14723new.hashCode();
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return Ctry.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) Maps.C(this.f14723new, obj);
            if (collection == null) {
                return null;
            }
            return Ctry.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14723new.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f14723new.toString();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            Collection<V> collectionRemove = this.f14723new.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            Collection<V> collectionCreateCollection = Ctry.this.createCollection();
            collectionCreateCollection.addAll(collectionRemove);
            Ctry.this.f14706else -= collectionRemove.size();
            collectionRemove.clear();
            return collectionCreateCollection;
        }
    }

    /* renamed from: com.google.common.collect.try$goto, reason: invalid class name */
    public class Cgoto extends Ctry<K, V>.Cclass implements RandomAccess {
        public Cgoto(@b51 K k, List<V> list, @b51 Ctry<K, V>.Ccatch ccatch) {
            super(k, list, ccatch);
        }
    }

    /* renamed from: com.google.common.collect.try$if, reason: invalid class name */
    public class Cif extends Ctry<K, V>.Cnew<Map.Entry<K, V>> {
        public Cif() {
            super();
        }

        @Override // com.google.common.collect.Ctry.Cnew
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo16403do(K k, V v) {
            return Maps.b(k, v);
        }
    }

    /* renamed from: com.google.common.collect.try$new, reason: invalid class name */
    public abstract class Cnew<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        public final Iterator<Map.Entry<K, Collection<V>>> f14731do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public K f14733if = null;

        /* renamed from: for, reason: not valid java name */
        @l01
        public Collection<V> f14732for = null;

        /* renamed from: new, reason: not valid java name */
        public Iterator<V> f14734new = s1.m16244switch();

        public Cnew() {
            this.f14731do = Ctry.this.f14705case.entrySet().iterator();
        }

        /* renamed from: do */
        public abstract T mo16403do(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14731do.hasNext() || this.f14734new.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f14734new.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f14731do.next();
                this.f14733if = next.getKey();
                Collection<V> value = next.getValue();
                this.f14732for = value;
                this.f14734new = value.iterator();
            }
            return mo16403do(this.f14733if, this.f14734new.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f14734new.remove();
            if (this.f14732for.isEmpty()) {
                this.f14731do.remove();
            }
            Ctry.access$210(Ctry.this);
        }
    }

    /* renamed from: com.google.common.collect.try$super, reason: invalid class name */
    public class Csuper extends Ctry<K, V>.Ccatch implements SortedSet<V> {
        public Csuper(@b51 K k, SortedSet<V> sortedSet, @b51 Ctry<K, V>.Ccatch ccatch) {
            super(k, sortedSet, ccatch);
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return mo16401else().comparator();
        }

        /* renamed from: else */
        public SortedSet<V> mo16401else() {
            return (SortedSet) m16392for();
        }

        @Override // java.util.SortedSet
        public V first() {
            m16395try();
            return mo16401else().first();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v) {
            m16395try();
            return new Csuper(m16394new(), mo16401else().headSet(v), m16393if() == null ? this : m16393if());
        }

        @Override // java.util.SortedSet
        public V last() {
            m16395try();
            return mo16401else().last();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v, V v2) {
            m16395try();
            return new Csuper(m16394new(), mo16401else().subSet(v, v2), m16393if() == null ? this : m16393if());
        }

        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v) {
            m16395try();
            return new Csuper(m16394new(), mo16401else().tailSet(v), m16393if() == null ? this : m16393if());
        }
    }

    /* renamed from: com.google.common.collect.try$this, reason: invalid class name */
    public class Cthis extends Ctry<K, V>.Cfor implements SortedMap<K, Collection<V>> {

        /* renamed from: case, reason: not valid java name */
        @l01
        public SortedSet<K> f14737case;

        public Cthis(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return mo16388this().comparator();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: else */
        public SortedSet<K> mo15458if() {
            return new Cbreak(mo16388this());
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo16388this().firstKey();
        }

        @Override // com.google.common.collect.Ctry.Cfor, com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: goto */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f14737case;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetMo15458if = mo15458if();
            this.f14737case = sortedSetMo15458if;
            return sortedSetMo15458if;
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new Cthis(mo16388this().headMap(k));
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo16388this().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new Cthis(mo16388this().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new Cthis(mo16388this().tailMap(k));
        }

        /* renamed from: this */
        public SortedMap<K, Collection<V>> mo16388this() {
            return (SortedMap) this.f14723new;
        }
    }

    /* renamed from: com.google.common.collect.try$try, reason: invalid class name and collision with other inner class name */
    public class C0110try extends Maps.Cfinally<K, Collection<V>> {

        /* renamed from: com.google.common.collect.try$try$do, reason: invalid class name */
        public class Cdo implements Iterator<K> {

            /* renamed from: do, reason: not valid java name */
            @b51
            public Map.Entry<K, Collection<V>> f14740do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Iterator f14742if;

            public Cdo(Iterator it) {
                this.f14742if = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14742if.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f14742if.next();
                this.f14740do = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                Cdefault.m15744try(this.f14740do != null);
                Collection<V> value = this.f14740do.getValue();
                this.f14742if.remove();
                Ctry.this.f14706else -= value.size();
                value.clear();
                this.f14740do = null;
            }
        }

        public C0110try(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s1.m16228goto(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return mo15447if().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return this == obj || mo15447if().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return mo15447if().keySet().hashCode();
        }

        @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new Cdo(mo15447if().entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int size;
            Collection<V> collectionRemove = mo15447if().remove(obj);
            if (collectionRemove != null) {
                size = collectionRemove.size();
                collectionRemove.clear();
                Ctry.this.f14706else -= size;
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    public Ctry(Map<K, Collection<V>> map) {
        af1.m220new(map.isEmpty());
        this.f14705case = map;
    }

    public static /* synthetic */ int access$208(Ctry ctry) {
        int i = ctry.f14706else;
        ctry.f14706else = i + 1;
        return i;
    }

    public static /* synthetic */ int access$210(Ctry ctry) {
        int i = ctry.f14706else;
        ctry.f14706else = i - 1;
        return i;
    }

    /* renamed from: do, reason: not valid java name */
    private Collection<V> m16376do(@b51 K k) {
        Collection<V> collection = this.f14705case.get(k);
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateCollection = createCollection(k);
        this.f14705case.put(k, collectionCreateCollection);
        return collectionCreateCollection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m16377for(Object obj) {
        Collection collection = (Collection) Maps.D(this.f14705case, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f14706else -= size;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static <E> Iterator<E> m16378if(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public Map<K, Collection<V>> backingMap() {
        return this.f14705case;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        Iterator<Collection<V>> it = this.f14705case.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f14705case.clear();
        this.f14706else = 0;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@b51 Object obj) {
        return this.f14705case.containsKey(obj);
    }

    @Override // com.google.common.collect.Cgoto
    public Map<K, Collection<V>> createAsMap() {
        return new Cfor(this.f14705case);
    }

    public abstract Collection<V> createCollection();

    public Collection<V> createCollection(@b51 K k) {
        return createCollection();
    }

    @Override // com.google.common.collect.Cgoto
    public Collection<Map.Entry<K, V>> createEntries() {
        return this instanceof SetMultimap ? new Cgoto.Cif() : new Cgoto.Cdo();
    }

    @Override // com.google.common.collect.Cgoto
    public Set<K> createKeySet() {
        return new C0110try(this.f14705case);
    }

    @Override // com.google.common.collect.Cgoto
    public Multiset<K> createKeys() {
        return new b2.Celse(this);
    }

    public final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.f14705case;
        return map instanceof NavigableMap ? new Ccase((NavigableMap) this.f14705case) : map instanceof SortedMap ? new Cthis((SortedMap) this.f14705case) : new Cfor(this.f14705case);
    }

    public final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.f14705case;
        return map instanceof NavigableMap ? new Celse((NavigableMap) this.f14705case) : map instanceof SortedMap ? new Cbreak((SortedMap) this.f14705case) : new C0110try(this.f14705case);
    }

    public Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    @Override // com.google.common.collect.Cgoto
    public Collection<V> createValues() {
        return new Cgoto.Cfor();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.Cgoto
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new Cif();
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> get(@b51 K k) {
        Collection<V> collectionCreateCollection = this.f14705case.get(k);
        if (collectionCreateCollection == null) {
            collectionCreateCollection = createCollection(k);
        }
        return wrapCollection(k, collectionCreateCollection);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public boolean put(@b51 K k, @b51 V v) {
        Collection<V> collection = this.f14705case.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.f14706else++;
            return true;
        }
        Collection<V> collectionCreateCollection = createCollection(k);
        if (!collectionCreateCollection.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f14706else++;
        this.f14705case.put(k, collectionCreateCollection);
        return true;
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> removeAll(@b51 Object obj) {
        Collection<V> collectionRemove = this.f14705case.remove(obj);
        if (collectionRemove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionRemove);
        this.f14706else -= collectionRemove.size();
        collectionRemove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Collection<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k);
        }
        Collection<V> collectionM16376do = m16376do(k);
        Collection<V> collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionM16376do);
        this.f14706else -= collectionM16376do.size();
        collectionM16376do.clear();
        while (it.hasNext()) {
            if (collectionM16376do.add(it.next())) {
                this.f14706else++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    public final void setMap(Map<K, Collection<V>> map) {
        this.f14705case = map;
        this.f14706else = 0;
        for (Collection<V> collection : map.values()) {
            af1.m220new(!collection.isEmpty());
            this.f14706else += collection.size();
        }
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.f14706else;
    }

    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.Cgoto
    public Iterator<V> valueIterator() {
        return new Cdo();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    public Collection<V> wrapCollection(@b51 K k, Collection<V> collection) {
        return new Ccatch(k, collection, null);
    }

    public final List<V> wrapList(@b51 K k, List<V> list, @b51 Ctry<K, V>.Ccatch ccatch) {
        return list instanceof RandomAccess ? new Cgoto(k, list, ccatch) : new Cclass(k, list, ccatch);
    }

    /* renamed from: com.google.common.collect.try$catch, reason: invalid class name */
    public class Ccatch extends AbstractCollection<V> {

        /* renamed from: do, reason: not valid java name */
        @b51
        public final K f14709do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public final Ctry<K, V>.Ccatch f14710for;

        /* renamed from: if, reason: not valid java name */
        public Collection<V> f14711if;

        /* renamed from: new, reason: not valid java name */
        @b51
        public final Collection<V> f14712new;

        public Ccatch(@b51 K k, Collection<V> collection, @b51 Ctry<K, V>.Ccatch ccatch) {
            this.f14709do = k;
            this.f14711if = collection;
            this.f14710for = ccatch;
            this.f14712new = ccatch == null ? null : ccatch.m16392for();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            m16395try();
            boolean zIsEmpty = this.f14711if.isEmpty();
            boolean zAdd = this.f14711if.add(v);
            if (zAdd) {
                Ctry.access$208(Ctry.this);
                if (zIsEmpty) {
                    m16391do();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.f14711if.addAll(collection);
            if (zAddAll) {
                int size2 = this.f14711if.size();
                Ctry.this.f14706else += size2 - size;
                if (size == 0) {
                    m16391do();
                }
            }
            return zAddAll;
        }

        /* renamed from: case, reason: not valid java name */
        public void m16390case() {
            Ctry<K, V>.Ccatch ccatch = this.f14710for;
            if (ccatch != null) {
                ccatch.m16390case();
            } else if (this.f14711if.isEmpty()) {
                Ctry.this.f14705case.remove(this.f14709do);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f14711if.clear();
            Ctry.this.f14706else -= size;
            m16390case();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            m16395try();
            return this.f14711if.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            m16395try();
            return this.f14711if.containsAll(collection);
        }

        /* renamed from: do, reason: not valid java name */
        public void m16391do() {
            Ctry<K, V>.Ccatch ccatch = this.f14710for;
            if (ccatch != null) {
                ccatch.m16391do();
            } else {
                Ctry.this.f14705case.put(this.f14709do, this.f14711if);
            }
        }

        @Override // java.util.Collection
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            m16395try();
            return this.f14711if.equals(obj);
        }

        /* renamed from: for, reason: not valid java name */
        public Collection<V> m16392for() {
            return this.f14711if;
        }

        @Override // java.util.Collection
        public int hashCode() {
            m16395try();
            return this.f14711if.hashCode();
        }

        /* renamed from: if, reason: not valid java name */
        public Ctry<K, V>.Ccatch m16393if() {
            return this.f14710for;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            m16395try();
            return new Cdo();
        }

        /* renamed from: new, reason: not valid java name */
        K m16394new() {
            return this.f14709do;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            m16395try();
            boolean zRemove = this.f14711if.remove(obj);
            if (zRemove) {
                Ctry.access$210(Ctry.this);
                m16390case();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f14711if.removeAll(collection);
            if (zRemoveAll) {
                int size2 = this.f14711if.size();
                Ctry.this.f14706else += size2 - size;
                m16390case();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            af1.m205continue(collection);
            int size = size();
            boolean zRetainAll = this.f14711if.retainAll(collection);
            if (zRetainAll) {
                int size2 = this.f14711if.size();
                Ctry.this.f14706else += size2 - size;
                m16390case();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            m16395try();
            return this.f14711if.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            m16395try();
            return this.f14711if.toString();
        }

        /* renamed from: try, reason: not valid java name */
        public void m16395try() {
            Collection<V> collection;
            Ctry<K, V>.Ccatch ccatch = this.f14710for;
            if (ccatch != null) {
                ccatch.m16395try();
                if (this.f14710for.m16392for() != this.f14712new) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f14711if.isEmpty() || (collection = (Collection) Ctry.this.f14705case.get(this.f14709do)) == null) {
                    return;
                }
                this.f14711if = collection;
            }
        }

        /* renamed from: com.google.common.collect.try$catch$do, reason: invalid class name */
        public class Cdo implements Iterator<V> {

            /* renamed from: do, reason: not valid java name */
            public final Iterator<V> f14714do;

            /* renamed from: if, reason: not valid java name */
            public final Collection<V> f14716if;

            public Cdo() {
                Collection<V> collection = Ccatch.this.f14711if;
                this.f14716if = collection;
                this.f14714do = Ctry.m16378if(collection);
            }

            /* renamed from: do, reason: not valid java name */
            public Iterator<V> m16396do() {
                m16397if();
                return this.f14714do;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m16397if();
                return this.f14714do.hasNext();
            }

            /* renamed from: if, reason: not valid java name */
            public void m16397if() {
                Ccatch.this.m16395try();
                if (Ccatch.this.f14711if != this.f14716if) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public V next() {
                m16397if();
                return this.f14714do.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f14714do.remove();
                Ctry.access$210(Ctry.this);
                Ccatch.this.m16390case();
            }

            public Cdo(Iterator<V> it) {
                this.f14716if = Ccatch.this.f14711if;
                this.f14714do = it;
            }
        }
    }

    /* renamed from: com.google.common.collect.try$class, reason: invalid class name */
    public class Cclass extends Ctry<K, V>.Ccatch implements List<V> {

        /* renamed from: com.google.common.collect.try$class$do, reason: invalid class name */
        public class Cdo extends Ctry<K, V>.Ccatch.Cdo implements ListIterator<V> {
            public Cdo() {
                super();
            }

            /* renamed from: for, reason: not valid java name */
            private ListIterator<V> m16399for() {
                return (ListIterator) m16396do();
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                boolean zIsEmpty = Cclass.this.isEmpty();
                m16399for().add(v);
                Ctry.access$208(Ctry.this);
                if (zIsEmpty) {
                    Cclass.this.m16391do();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return m16399for().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return m16399for().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return m16399for().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return m16399for().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                m16399for().set(v);
            }

            public Cdo(int i) {
                super(Cclass.this.m16398else().listIterator(i));
            }
        }

        public Cclass(@b51 K k, List<V> list, @b51 Ctry<K, V>.Ccatch ccatch) {
            super(k, list, ccatch);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            m16395try();
            boolean zIsEmpty = m16392for().isEmpty();
            m16398else().add(i, v);
            Ctry.access$208(Ctry.this);
            if (zIsEmpty) {
                m16391do();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = m16398else().addAll(i, collection);
            if (zAddAll) {
                int size2 = m16392for().size();
                Ctry.this.f14706else += size2 - size;
                if (size == 0) {
                    m16391do();
                }
            }
            return zAddAll;
        }

        /* renamed from: else, reason: not valid java name */
        public List<V> m16398else() {
            return (List) m16392for();
        }

        @Override // java.util.List
        public V get(int i) {
            m16395try();
            return m16398else().get(i);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            m16395try();
            return m16398else().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            m16395try();
            return m16398else().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            m16395try();
            return new Cdo();
        }

        @Override // java.util.List
        public V remove(int i) {
            m16395try();
            V vRemove = m16398else().remove(i);
            Ctry.access$210(Ctry.this);
            m16390case();
            return vRemove;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            m16395try();
            return m16398else().set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            m16395try();
            return Ctry.this.wrapList(m16394new(), m16398else().subList(i, i2), m16393if() == null ? this : m16393if());
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            m16395try();
            return new Cdo(i);
        }
    }
}
