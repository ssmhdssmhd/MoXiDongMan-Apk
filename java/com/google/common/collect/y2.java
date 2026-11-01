package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.collect.Table;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;

@ki0
/* loaded from: classes2.dex */
abstract class y2<R, C, V> extends o1<R, C, V> {

    /* renamed from: com.google.common.collect.y2$do, reason: invalid class name */
    public static class Cdo implements Comparator<Table.Cell<R, C, V>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f14881do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Comparator f14882if;

        public Cdo(Comparator comparator, Comparator comparator2) {
            this.f14881do = comparator;
            this.f14882if = comparator2;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Table.Cell<R, C, V> cell, Table.Cell<R, C, V> cell2) {
            Comparator comparator = this.f14881do;
            int iCompare = comparator == null ? 0 : comparator.compare(cell.getRowKey(), cell2.getRowKey());
            if (iCompare != 0) {
                return iCompare;
            }
            Comparator comparator2 = this.f14882if;
            if (comparator2 == null) {
                return 0;
            }
            return comparator2.compare(cell.getColumnKey(), cell2.getColumnKey());
        }
    }

    /* renamed from: com.google.common.collect.y2$for, reason: invalid class name */
    public final class Cfor extends v0<V> {
        private Cfor() {
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) y2.this.getValue(i);
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return y2.this.size();
        }

        public /* synthetic */ Cfor(y2 y2Var, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.collect.y2$if, reason: invalid class name */
    public final class Cif extends p1<Table.Cell<R, C, V>> {
        private Cif() {
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Object obj2 = y2.this.get(cell.getRowKey(), cell.getColumnKey());
            return obj2 != null && obj2.equals(cell.getValue());
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return y2.this.size();
        }

        public /* synthetic */ Cif(y2 y2Var, Cdo cdo) {
            this();
        }

        @Override // com.google.common.collect.p1
        public Table.Cell<R, C, V> get(int i) {
            return y2.this.getCell(i);
        }
    }

    public static <R, C, V> y2<R, C, V> forCells(List<Table.Cell<R, C, V>> list, @b51 Comparator<? super R> comparator, @b51 Comparator<? super C> comparator2) {
        af1.m205continue(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Cdo(comparator, comparator2));
        }
        return m16541if(list, comparator, comparator2);
    }

    public static <R, C, V> y2<R, C, V> forOrderedComponents(v0<Table.Cell<R, C, V>> v0Var, g1<R> g1Var, g1<C> g1Var2) {
        return ((long) v0Var.size()) > (((long) g1Var.size()) * ((long) g1Var2.size())) / 2 ? new b(v0Var, g1Var, g1Var2) : new i3(v0Var, g1Var, g1Var2);
    }

    /* renamed from: if, reason: not valid java name */
    private static <R, C, V> y2<R, C, V> m16541if(Iterable<Table.Cell<R, C, V>> iterable, @b51 Comparator<? super R> comparator, @b51 Comparator<? super C> comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        v0 v0VarCopyOf = v0.copyOf(iterable);
        for (Table.Cell<R, C, V> cell : iterable) {
            linkedHashSet.add(cell.getRowKey());
            linkedHashSet2.add(cell.getColumnKey());
        }
        return forOrderedComponents(v0VarCopyOf, comparator == null ? g1.copyOf((Collection) linkedHashSet) : g1.copyOf((Collection) v0.sortedCopyOf(comparator, linkedHashSet)), comparator2 == null ? g1.copyOf((Collection) linkedHashSet2) : g1.copyOf((Collection) v0.sortedCopyOf(comparator2, linkedHashSet2)));
    }

    public final void checkNoDuplicate(R r, C c, V v, V v2) {
        af1.m211finally(v == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r, c, v2, v);
    }

    public abstract Table.Cell<R, C, V> getCell(int i);

    public abstract V getValue(int i);

    @Override // com.google.common.collect.o1, com.google.common.collect.Cthrow
    public final g1<Table.Cell<R, C, V>> createCellSet() {
        return isEmpty() ? g1.of() : new Cif(this, null);
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Cthrow
    public final r0<V> createValues() {
        return isEmpty() ? v0.of() : new Cfor(this, null);
    }

    public static <R, C, V> y2<R, C, V> forCells(Iterable<Table.Cell<R, C, V>> iterable) {
        return m16541if(iterable, null, null);
    }
}
