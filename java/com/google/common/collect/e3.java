package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import com.google.common.collect.Table;
import com.google.common.collect.o1;
import java.util.Map;

@ki0
/* loaded from: classes2.dex */
class e3<R, C, V> extends o1<R, C, V> {
    public final C singleColumnKey;
    public final R singleRowKey;
    public final V singleValue;

    public e3(R r, C c, V v) {
        this.singleRowKey = (R) af1.m205continue(r);
        this.singleColumnKey = (C) af1.m205continue(c);
        this.singleValue = (V) af1.m205continue(v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o1, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return column((e3<R, C, V>) obj);
    }

    @Override // com.google.common.collect.o1
    public o1.Cif createSerializedForm() {
        return o1.Cif.create(this, new int[]{0}, new int[]{0});
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Table
    public x0<R, V> column(C c) {
        af1.m205continue(c);
        return containsColumn(c) ? x0.of(this.singleRowKey, (Object) this.singleValue) : x0.of();
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Table
    public x0<C, Map<R, V>> columnMap() {
        return x0.of(this.singleColumnKey, x0.of(this.singleRowKey, (Object) this.singleValue));
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Cthrow
    public g1<Table.Cell<R, C, V>> createCellSet() {
        return g1.of(o1.cellOf(this.singleRowKey, this.singleColumnKey, this.singleValue));
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Cthrow
    public r0<V> createValues() {
        return g1.of(this.singleValue);
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Table
    public x0<R, Map<C, V>> rowMap() {
        return x0.of(this.singleRowKey, x0.of(this.singleColumnKey, (Object) this.singleValue));
    }

    public e3(Table.Cell<R, C, V> cell) {
        this(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
    }
}
