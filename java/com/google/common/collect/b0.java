package com.google.common.collect;

import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedMap;

@li0
/* loaded from: classes2.dex */
public abstract class b0<K, V> extends d0<K, V> implements NavigableMap<K, V> {

    @o8
    /* renamed from: com.google.common.collect.b0$do, reason: invalid class name */
    public class Cdo extends Maps.Cwhile<K, V> {

        /* renamed from: com.google.common.collect.b0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0086do implements Iterator<Map.Entry<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private Map.Entry<K, V> f14082do = null;

            /* renamed from: if, reason: not valid java name */
            private Map.Entry<K, V> f14084if;

            public C0086do() {
                this.f14084if = Cdo.this.mo15487for().lastEntry();
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                try {
                    Map.Entry<K, V> entry = this.f14084if;
                    this.f14082do = entry;
                    this.f14084if = Cdo.this.mo15487for().lowerEntry(this.f14084if.getKey());
                    return entry;
                } catch (Throwable th) {
                    this.f14082do = this.f14084if;
                    this.f14084if = Cdo.this.mo15487for().lowerEntry(this.f14084if.getKey());
                    throw th;
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14084if != null;
            }

            @Override // java.util.Iterator
            public void remove() {
                Cdefault.m15744try(this.f14082do != null);
                Cdo.this.mo15487for().remove(this.f14082do.getKey());
                this.f14082do = null;
            }
        }

        public Cdo() {
        }

        @Override // com.google.common.collect.Maps.Cwhile
        /* renamed from: for */
        public NavigableMap<K, V> mo15487for() {
            return b0.this;
        }

        @Override // com.google.common.collect.Maps.Cwhile
        /* renamed from: if */
        public Iterator<Map.Entry<K, V>> mo15488if() {
            return new C0086do();
        }
    }

    @o8
    /* renamed from: com.google.common.collect.b0$if, reason: invalid class name */
    public class Cif extends Maps.Cabstract<K, V> {
        public Cif() {
            super(b0.this);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public SortedMap<K, V> m15523break(K k) {
        return headMap(k, false);
    }

    /* renamed from: case, reason: not valid java name */
    public Map.Entry<K, V> m15524case() {
        return (Map.Entry) r1.m16201static(entrySet(), null);
    }

    /* renamed from: catch, reason: not valid java name */
    public Map.Entry<K, V> m15525catch(K k) {
        return tailMap(k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k) {
        return delegate().ceilingEntry(k);
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k) {
        return delegate().ceilingKey(k);
    }

    /* renamed from: class, reason: not valid java name */
    public K m15526class(K k) {
        return (K) Maps.g(higherEntry(k));
    }

    /* renamed from: const, reason: not valid java name */
    public Map.Entry<K, V> m15527const() {
        return (Map.Entry) r1.m16201static(descendingMap().entrySet(), null);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return delegate().descendingKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> descendingMap() {
        return delegate().descendingMap();
    }

    /* renamed from: else, reason: not valid java name */
    public K m15528else() {
        Map.Entry<K, V> entryFirstEntry = firstEntry();
        if (entryFirstEntry != null) {
            return entryFirstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    /* renamed from: final, reason: not valid java name */
    public K m15529final() {
        Map.Entry<K, V> entryLastEntry = lastEntry();
        if (entryLastEntry != null) {
            return entryLastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        return delegate().firstEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k) {
        return delegate().floorEntry(k);
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k) {
        return delegate().floorKey(k);
    }

    /* renamed from: for, reason: not valid java name */
    public Map.Entry<K, V> m15530for(K k) {
        return tailMap(k, true).firstEntry();
    }

    /* renamed from: goto, reason: not valid java name */
    public Map.Entry<K, V> m15531goto(K k) {
        return headMap(k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> headMap(K k, boolean z) {
        return delegate().headMap(k, z);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k) {
        return delegate().higherEntry(k);
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k) {
        return delegate().higherKey(k);
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.z, android.support.v4.ae0
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract NavigableMap<K, V> delegate();

    /* renamed from: import, reason: not valid java name */
    public Map.Entry<K, V> m15533import() {
        return (Map.Entry) s1.h(descendingMap().entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        return delegate().lastEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k) {
        return delegate().lowerEntry(k);
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k) {
        return delegate().lowerKey(k);
    }

    /* renamed from: native, reason: not valid java name */
    public SortedMap<K, V> m15534native(K k) {
        return tailMap(k, true);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> navigableKeySet() {
        return delegate().navigableKeySet();
    }

    /* renamed from: new, reason: not valid java name */
    public K m15535new(K k) {
        return (K) Maps.g(ceilingEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> pollFirstEntry() {
        return delegate().pollFirstEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> pollLastEntry() {
        return delegate().pollLastEntry();
    }

    @Override // com.google.common.collect.d0
    public SortedMap<K, V> standardSubMap(K k, K k2) {
        return subMap(k, true, k2, false);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        return delegate().subMap(k, z, k2, z2);
    }

    /* renamed from: super, reason: not valid java name */
    public Map.Entry<K, V> m15536super(K k) {
        return headMap(k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> tailMap(K k, boolean z) {
        return delegate().tailMap(k, z);
    }

    /* renamed from: this, reason: not valid java name */
    public K m15537this(K k) {
        return (K) Maps.g(floorEntry(k));
    }

    /* renamed from: throw, reason: not valid java name */
    public K m15538throw(K k) {
        return (K) Maps.g(lowerEntry(k));
    }

    @o8
    /* renamed from: try, reason: not valid java name */
    public NavigableSet<K> m15539try() {
        return descendingMap().navigableKeySet();
    }

    /* renamed from: while, reason: not valid java name */
    public Map.Entry<K, V> m15540while() {
        return (Map.Entry) s1.h(entrySet().iterator());
    }
}
