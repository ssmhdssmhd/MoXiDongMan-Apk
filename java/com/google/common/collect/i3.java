package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.fm0;
import android.support.v4.ki0;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.Table;
import com.google.common.collect.o1;
import com.google.common.collect.x0;
import java.util.LinkedHashMap;
import java.util.Map;

@fm0(containerOf = {"R", "C", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@ki0
/* loaded from: classes2.dex */
final class i3<R, C, V> extends y2<R, C, V> {
    public static final o1<Object, Object, Object> EMPTY = new i3(v0.of(), g1.of(), g1.of());
    private final int[] cellColumnInRowIndices;
    private final int[] cellRowIndices;
    private final x0<C, x0<R, V>> columnMap;
    private final x0<R, x0<C, V>> rowMap;

    /* JADX WARN: Multi-variable type inference failed */
    public i3(v0<Table.Cell<R, C, V>> v0Var, g1<R> g1Var, g1<C> g1Var2) {
        x0 x0VarD = Maps.d(g1Var);
        LinkedHashMap linkedHashMapP = Maps.p();
        ac2<R> it = g1Var.iterator();
        while (it.hasNext()) {
            linkedHashMapP.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap linkedHashMapP2 = Maps.p();
        ac2<C> it2 = g1Var2.iterator();
        while (it2.hasNext()) {
            linkedHashMapP2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[v0Var.size()];
        int[] iArr2 = new int[v0Var.size()];
        for (int i = 0; i < v0Var.size(); i++) {
            Table.Cell<R, C, V> cell = v0Var.get(i);
            R rowKey = cell.getRowKey();
            C columnKey = cell.getColumnKey();
            V value = cell.getValue();
            iArr[i] = ((Integer) x0VarD.get(rowKey)).intValue();
            Map map = (Map) linkedHashMapP.get(rowKey);
            iArr2[i] = map.size();
            checkNoDuplicate(rowKey, columnKey, map.put(columnKey, value), value);
            ((Map) linkedHashMapP2.get(columnKey)).put(rowKey, value);
        }
        this.cellRowIndices = iArr;
        this.cellColumnInRowIndices = iArr2;
        x0.Cif cif = new x0.Cif(linkedHashMapP.size());
        for (Map.Entry entry : linkedHashMapP.entrySet()) {
            cif.mo15869new(entry.getKey(), x0.copyOf((Map) entry.getValue()));
        }
        this.rowMap = cif.mo15865do();
        x0.Cif cif2 = new x0.Cif(linkedHashMapP2.size());
        for (Map.Entry entry2 : linkedHashMapP2.entrySet()) {
            cif2.mo15869new(entry2.getKey(), x0.copyOf((Map) entry2.getValue()));
        }
        this.columnMap = cif2.mo15865do();
    }

    @Override // com.google.common.collect.o1
    public o1.Cif createSerializedForm() {
        x0 x0VarD = Maps.d(columnKeySet());
        int[] iArr = new int[cellSet().size()];
        ac2<Table.Cell<R, C, V>> it = cellSet().iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) x0VarD.get(it.next().getColumnKey())).intValue();
            i++;
        }
        return o1.Cif.create(this, this.cellRowIndices, iArr);
    }

    @Override // com.google.common.collect.y2
    public Table.Cell<R, C, V> getCell(int i) {
        Map.Entry<R, x0<C, V>> entry = this.rowMap.entrySet().asList().get(this.cellRowIndices[i]);
        x0<C, V> value = entry.getValue();
        Map.Entry<C, V> entry2 = value.entrySet().asList().get(this.cellColumnInRowIndices[i]);
        return o1.cellOf(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.y2
    public V getValue(int i) {
        x0<C, V> x0Var = this.rowMap.values().asList().get(this.cellRowIndices[i]);
        return x0Var.values().asList().get(this.cellColumnInRowIndices[i]);
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.cellRowIndices.length;
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Table
    public x0<C, Map<R, V>> columnMap() {
        return x0.copyOf((Map) this.columnMap);
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Table
    public x0<R, Map<C, V>> rowMap() {
        return x0.copyOf((Map) this.rowMap);
    }
}
