package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;

@ki0(serializable = true)
/* loaded from: classes2.dex */
public class q3<R, C, V> extends j3<R, C, V> {
    private static final long serialVersionUID = 0;
    private final Comparator<? super C> columnComparator;

    /* renamed from: com.google.common.collect.q3$do, reason: invalid class name */
    public class Cdo implements Function<Map<C, V>, Iterator<C>> {
        public Cdo() {
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Iterator<C> apply(Map<C, V> map) {
            return map.keySet().iterator();
        }
    }

    /* renamed from: com.google.common.collect.q3$for, reason: invalid class name */
    public static class Cfor<C, V> implements Supplier<TreeMap<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        public final Comparator<? super C> comparator;

        public Cfor(Comparator<? super C> comparator) {
            this.comparator = comparator;
        }

        @Override // com.google.common.base.Supplier
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.comparator);
        }
    }

    /* renamed from: com.google.common.collect.q3$if, reason: invalid class name */
    public class Cif extends com.google.common.collect.Cfor<C> {

        /* renamed from: for, reason: not valid java name */
        @b51
        public C f14547for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Iterator f14548new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Comparator f14549try;

        public Cif(Iterator it, Comparator comparator) {
            this.f14548new = it;
            this.f14549try = comparator;
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: do */
        public C mo15521do() {
            while (this.f14548new.hasNext()) {
                C c = (C) this.f14548new.next();
                C c2 = this.f14547for;
                if (!(c2 != null && this.f14549try.compare(c, c2) == 0)) {
                    this.f14547for = c;
                    return c;
                }
            }
            this.f14547for = null;
            return m15805if();
        }
    }

    /* renamed from: com.google.common.collect.q3$new, reason: invalid class name */
    public class Cnew extends k3<R, C, V>.Celse implements SortedMap<C, V> {

        /* renamed from: case, reason: not valid java name */
        @b51
        public transient SortedMap<C, V> f14550case;

        /* renamed from: new, reason: not valid java name */
        @b51
        public final C f14552new;

        /* renamed from: try, reason: not valid java name */
        @b51
        public final C f14553try;

        public Cnew(q3 q3Var, R r) {
            this(r, null, null);
        }

        /* renamed from: break, reason: not valid java name */
        public boolean m16165break(@b51 Object obj) {
            C c;
            C c2;
            return obj != null && ((c = this.f14552new) == null || m16168else(c, obj) <= 0) && ((c2 = this.f14553try) == null || m16168else(c2, obj) > 0);
        }

        @Override // com.google.common.collect.k3.Celse
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedMap<C, V> mo15971if() {
            return (SortedMap) super.mo15971if();
        }

        /* renamed from: catch, reason: not valid java name */
        public SortedMap<C, V> m16167catch() {
            SortedMap<C, V> sortedMap = this.f14550case;
            if (sortedMap == null || (sortedMap.isEmpty() && q3.this.backingMap.containsKey(this.f14404do))) {
                this.f14550case = (SortedMap) q3.this.backingMap.get(this.f14404do);
            }
            return this.f14550case;
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return q3.this.columnComparator();
        }

        @Override // com.google.common.collect.k3.Celse, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return m16165break(obj) && super.containsKey(obj);
        }

        /* renamed from: else, reason: not valid java name */
        public int m16168else(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            if (mo15971if() != null) {
                return mo15971if().firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.k3.Celse
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedMap<C, V> mo15970for() {
            SortedMap<C, V> sortedMapM16167catch = m16167catch();
            if (sortedMapM16167catch == null) {
                return null;
            }
            C c = this.f14552new;
            if (c != null) {
                sortedMapM16167catch = sortedMapM16167catch.tailMap(c);
            }
            C c2 = this.f14553try;
            return c2 != null ? sortedMapM16167catch.headMap(c2) : sortedMapM16167catch;
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c) {
            af1.m220new(m16165break(af1.m205continue(c)));
            return new Cnew(this.f14404do, this.f14552new, c);
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            if (mo15971if() != null) {
                return mo15971if().lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.k3.Celse
        /* renamed from: new */
        public void mo15972new() {
            if (m16167catch() == null || !this.f14550case.isEmpty()) {
                return;
            }
            q3.this.backingMap.remove(this.f14404do);
            this.f14550case = null;
            this.f14406if = null;
        }

        @Override // com.google.common.collect.k3.Celse, java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            af1.m220new(m16165break(af1.m205continue(c)));
            return (V) super.put(c, v);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c, C c2) {
            af1.m220new(m16165break(af1.m205continue(c)) && m16165break(af1.m205continue(c2)));
            return new Cnew(this.f14404do, c, c2);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c) {
            af1.m220new(m16165break(af1.m205continue(c)));
            return new Cnew(this.f14404do, c, this.f14553try);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedSet<C> keySet() {
            return new Maps.Cstrictfp(this);
        }

        public Cnew(R r, @b51 C c, @b51 C c2) {
            super(r);
            this.f14552new = c;
            this.f14553try = c2;
            af1.m220new(c == null || c2 == null || m16168else(c, c2) <= 0);
        }
    }

    public q3(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new Cfor(comparator2));
        this.columnComparator = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> q3<R, C, V> create() {
        return new q3<>(k2.natural(), k2.natural());
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.columnComparator;
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean contains(@b51 Object obj, @b51 Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@b51 Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@b51 Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsValue(@b51 Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.k3
    public Iterator<C> createColumnKeyIterator() {
        Comparator<? super C> comparatorColumnComparator = columnComparator();
        return new Cif(s1.b(r1.h(this.backingMap.values(), new Cdo()), comparatorColumnComparator), comparatorColumnComparator);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object get(@b51 Object obj, @b51 Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void putAll(Table table) {
        super.putAll(table);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    public /* bridge */ /* synthetic */ Object remove(@b51 Object obj, @b51 Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((q3<R, C, V>) obj);
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        return rowKeySet().comparator();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.Cthrow
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <R, C, V> q3<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        af1.m205continue(comparator);
        af1.m205continue(comparator2);
        return new q3<>(comparator, comparator2);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public SortedMap<C, V> row(R r) {
        return new Cnew(this, r);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.k3, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    public static <R, C, V> q3<R, C, V> create(q3<R, C, ? extends V> q3Var) {
        q3<R, C, V> q3Var2 = new q3<>(q3Var.rowComparator(), q3Var.columnComparator());
        q3Var2.putAll(q3Var);
        return q3Var2;
    }
}
