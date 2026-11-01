package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.common.collect.Table;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
public final class m3 {

    /* renamed from: do, reason: not valid java name */
    private static final Function<? extends Map<?, ?>, ? extends Map<?, ?>> f14455do = new Cdo();

    /* renamed from: com.google.common.collect.m3$case, reason: invalid class name */
    public static final class Ccase<R, C, V> extends Celse<R, C, V> implements RowSortedTable<R, C, V> {
        private static final long serialVersionUID = 0;

        public Ccase(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
            super(rowSortedTable);
        }

        @Override // com.google.common.collect.m3.Celse, com.google.common.collect.f0, com.google.common.collect.Table
        public SortedSet<R> rowKeySet() {
            return Collections.unmodifiableSortedSet(delegate().rowKeySet());
        }

        @Override // com.google.common.collect.m3.Celse, com.google.common.collect.f0, com.google.common.collect.Table
        public SortedMap<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableSortedMap(Maps.Q(delegate().rowMap(), m3.m16057break()));
        }

        @Override // com.google.common.collect.m3.Celse, com.google.common.collect.f0, android.support.v4.ae0
        public RowSortedTable<R, C, V> delegate() {
            return (RowSortedTable) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.m3$do, reason: invalid class name */
    public static class Cdo implements Function<Map<Object, Object>, Map<Object, Object>> {
        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    /* renamed from: com.google.common.collect.m3$else, reason: invalid class name */
    public static class Celse<R, C, V> extends f0<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;
        public final Table<? extends R, ? extends C, ? extends V> delegate;

        public Celse(Table<? extends R, ? extends C, ? extends V> table) {
            this.delegate = (Table) af1.m205continue(table);
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Set<Table.Cell<R, C, V>> cellSet() {
            return Collections.unmodifiableSet(super.cellSet());
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Map<R, V> column(@b51 C c) {
            return Collections.unmodifiableMap(super.column(c));
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return Collections.unmodifiableSet(super.columnKeySet());
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Map<C, Map<R, V>> columnMap() {
            return Collections.unmodifiableMap(Maps.O(super.columnMap(), m3.m16057break()));
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public V put(@b51 R r, @b51 C c, @b51 V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public V remove(@b51 Object obj, @b51 Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Map<C, V> row(@b51 R r) {
            return Collections.unmodifiableMap(super.row(r));
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return Collections.unmodifiableSet(super.rowKeySet());
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Map<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableMap(Maps.O(super.rowMap(), m3.m16057break()));
        }

        @Override // com.google.common.collect.f0, com.google.common.collect.Table
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }

        @Override // com.google.common.collect.f0, android.support.v4.ae0
        public Table<R, C, V> delegate() {
            return this.delegate;
        }
    }

    /* renamed from: com.google.common.collect.m3$for, reason: invalid class name */
    public static final class Cfor<R, C, V> extends Cif<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;

        @b51
        private final C columnKey;

        @b51
        private final R rowKey;

        @b51
        private final V value;

        public Cfor(@b51 R r, @b51 C c, @b51 V v) {
            this.rowKey = r;
            this.columnKey = c;
            this.value = v;
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return this.columnKey;
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return this.rowKey;
        }

        @Override // com.google.common.collect.Table.Cell
        public V getValue() {
            return this.value;
        }
    }

    /* renamed from: com.google.common.collect.m3$if, reason: invalid class name */
    public static abstract class Cif<R, C, V> implements Table.Cell<R, C, V> {
        @Override // com.google.common.collect.Table.Cell
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            return Cthrow.m15205do(getRowKey(), cell.getRowKey()) && Cthrow.m15205do(getColumnKey(), cell.getColumnKey()) && Cthrow.m15205do(getValue(), cell.getValue());
        }

        @Override // com.google.common.collect.Table.Cell
        public int hashCode() {
            return Cthrow.m15206if(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            return "(" + getRowKey() + "," + getColumnKey() + ")=" + getValue();
        }
    }

    /* renamed from: com.google.common.collect.m3$new, reason: invalid class name */
    public static class Cnew<R, C, V1, V2> extends Cthrow<R, C, V2> {

        /* renamed from: for, reason: not valid java name */
        public final Table<R, C, V1> f14456for;

        /* renamed from: new, reason: not valid java name */
        public final Function<? super V1, V2> f14457new;

        /* renamed from: com.google.common.collect.m3$new$do, reason: invalid class name */
        public class Cdo implements Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>> {
            public Cdo() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Table.Cell<R, C, V2> apply(Table.Cell<R, C, V1> cell) {
                return m3.m16061for(cell.getRowKey(), cell.getColumnKey(), Cnew.this.f14457new.apply(cell.getValue()));
            }
        }

        /* renamed from: com.google.common.collect.m3$new$for, reason: invalid class name */
        public class Cfor implements Function<Map<R, V1>, Map<R, V2>> {
            public Cfor() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map<R, V2> apply(Map<R, V1> map) {
                return Maps.O(map, Cnew.this.f14457new);
            }
        }

        /* renamed from: com.google.common.collect.m3$new$if, reason: invalid class name */
        public class Cif implements Function<Map<C, V1>, Map<C, V2>> {
            public Cif() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map<C, V2> apply(Map<C, V1> map) {
                return Maps.O(map, Cnew.this.f14457new);
            }
        }

        public Cnew(Table<R, C, V1> table, Function<? super V1, V2> function) {
            this.f14456for = (Table) af1.m205continue(table);
            this.f14457new = (Function) af1.m205continue(function);
        }

        @Override // com.google.common.collect.Cthrow
        public Iterator<Table.Cell<R, C, V2>> cellIterator() {
            return s1.p(this.f14456for.cellSet().iterator(), m16068do());
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public void clear() {
            this.f14456for.clear();
        }

        @Override // com.google.common.collect.Table
        public Map<R, V2> column(C c) {
            return Maps.O(this.f14456for.column(c), this.f14457new);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return this.f14456for.columnKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V2>> columnMap() {
            return Maps.O(this.f14456for.columnMap(), new Cfor());
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public boolean contains(Object obj, Object obj2) {
            return this.f14456for.contains(obj, obj2);
        }

        @Override // com.google.common.collect.Cthrow
        public Collection<V2> createValues() {
            return Cextends.m15768final(this.f14456for.values(), this.f14457new);
        }

        /* renamed from: do, reason: not valid java name */
        public Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>> m16068do() {
            return new Cdo();
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public V2 get(Object obj, Object obj2) {
            if (contains(obj, obj2)) {
                return this.f14457new.apply(this.f14456for.get(obj, obj2));
            }
            return null;
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public V2 put(R r, C c, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V2> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public V2 remove(Object obj, Object obj2) {
            if (contains(obj, obj2)) {
                return this.f14457new.apply(this.f14456for.remove(obj, obj2));
            }
            return null;
        }

        @Override // com.google.common.collect.Table
        public Map<C, V2> row(R r) {
            return Maps.O(this.f14456for.row(r), this.f14457new);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return this.f14456for.rowKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V2>> rowMap() {
            return Maps.O(this.f14456for.rowMap(), new Cif());
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.f14456for.size();
        }
    }

    /* renamed from: com.google.common.collect.m3$try, reason: invalid class name */
    public static class Ctry<C, R, V> extends Cthrow<C, R, V> {

        /* renamed from: new, reason: not valid java name */
        private static final Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> f14461new = new Cdo();

        /* renamed from: for, reason: not valid java name */
        public final Table<R, C, V> f14462for;

        /* renamed from: com.google.common.collect.m3$try$do, reason: invalid class name */
        public static class Cdo implements Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> {
            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Table.Cell<?, ?, ?> apply(Table.Cell<?, ?, ?> cell) {
                return m3.m16061for(cell.getColumnKey(), cell.getRowKey(), cell.getValue());
            }
        }

        public Ctry(Table<R, C, V> table) {
            this.f14462for = (Table) af1.m205continue(table);
        }

        @Override // com.google.common.collect.Cthrow
        public Iterator<Table.Cell<C, R, V>> cellIterator() {
            return s1.p(this.f14462for.cellSet().iterator(), f14461new);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public void clear() {
            this.f14462for.clear();
        }

        @Override // com.google.common.collect.Table
        public Map<C, V> column(R r) {
            return this.f14462for.row(r);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public Set<R> columnKeySet() {
            return this.f14462for.rowKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V>> columnMap() {
            return this.f14462for.rowMap();
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public boolean contains(@b51 Object obj, @b51 Object obj2) {
            return this.f14462for.contains(obj2, obj);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public boolean containsColumn(@b51 Object obj) {
            return this.f14462for.containsRow(obj);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public boolean containsRow(@b51 Object obj) {
            return this.f14462for.containsColumn(obj);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public boolean containsValue(@b51 Object obj) {
            return this.f14462for.containsValue(obj);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public V get(@b51 Object obj, @b51 Object obj2) {
            return this.f14462for.get(obj2, obj);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public V put(C c, R r, V v) {
            return this.f14462for.put(r, c, v);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public void putAll(Table<? extends C, ? extends R, ? extends V> table) {
            this.f14462for.putAll(m3.m16060else(table));
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public V remove(@b51 Object obj, @b51 Object obj2) {
            return this.f14462for.remove(obj2, obj);
        }

        @Override // com.google.common.collect.Table
        public Map<R, V> row(C c) {
            return this.f14462for.column(c);
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public Set<C> rowKeySet() {
            return this.f14462for.columnKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V>> rowMap() {
            return this.f14462for.columnMap();
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.f14462for.size();
        }

        @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
        public Collection<V> values() {
            return this.f14462for.values();
        }
    }

    private m3() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static <K, V> Function<Map<K, V>, Map<K, V>> m16057break() {
        return (Function<Map<K, V>, Map<K, V>>) f14455do;
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static <R, C, V1, V2> Table<R, C, V2> m16058case(Table<R, C, V1> table, Function<? super V1, V2> function) {
        return new Cnew(table, function);
    }

    /* renamed from: else, reason: not valid java name */
    public static <R, C, V> Table<C, R, V> m16060else(Table<R, C, V> table) {
        return table instanceof Ctry ? ((Ctry) table).f14462for : new Ctry(table);
    }

    /* renamed from: for, reason: not valid java name */
    public static <R, C, V> Table.Cell<R, C, V> m16061for(@b51 R r, @b51 C c, @b51 V v) {
        return new Cfor(r, c, v);
    }

    @o8
    /* renamed from: goto, reason: not valid java name */
    public static <R, C, V> RowSortedTable<R, C, V> m16062goto(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
        return new Ccase(rowSortedTable);
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m16063if(Table<?, ?, ?> table, @b51 Object obj) {
        if (obj == table) {
            return true;
        }
        if (obj instanceof Table) {
            return table.cellSet().equals(((Table) obj).cellSet());
        }
        return false;
    }

    @o8
    /* renamed from: new, reason: not valid java name */
    public static <R, C, V> Table<R, C, V> m16064new(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        af1.m220new(map.isEmpty());
        af1.m205continue(supplier);
        return new k3(map, supplier);
    }

    /* renamed from: this, reason: not valid java name */
    public static <R, C, V> Table<R, C, V> m16065this(Table<? extends R, ? extends C, ? extends V> table) {
        return new Celse(table);
    }

    /* renamed from: try, reason: not valid java name */
    public static <R, C, V> Table<R, C, V> m16066try(Table<R, C, V> table) {
        return l3.m16006extends(table, null);
    }
}
