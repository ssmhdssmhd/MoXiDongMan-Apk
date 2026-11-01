package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.ki0;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.Table;
import com.google.common.collect.o1;
import com.google.common.collect.x0;
import java.lang.reflect.Array;
import java.util.Map;

@fm0(containerOf = {"R", "C", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@ki0
/* loaded from: classes2.dex */
final class b<R, C, V> extends y2<R, C, V> {
    private final int[] cellColumnIndices;
    private final int[] cellRowIndices;
    private final int[] columnCounts;
    private final x0<C, Integer> columnKeyToIndex;
    private final x0<C, x0<R, V>> columnMap;
    private final int[] rowCounts;
    private final x0<R, Integer> rowKeyToIndex;
    private final x0<R, x0<C, V>> rowMap;
    private final V[][] values;

    /* renamed from: com.google.common.collect.b$case, reason: invalid class name */
    public final class Ccase extends Cnew<R, x0<C, V>> {
        @Override // com.google.common.collect.x0
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.b.Cnew
        public x0<R, Integer> keyToIndex() {
            return b.this.rowKeyToIndex;
        }

        private Ccase() {
            super(b.this.rowCounts.length);
        }

        @Override // com.google.common.collect.b.Cnew
        public x0<C, V> getValue(int i) {
            return new Ctry(i);
        }
    }

    /* renamed from: com.google.common.collect.b$for, reason: invalid class name */
    public final class Cfor extends Cnew<C, x0<R, V>> {
        @Override // com.google.common.collect.x0
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.b.Cnew
        public x0<C, Integer> keyToIndex() {
            return b.this.columnKeyToIndex;
        }

        private Cfor() {
            super(b.this.columnCounts.length);
        }

        @Override // com.google.common.collect.b.Cnew
        public x0<R, V> getValue(int i) {
            return new Cif(i);
        }
    }

    /* renamed from: com.google.common.collect.b$if, reason: invalid class name */
    public final class Cif extends Cnew<R, V> {
        private final int columnIndex;

        public Cif(int i) {
            super(b.this.columnCounts[i]);
            this.columnIndex = i;
        }

        @Override // com.google.common.collect.b.Cnew
        public V getValue(int i) {
            return (V) b.this.values[i][this.columnIndex];
        }

        @Override // com.google.common.collect.x0
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.b.Cnew
        public x0<R, Integer> keyToIndex() {
            return b.this.rowKeyToIndex;
        }
    }

    /* renamed from: com.google.common.collect.b$new, reason: invalid class name */
    public static abstract class Cnew<K, V> extends x0.Cfor<K, V> {
        private final int size;

        /* renamed from: com.google.common.collect.b$new$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Map.Entry<K, V>> {

            /* renamed from: for, reason: not valid java name */
            private int f14078for = -1;

            /* renamed from: new, reason: not valid java name */
            private final int f14079new;

            public Cdo() {
                this.f14079new = Cnew.this.keyToIndex().size();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, V> mo15521do() {
                int i = this.f14078for;
                while (true) {
                    this.f14078for = i + 1;
                    int i2 = this.f14078for;
                    if (i2 >= this.f14079new) {
                        return m15805if();
                    }
                    Object value = Cnew.this.getValue(i2);
                    if (value != null) {
                        return Maps.b(Cnew.this.getKey(this.f14078for), value);
                    }
                    i = this.f14078for;
                }
            }
        }

        public Cnew(int i) {
            this.size = i;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m15520do() {
            return this.size == keyToIndex().size();
        }

        @Override // com.google.common.collect.x0.Cfor, com.google.common.collect.x0
        public g1<K> createKeySet() {
            return m15520do() ? keyToIndex().keySet() : super.createKeySet();
        }

        @Override // com.google.common.collect.x0.Cfor
        public ac2<Map.Entry<K, V>> entryIterator() {
            return new Cdo();
        }

        @Override // com.google.common.collect.x0, java.util.Map
        public V get(@b51 Object obj) {
            Integer num = keyToIndex().get(obj);
            if (num == null) {
                return null;
            }
            return getValue(num.intValue());
        }

        public K getKey(int i) {
            return keyToIndex().keySet().asList().get(i);
        }

        @b51
        public abstract V getValue(int i);

        public abstract x0<K, Integer> keyToIndex();

        @Override // java.util.Map
        public int size() {
            return this.size;
        }
    }

    /* renamed from: com.google.common.collect.b$try, reason: invalid class name */
    public final class Ctry extends Cnew<C, V> {
        private final int rowIndex;

        public Ctry(int i) {
            super(b.this.rowCounts[i]);
            this.rowIndex = i;
        }

        @Override // com.google.common.collect.b.Cnew
        public V getValue(int i) {
            return (V) b.this.values[this.rowIndex][i];
        }

        @Override // com.google.common.collect.x0
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.b.Cnew
        public x0<C, Integer> keyToIndex() {
            return b.this.columnKeyToIndex;
        }
    }

    public b(v0<Table.Cell<R, C, V>> v0Var, g1<R> g1Var, g1<C> g1Var2) {
        this.values = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, g1Var.size(), g1Var2.size()));
        x0<R, Integer> x0VarD = Maps.d(g1Var);
        this.rowKeyToIndex = x0VarD;
        x0<C, Integer> x0VarD2 = Maps.d(g1Var2);
        this.columnKeyToIndex = x0VarD2;
        this.rowCounts = new int[x0VarD.size()];
        this.columnCounts = new int[x0VarD2.size()];
        int[] iArr = new int[v0Var.size()];
        int[] iArr2 = new int[v0Var.size()];
        for (int i = 0; i < v0Var.size(); i++) {
            Table.Cell<R, C, V> cell = v0Var.get(i);
            R rowKey = cell.getRowKey();
            C columnKey = cell.getColumnKey();
            int iIntValue = this.rowKeyToIndex.get(rowKey).intValue();
            int iIntValue2 = this.columnKeyToIndex.get(columnKey).intValue();
            checkNoDuplicate(rowKey, columnKey, this.values[iIntValue][iIntValue2], cell.getValue());
            this.values[iIntValue][iIntValue2] = cell.getValue();
            int[] iArr3 = this.rowCounts;
            iArr3[iIntValue] = iArr3[iIntValue] + 1;
            int[] iArr4 = this.columnCounts;
            iArr4[iIntValue2] = iArr4[iIntValue2] + 1;
            iArr[i] = iIntValue;
            iArr2[i] = iIntValue2;
        }
        this.cellRowIndices = iArr;
        this.cellColumnIndices = iArr2;
        this.rowMap = new Ccase();
        this.columnMap = new Cfor();
    }

    @Override // com.google.common.collect.o1
    public o1.Cif createSerializedForm() {
        return o1.Cif.create(this, this.cellRowIndices, this.cellColumnIndices);
    }

    @Override // com.google.common.collect.o1, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public V get(@b51 Object obj, @b51 Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.values[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.y2
    public Table.Cell<R, C, V> getCell(int i) {
        int i2 = this.cellRowIndices[i];
        int i3 = this.cellColumnIndices[i];
        return o1.cellOf(rowKeySet().asList().get(i2), columnKeySet().asList().get(i3), this.values[i2][i3]);
    }

    @Override // com.google.common.collect.y2
    public V getValue(int i) {
        return this.values[this.cellRowIndices[i]][this.cellColumnIndices[i]];
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
