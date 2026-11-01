package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import com.google.common.collect.Table;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ki0
/* renamed from: com.google.common.collect.throw, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cthrow<R, C, V> implements Table<R, C, V> {

    /* renamed from: do, reason: not valid java name */
    @fs0
    @l01
    private transient Set<Table.Cell<R, C, V>> f14688do;

    /* renamed from: if, reason: not valid java name */
    @fs0
    @l01
    private transient Collection<V> f14689if;

    /* renamed from: com.google.common.collect.throw$do, reason: invalid class name */
    public class Cdo extends o3<Table.Cell<R, C, V>, V> {
        public Cdo(Iterator it) {
            super(it);
        }

        @Override // com.google.common.collect.o3
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public V mo15451do(Table.Cell<R, C, V> cell) {
            return cell.getValue();
        }
    }

    /* renamed from: com.google.common.collect.throw$for, reason: invalid class name */
    public class Cfor extends AbstractCollection<V> {
        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Cthrow.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return Cthrow.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Cthrow.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return Cthrow.this.size();
        }
    }

    /* renamed from: com.google.common.collect.throw$if, reason: invalid class name */
    public class Cif extends AbstractSet<Table.Cell<R, C, V>> {
        public Cif() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Cthrow.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Map map = (Map) Maps.C(Cthrow.this.rowMap(), cell.getRowKey());
            return map != null && Cextends.m15763catch(map.entrySet(), Maps.b(cell.getColumnKey(), cell.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Table.Cell<R, C, V>> iterator() {
            return Cthrow.this.cellIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@b51 Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Map map = (Map) Maps.C(Cthrow.this.rowMap(), cell.getRowKey());
            return map != null && Cextends.m15764class(map.entrySet(), Maps.b(cell.getColumnKey(), cell.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cthrow.this.size();
        }
    }

    public abstract Iterator<Table.Cell<R, C, V>> cellIterator();

    @Override // com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        Set<Table.Cell<R, C, V>> set = this.f14688do;
        if (set != null) {
            return set;
        }
        Set<Table.Cell<R, C, V>> setCreateCellSet = createCellSet();
        this.f14688do = setCreateCellSet;
        return setCreateCellSet;
    }

    @Override // com.google.common.collect.Table
    public void clear() {
        s1.m16228goto(cellSet().iterator());
    }

    @Override // com.google.common.collect.Table
    public Set<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public boolean contains(@b51 Object obj, @b51 Object obj2) {
        Map map = (Map) Maps.C(rowMap(), obj);
        return map != null && Maps.B(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public boolean containsColumn(@b51 Object obj) {
        return Maps.B(columnMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public boolean containsRow(@b51 Object obj) {
        return Maps.B(rowMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public boolean containsValue(@b51 Object obj) {
        Iterator<Map<C, V>> it = rowMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public Set<Table.Cell<R, C, V>> createCellSet() {
        return new Cif();
    }

    public Collection<V> createValues() {
        return new Cfor();
    }

    @Override // com.google.common.collect.Table
    public boolean equals(@b51 Object obj) {
        return m3.m16063if(this, obj);
    }

    @Override // com.google.common.collect.Table
    public V get(@b51 Object obj, @b51 Object obj2) {
        Map map = (Map) Maps.C(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.C(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public int hashCode() {
        return cellSet().hashCode();
    }

    @Override // com.google.common.collect.Table
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Table
    @lf
    public V put(R r, C c, V v) {
        return row(r).put(c, v);
    }

    @Override // com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        for (Table.Cell<? extends R, ? extends C, ? extends V> cell : table.cellSet()) {
            put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
        }
    }

    @Override // com.google.common.collect.Table
    @lf
    public V remove(@b51 Object obj, @b51 Object obj2) {
        Map map = (Map) Maps.C(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.D(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    public String toString() {
        return rowMap().toString();
    }

    @Override // com.google.common.collect.Table
    public Collection<V> values() {
        Collection<V> collection = this.f14689if;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.f14689if = collectionCreateValues;
        return collectionCreateValues;
    }

    public Iterator<V> valuesIterator() {
        return new Cdo(cellSet().iterator());
    }
}
