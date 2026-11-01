package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.v10;
import com.google.common.base.Csuper;
import com.google.common.collect.Table;
import com.google.common.collect.m3;
import com.google.common.collect.v0;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

@ki0
/* loaded from: classes2.dex */
public abstract class o1<R, C, V> extends Cthrow<R, C, V> implements Serializable {

    @v10
    /* renamed from: com.google.common.collect.o1$do, reason: invalid class name */
    public static final class Cdo<R, C, V> {

        /* renamed from: do, reason: not valid java name */
        private final List<Table.Cell<R, C, V>> f14489do = x1.m16520while();

        /* renamed from: for, reason: not valid java name */
        @l01
        private Comparator<? super C> f14490for;

        /* renamed from: if, reason: not valid java name */
        @l01
        private Comparator<? super R> f14491if;

        @lf
        /* renamed from: case, reason: not valid java name */
        public Cdo<R, C, V> m16104case(Table<? extends R, ? extends C, ? extends V> table) {
            Iterator<Table.Cell<? extends R, ? extends C, ? extends V>> it = table.cellSet().iterator();
            while (it.hasNext()) {
                m16108new(it.next());
            }
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public o1<R, C, V> m16105do() {
            int size = this.f14489do.size();
            return size != 0 ? size != 1 ? y2.forCells(this.f14489do, this.f14491if, this.f14490for) : new e3((Table.Cell) r1.m16184extends(this.f14489do)) : o1.of();
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public Cdo<R, C, V> m16106for(Comparator<? super R> comparator) {
            this.f14491if = (Comparator) af1.m227strictfp(comparator, "rowComparator");
            return this;
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cdo<R, C, V> m16107if(Comparator<? super C> comparator) {
            this.f14490for = (Comparator) af1.m227strictfp(comparator, "columnComparator");
            return this;
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public Cdo<R, C, V> m16108new(Table.Cell<? extends R, ? extends C, ? extends V> cell) {
            if (cell instanceof m3.Cfor) {
                af1.m227strictfp(cell.getRowKey(), "row");
                af1.m227strictfp(cell.getColumnKey(), "column");
                af1.m227strictfp(cell.getValue(), ES6Iterator.VALUE_PROPERTY);
                this.f14489do.add(cell);
            } else {
                m16109try(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            }
            return this;
        }

        @lf
        /* renamed from: try, reason: not valid java name */
        public Cdo<R, C, V> m16109try(R r, C c, V v) {
            this.f14489do.add(o1.cellOf(r, c, v));
            return this;
        }
    }

    /* renamed from: com.google.common.collect.o1$if, reason: invalid class name */
    public static final class Cif implements Serializable {
        private static final long serialVersionUID = 0;
        private final int[] cellColumnIndices;
        private final int[] cellRowIndices;
        private final Object[] cellValues;
        private final Object[] columnKeys;
        private final Object[] rowKeys;

        private Cif(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.rowKeys = objArr;
            this.columnKeys = objArr2;
            this.cellValues = objArr3;
            this.cellRowIndices = iArr;
            this.cellColumnIndices = iArr2;
        }

        public static Cif create(o1<?, ?, ?> o1Var, int[] iArr, int[] iArr2) {
            return new Cif(o1Var.rowKeySet().toArray(), o1Var.columnKeySet().toArray(), o1Var.values().toArray(), iArr, iArr2);
        }

        public Object readResolve() {
            Object[] objArr = this.cellValues;
            if (objArr.length == 0) {
                return o1.of();
            }
            int i = 0;
            if (objArr.length == 1) {
                return o1.of(this.rowKeys[0], this.columnKeys[0], objArr[0]);
            }
            v0.Cdo cdo = new v0.Cdo(objArr.length);
            while (true) {
                Object[] objArr2 = this.cellValues;
                if (i >= objArr2.length) {
                    return y2.forOrderedComponents(cdo.mo15642try(), g1.copyOf(this.rowKeys), g1.copyOf(this.columnKeys));
                }
                cdo.mo15635do(o1.cellOf(this.rowKeys[this.cellRowIndices[i]], this.columnKeys[this.cellColumnIndices[i]], objArr2[i]));
                i++;
            }
        }
    }

    public static <R, C, V> Cdo<R, C, V> builder() {
        return new Cdo<>();
    }

    public static <R, C, V> Table.Cell<R, C, V> cellOf(R r, C c, V v) {
        return m3.m16061for(af1.m227strictfp(r, "rowKey"), af1.m227strictfp(c, "columnKey"), af1.m227strictfp(v, ES6Iterator.VALUE_PROPERTY));
    }

    public static <R, C, V> o1<R, C, V> copyOf(Table<? extends R, ? extends C, ? extends V> table) {
        return table instanceof o1 ? (o1) table : m16103do(table.cellSet());
    }

    /* renamed from: do, reason: not valid java name */
    private static <R, C, V> o1<R, C, V> m16103do(Iterable<? extends Table.Cell<? extends R, ? extends C, ? extends V>> iterable) {
        Cdo cdoBuilder = builder();
        Iterator<? extends Table.Cell<? extends R, ? extends C, ? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            cdoBuilder.m16108new(it.next());
        }
        return cdoBuilder.m16105do();
    }

    public static <R, C, V> o1<R, C, V> of() {
        return (o1<R, C, V>) i3.EMPTY;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((o1<R, C, V>) obj);
    }

    @Override // com.google.common.collect.Table
    public abstract x0<C, Map<R, V>> columnMap();

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean contains(@b51 Object obj, @b51 Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@b51 Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@b51 Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsValue(@b51 Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.Cthrow
    public abstract g1<Table.Cell<R, C, V>> createCellSet();

    public abstract Cif createSerializedForm();

    @Override // com.google.common.collect.Cthrow
    public abstract r0<V> createValues();

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object get(@b51 Object obj, @b51 Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    @Deprecated
    public final V put(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @Deprecated
    public final void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((o1<R, C, V>) obj);
    }

    @Override // com.google.common.collect.Table
    public abstract x0<R, Map<C, V>> rowMap();

    @Override // com.google.common.collect.Cthrow
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.Cthrow
    public final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    public final Object writeReplace() {
        return createSerializedForm();
    }

    public static <R, C, V> o1<R, C, V> of(R r, C c, V v) {
        return new e3(r, c, v);
    }

    @Override // com.google.common.collect.Cthrow
    public final ac2<Table.Cell<R, C, V>> cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public g1<Table.Cell<R, C, V>> cellSet() {
        return (g1) super.cellSet();
    }

    @Override // com.google.common.collect.Table
    public x0<R, V> column(C c) {
        af1.m227strictfp(c, "columnKey");
        return (x0) Csuper.m15183do((x0) columnMap().get(c), x0.of());
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public g1<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public x0<C, V> row(R r) {
        af1.m227strictfp(r, "rowKey");
        return (x0) Csuper.m15183do((x0) rowMap().get(r), x0.of());
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public g1<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public r0<V> values() {
        return (r0) super.values();
    }
}
