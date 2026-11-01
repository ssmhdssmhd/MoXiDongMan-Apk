package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cpublic;
import com.google.common.base.Csuper;
import com.google.common.base.Predicate;
import com.google.common.collect.Maps;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;

@li0
@o8
/* loaded from: classes2.dex */
public final class t3<K extends Comparable, V> implements RangeMap<K, V> {

    /* renamed from: if, reason: not valid java name */
    private static final RangeMap f14667if = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final NavigableMap<a<K>, Cfor<K, V>> f14668do = Maps.s();

    /* renamed from: com.google.common.collect.t3$do, reason: invalid class name */
    public static class Cdo implements RangeMap {
        @Override // com.google.common.collect.RangeMap
        public Map<n2, Object> asDescendingMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<n2, Object> asMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
        }

        @Override // com.google.common.collect.RangeMap
        @b51
        public Object get(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @b51
        public Map.Entry<n2, Object> getEntry(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        public void put(n2 n2Var, Object obj) {
            af1.m205continue(n2Var);
            throw new IllegalArgumentException("Cannot insert range " + n2Var + " into an empty subRangeMap");
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap rangeMap) {
            if (!rangeMap.asMapOfRanges().isEmpty()) {
                throw new IllegalArgumentException("Cannot putAll(nonEmptyRangeMap) into an empty subRangeMap");
            }
        }

        @Override // com.google.common.collect.RangeMap
        public void putCoalescing(n2 n2Var, Object obj) {
            af1.m205continue(n2Var);
            throw new IllegalArgumentException("Cannot insert range " + n2Var + " into an empty subRangeMap");
        }

        @Override // com.google.common.collect.RangeMap
        public void remove(n2 n2Var) {
            af1.m205continue(n2Var);
        }

        @Override // com.google.common.collect.RangeMap
        public n2 span() {
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.RangeMap
        public RangeMap subRangeMap(n2 n2Var) {
            af1.m205continue(n2Var);
            return this;
        }
    }

    /* renamed from: com.google.common.collect.t3$for, reason: invalid class name */
    public static final class Cfor<K extends Comparable, V> extends Celse<n2<K>, V> {

        /* renamed from: do, reason: not valid java name */
        private final n2<K> f14669do;

        /* renamed from: if, reason: not valid java name */
        private final V f14670if;

        public Cfor(a<K> aVar, a<K> aVar2, V v) {
            this(n2.create(aVar, aVar2), v);
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m16355do(K k) {
            return this.f14669do.contains(k);
        }

        /* renamed from: for, reason: not valid java name */
        public a<K> m16356for() {
            return (a<K>) this.f14669do.lowerBound;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V getValue() {
            return this.f14670if;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public n2<K> getKey() {
            return this.f14669do;
        }

        /* renamed from: new, reason: not valid java name */
        public a<K> m16358new() {
            return (a<K>) this.f14669do.upperBound;
        }

        public Cfor(n2<K> n2Var, V v) {
            this.f14669do = n2Var;
            this.f14670if = v;
        }
    }

    /* renamed from: com.google.common.collect.t3$if, reason: invalid class name */
    public final class Cif extends Maps.Cextends<n2<K>, V> {

        /* renamed from: do, reason: not valid java name */
        public final Iterable<Map.Entry<n2<K>, V>> f14671do;

        public Cif(Iterable<Cfor<K, V>> iterable) {
            this.f14671do = iterable;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<n2<K>, V>> mo15460do() {
            return this.f14671do.iterator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@b51 Object obj) {
            if (!(obj instanceof n2)) {
                return null;
            }
            n2 n2Var = (n2) obj;
            Cfor cfor = (Cfor) t3.this.f14668do.get(n2Var.lowerBound);
            if (cfor == null || !cfor.getKey().equals(n2Var)) {
                return null;
            }
            return (V) cfor.getValue();
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return t3.this.f14668do.size();
        }
    }

    /* renamed from: com.google.common.collect.t3$new, reason: invalid class name */
    public class Cnew implements RangeMap<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final n2<K> f14673do;

        /* renamed from: com.google.common.collect.t3$new$do, reason: invalid class name */
        public class Cdo extends t3<K, V>.Cnew.Cif {

            /* renamed from: com.google.common.collect.t3$new$do$do, reason: invalid class name and collision with other inner class name */
            public class C0107do extends com.google.common.collect.Cfor<Map.Entry<n2<K>, V>> {

                /* renamed from: for, reason: not valid java name */
                public final /* synthetic */ Iterator f14676for;

                public C0107do(Iterator it) {
                    this.f14676for = it;
                }

                @Override // com.google.common.collect.Cfor
                /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
                public Map.Entry<n2<K>, V> mo15521do() {
                    if (!this.f14676for.hasNext()) {
                        return (Map.Entry) m15805if();
                    }
                    Cfor cfor = (Cfor) this.f14676for.next();
                    return cfor.m16358new().compareTo((a) Cnew.this.f14673do.lowerBound) <= 0 ? (Map.Entry) m15805if() : Maps.b(cfor.getKey().intersection(Cnew.this.f14673do), cfor.getValue());
                }
            }

            public Cdo() {
                super();
            }

            @Override // com.google.common.collect.t3.Cnew.Cif
            /* renamed from: if, reason: not valid java name */
            public Iterator<Map.Entry<n2<K>, V>> mo16360if() {
                return Cnew.this.f14673do.isEmpty() ? s1.m16240return() : new C0107do(t3.this.f14668do.headMap(Cnew.this.f14673do.upperBound, false).descendingMap().values().iterator());
            }
        }

        /* renamed from: com.google.common.collect.t3$new$if, reason: invalid class name */
        public class Cif extends AbstractMap<n2<K>, V> {

            /* renamed from: com.google.common.collect.t3$new$if$do, reason: invalid class name */
            public class Cdo extends Maps.Cfinally<n2<K>, V> {
                public Cdo(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean remove(@b51 Object obj) {
                    return Cif.this.remove(obj) != null;
                }

                @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return Cif.this.m16363for(Cpublic.m15169goto(Cpublic.m15182while(Cpublic.m15167final(collection)), Maps.e()));
                }
            }

            /* renamed from: com.google.common.collect.t3$new$if$for, reason: invalid class name */
            public class Cfor extends com.google.common.collect.Cfor<Map.Entry<n2<K>, V>> {

                /* renamed from: for, reason: not valid java name */
                public final /* synthetic */ Iterator f14680for;

                public Cfor(Iterator it) {
                    this.f14680for = it;
                }

                @Override // com.google.common.collect.Cfor
                /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
                public Map.Entry<n2<K>, V> mo15521do() {
                    while (this.f14680for.hasNext()) {
                        Cfor cfor = (Cfor) this.f14680for.next();
                        if (cfor.m16356for().compareTo((a) Cnew.this.f14673do.upperBound) >= 0) {
                            return (Map.Entry) m15805if();
                        }
                        if (cfor.m16358new().compareTo((a) Cnew.this.f14673do.lowerBound) > 0) {
                            return Maps.b(cfor.getKey().intersection(Cnew.this.f14673do), cfor.getValue());
                        }
                    }
                    return (Map.Entry) m15805if();
                }
            }

            /* renamed from: com.google.common.collect.t3$new$if$if, reason: invalid class name and collision with other inner class name */
            public class C0108if extends Maps.Cnative<n2<K>, V> {
                public C0108if() {
                }

                @Override // com.google.common.collect.Maps.Cnative
                /* renamed from: do */
                public Map<n2<K>, V> mo15461do() {
                    return Cif.this;
                }

                @Override // com.google.common.collect.Maps.Cnative, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean isEmpty() {
                    return !iterator().hasNext();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<Map.Entry<n2<K>, V>> iterator() {
                    return Cif.this.mo16360if();
                }

                @Override // com.google.common.collect.Maps.Cnative, com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return Cif.this.m16363for(Cpublic.m15182while(Cpublic.m15167final(collection)));
                }

                @Override // com.google.common.collect.Maps.Cnative, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return s1.m(iterator());
                }
            }

            /* renamed from: com.google.common.collect.t3$new$if$new, reason: invalid class name and collision with other inner class name */
            public class C0109new extends Maps.c<n2<K>, V> {
                public C0109new(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
                public boolean removeAll(Collection<?> collection) {
                    return Cif.this.m16363for(Cpublic.m15169goto(Cpublic.m15167final(collection), Maps.a0()));
                }

                @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
                public boolean retainAll(Collection<?> collection) {
                    return Cif.this.m16363for(Cpublic.m15169goto(Cpublic.m15182while(Cpublic.m15167final(collection)), Maps.a0()));
                }
            }

            public Cif() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: for, reason: not valid java name */
            public boolean m16363for(Predicate<? super Map.Entry<n2<K>, V>> predicate) {
                ArrayList arrayListM16520while = x1.m16520while();
                for (Map.Entry<n2<K>, V> entry : entrySet()) {
                    if (predicate.apply(entry)) {
                        arrayListM16520while.add(entry.getKey());
                    }
                }
                Iterator it = arrayListM16520while.iterator();
                while (it.hasNext()) {
                    t3.this.remove((n2) it.next());
                }
                return !arrayListM16520while.isEmpty();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public void clear() {
                Cnew.this.clear();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public boolean containsKey(Object obj) {
                return get(obj) != null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Map.Entry<n2<K>, V>> entrySet() {
                return new C0108if();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V get(Object obj) {
                Cfor cfor;
                try {
                    if (obj instanceof n2) {
                        n2 n2Var = (n2) obj;
                        if (Cnew.this.f14673do.encloses(n2Var) && !n2Var.isEmpty()) {
                            if (n2Var.lowerBound.compareTo((a) Cnew.this.f14673do.lowerBound) == 0) {
                                Map.Entry entryFloorEntry = t3.this.f14668do.floorEntry(n2Var.lowerBound);
                                cfor = entryFloorEntry != null ? (Cfor) entryFloorEntry.getValue() : null;
                            } else {
                                cfor = (Cfor) t3.this.f14668do.get(n2Var.lowerBound);
                            }
                            if (cfor != null && cfor.getKey().isConnected(Cnew.this.f14673do) && cfor.getKey().intersection(Cnew.this.f14673do).equals(n2Var)) {
                                return (V) cfor.getValue();
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            /* renamed from: if */
            public Iterator<Map.Entry<n2<K>, V>> mo16360if() {
                if (Cnew.this.f14673do.isEmpty()) {
                    return s1.m16240return();
                }
                return new Cfor(t3.this.f14668do.tailMap((a) Csuper.m15183do(t3.this.f14668do.floorKey(Cnew.this.f14673do.lowerBound), Cnew.this.f14673do.lowerBound), true).values().iterator());
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<n2<K>> keySet() {
                return new Cdo(this);
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V remove(Object obj) {
                V v = (V) get(obj);
                if (v == null) {
                    return null;
                }
                t3.this.remove((n2) obj);
                return v;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Collection<V> values() {
                return new C0109new(this);
            }
        }

        public Cnew(n2<K> n2Var) {
            this.f14673do = n2Var;
        }

        @Override // com.google.common.collect.RangeMap
        public Map<n2<K>, V> asDescendingMapOfRanges() {
            return new Cdo();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<n2<K>, V> asMapOfRanges() {
            return new Cif();
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
            t3.this.remove(this.f14673do);
        }

        @Override // com.google.common.collect.RangeMap
        public boolean equals(@b51 Object obj) {
            if (obj instanceof RangeMap) {
                return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
            }
            return false;
        }

        @Override // com.google.common.collect.RangeMap
        @b51
        public V get(K k) {
            if (this.f14673do.contains(k)) {
                return (V) t3.this.get(k);
            }
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @b51
        public Map.Entry<n2<K>, V> getEntry(K k) {
            Map.Entry<n2<K>, V> entry;
            if (!this.f14673do.contains(k) || (entry = t3.this.getEntry(k)) == null) {
                return null;
            }
            return Maps.b(entry.getKey().intersection(this.f14673do), entry.getValue());
        }

        @Override // com.google.common.collect.RangeMap
        public int hashCode() {
            return asMapOfRanges().hashCode();
        }

        @Override // com.google.common.collect.RangeMap
        public void put(n2<K> n2Var, V v) {
            af1.m206default(this.f14673do.encloses(n2Var), "Cannot put range %s into a subRangeMap(%s)", n2Var, this.f14673do);
            t3.this.put(n2Var, v);
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap<K, V> rangeMap) {
            if (rangeMap.asMapOfRanges().isEmpty()) {
                return;
            }
            n2<K> n2VarSpan = rangeMap.span();
            af1.m206default(this.f14673do.encloses(n2VarSpan), "Cannot putAll rangeMap with span %s into a subRangeMap(%s)", n2VarSpan, this.f14673do);
            t3.this.putAll(rangeMap);
        }

        @Override // com.google.common.collect.RangeMap
        public void putCoalescing(n2<K> n2Var, V v) {
            if (t3.this.f14668do.isEmpty() || n2Var.isEmpty() || !this.f14673do.encloses(n2Var)) {
                put(n2Var, v);
            } else {
                put(t3.this.m16354try(n2Var, af1.m205continue(v)).intersection(this.f14673do), v);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.RangeMap
        public void remove(n2<K> n2Var) {
            if (n2Var.isConnected(this.f14673do)) {
                t3.this.remove(n2Var.intersection(this.f14673do));
            }
        }

        @Override // com.google.common.collect.RangeMap
        public n2<K> span() {
            a aVar;
            Map.Entry entryFloorEntry = t3.this.f14668do.floorEntry(this.f14673do.lowerBound);
            if (entryFloorEntry == null || ((Cfor) entryFloorEntry.getValue()).m16358new().compareTo((a) this.f14673do.lowerBound) <= 0) {
                aVar = (a) t3.this.f14668do.ceilingKey(this.f14673do.lowerBound);
                if (aVar == null || aVar.compareTo((a) this.f14673do.upperBound) >= 0) {
                    throw new NoSuchElementException();
                }
            } else {
                aVar = this.f14673do.lowerBound;
            }
            Map.Entry entryLowerEntry = t3.this.f14668do.lowerEntry(this.f14673do.upperBound);
            if (entryLowerEntry != null) {
                return n2.create(aVar, ((Cfor) entryLowerEntry.getValue()).m16358new().compareTo((a) this.f14673do.upperBound) >= 0 ? this.f14673do.upperBound : ((Cfor) entryLowerEntry.getValue()).m16358new());
            }
            throw new NoSuchElementException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.RangeMap
        public RangeMap<K, V> subRangeMap(n2<K> n2Var) {
            return !n2Var.isConnected(this.f14673do) ? t3.this.m16349else() : t3.this.subRangeMap(n2Var.intersection(this.f14673do));
        }

        @Override // com.google.common.collect.RangeMap
        public String toString() {
            return asMapOfRanges().toString();
        }
    }

    private t3() {
    }

    /* renamed from: case, reason: not valid java name */
    public static <K extends Comparable, V> t3<K, V> m16347case() {
        return new t3<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public RangeMap<K, V> m16349else() {
        return f14667if;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m16351goto(a<K> aVar, a<K> aVar2, V v) {
        this.f14668do.put(aVar, new Cfor(aVar, aVar2, v));
    }

    /* renamed from: new, reason: not valid java name */
    private static <K extends Comparable, V> n2<K> m16353new(n2<K> n2Var, V v, @b51 Map.Entry<a<K>, Cfor<K, V>> entry) {
        return (entry != null && entry.getValue().getKey().isConnected(n2Var) && entry.getValue().getValue().equals(v)) ? (n2<K>) n2Var.span(entry.getValue().getKey()) : n2Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public n2<K> m16354try(n2<K> n2Var, V v) {
        return m16353new(m16353new(n2Var, v, this.f14668do.lowerEntry(n2Var.lowerBound)), v, this.f14668do.floorEntry(n2Var.upperBound));
    }

    @Override // com.google.common.collect.RangeMap
    public Map<n2<K>, V> asDescendingMapOfRanges() {
        return new Cif(this.f14668do.descendingMap().values());
    }

    @Override // com.google.common.collect.RangeMap
    public Map<n2<K>, V> asMapOfRanges() {
        return new Cif(this.f14668do.values());
    }

    @Override // com.google.common.collect.RangeMap
    public void clear() {
        this.f14668do.clear();
    }

    @Override // com.google.common.collect.RangeMap
    public boolean equals(@b51 Object obj) {
        if (obj instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.RangeMap
    @b51
    public V get(K k) {
        Map.Entry<n2<K>, V> entry = getEntry(k);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    @b51
    public Map.Entry<n2<K>, V> getEntry(K k) {
        Map.Entry<a<K>, Cfor<K, V>> entryFloorEntry = this.f14668do.floorEntry(a.belowValue(k));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().m16355do(k)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeMap
    public void put(n2<K> n2Var, V v) {
        if (n2Var.isEmpty()) {
            return;
        }
        af1.m205continue(v);
        remove(n2Var);
        this.f14668do.put(n2Var.lowerBound, new Cfor(n2Var, v));
    }

    @Override // com.google.common.collect.RangeMap
    public void putAll(RangeMap<K, V> rangeMap) {
        for (Map.Entry<n2<K>, V> entry : rangeMap.asMapOfRanges().entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeMap
    public void putCoalescing(n2<K> n2Var, V v) {
        if (this.f14668do.isEmpty()) {
            put(n2Var, v);
        } else {
            put(m16354try(n2Var, af1.m205continue(v)), v);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeMap
    public void remove(n2<K> n2Var) {
        if (n2Var.isEmpty()) {
            return;
        }
        Map.Entry entryLowerEntry = this.f14668do.lowerEntry(n2Var.lowerBound);
        if (entryLowerEntry != null) {
            Cfor cfor = (Cfor) entryLowerEntry.getValue();
            if (cfor.m16358new().compareTo((a) n2Var.lowerBound) > 0) {
                if (cfor.m16358new().compareTo((a) n2Var.upperBound) > 0) {
                    m16351goto(n2Var.upperBound, cfor.m16358new(), ((Cfor) entryLowerEntry.getValue()).getValue());
                }
                m16351goto(cfor.m16356for(), n2Var.lowerBound, ((Cfor) entryLowerEntry.getValue()).getValue());
            }
        }
        Map.Entry entryLowerEntry2 = this.f14668do.lowerEntry(n2Var.upperBound);
        if (entryLowerEntry2 != null) {
            Cfor cfor2 = (Cfor) entryLowerEntry2.getValue();
            if (cfor2.m16358new().compareTo((a) n2Var.upperBound) > 0) {
                m16351goto(n2Var.upperBound, cfor2.m16358new(), ((Cfor) entryLowerEntry2.getValue()).getValue());
            }
        }
        this.f14668do.subMap(n2Var.lowerBound, n2Var.upperBound).clear();
    }

    @Override // com.google.common.collect.RangeMap
    public n2<K> span() {
        Map.Entry<a<K>, Cfor<K, V>> entryFirstEntry = this.f14668do.firstEntry();
        Map.Entry<a<K>, Cfor<K, V>> entryLastEntry = this.f14668do.lastEntry();
        if (entryFirstEntry != null) {
            return n2.create(entryFirstEntry.getValue().getKey().lowerBound, entryLastEntry.getValue().getKey().upperBound);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.RangeMap
    public RangeMap<K, V> subRangeMap(n2<K> n2Var) {
        return n2Var.equals(n2.all()) ? this : new Cnew(n2Var);
    }

    @Override // com.google.common.collect.RangeMap
    public String toString() {
        return this.f14668do.values().toString();
    }
}
