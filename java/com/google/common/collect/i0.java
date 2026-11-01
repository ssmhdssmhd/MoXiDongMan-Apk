package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@ki0(serializable = true)
/* loaded from: classes2.dex */
public class i0<R, C, V> extends k3<R, C, V> {
    private static final long serialVersionUID = 0;

    /* renamed from: com.google.common.collect.i0$do, reason: invalid class name */
    public static class Cdo<C, V> implements Supplier<Map<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        public final int expectedSize;

        public Cdo(int i) {
            this.expectedSize = i;
        }

        @Override // com.google.common.base.Supplier
        public Map<C, V> get() {
            return Maps.r(this.expectedSize);
        }
    }

    public i0(Map<R, Map<C, V>> map, Cdo<C, V> cdo) {
        super(map, cdo);
    }

    public static <R, C, V> i0<R, C, V> create() {
        return new i0<>(new LinkedHashMap(), new Cdo(0));
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

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean contains(@b51 Object obj, @b51 Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsColumn(@b51 Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsRow(@b51 Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsValue(@b51 Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public V get(@b51 Object obj, @b51 Object obj2) {
        return (V) super.get(obj, obj2);
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
    public V remove(@b51 Object obj, @b51 Object obj2) {
        return (V) super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return super.row(obj);
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map rowMap() {
        return super.rowMap();
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

    public static <R, C, V> i0<R, C, V> create(int i, int i2) {
        Cdefault.m15742if(i2, "expectedCellsPerRow");
        return new i0<>(Maps.r(i), new Cdo(i2));
    }

    public static <R, C, V> i0<R, C, V> create(Table<? extends R, ? extends C, ? extends V> table) {
        i0<R, C, V> i0VarCreate = create();
        i0VarCreate.putAll(table);
        return i0VarCreate;
    }
}
