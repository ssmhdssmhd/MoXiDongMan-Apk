package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.m3;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.Cclass;

@ki0(emulated = true)
@o8
/* renamed from: com.google.common.collect.public, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cpublic<R, C, V> extends Cthrow<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    private final V[][] array;
    private final x0<C, Integer> columnKeyToIndex;
    private final v0<C> columnList;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient Cpublic<R, C, V>.Ccase f14516for;

    /* renamed from: new, reason: not valid java name */
    @l01
    private transient Cpublic<R, C, V>.Cgoto f14517new;
    private final x0<R, Integer> rowKeyToIndex;
    private final v0<R> rowList;

    /* renamed from: com.google.common.collect.public$case, reason: invalid class name */
    public class Ccase extends Cnew<C, Map<R, V>> {
        public /* synthetic */ Ccase(Cpublic cpublic, Cdo cdo) {
            this();
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<R, V> mo16143try(int i) {
            return new Ctry(i);
        }

        @Override // com.google.common.collect.Cpublic.Cnew, java.util.AbstractMap, java.util.Map
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<R, V> put(C c, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: new, reason: not valid java name */
        public String mo16141new() {
            return "Column";
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<R, V> mo16138case(int i, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        private Ccase() {
            super(Cpublic.this.columnKeyToIndex, null);
        }
    }

    /* renamed from: com.google.common.collect.public$do, reason: invalid class name */
    public class Cdo extends com.google.common.collect.Cif<Table.Cell<R, C, V>> {
        public Cdo(int i) {
            super(i);
        }

        @Override // com.google.common.collect.Cif
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Table.Cell<R, C, V> mo15720do(int i) {
            return Cpublic.this.getCell(i);
        }
    }

    /* renamed from: com.google.common.collect.public$else, reason: invalid class name */
    public class Celse extends Cnew<C, V> {

        /* renamed from: if, reason: not valid java name */
        public final int f14521if;

        public Celse(int i) {
            super(Cpublic.this.columnKeyToIndex, null);
            this.f14521if = i;
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: case */
        public V mo16138case(int i, V v) {
            return (V) Cpublic.this.set(this.f14521if, i, v);
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: new */
        public String mo16141new() {
            return "Column";
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: try */
        public V mo16143try(int i) {
            return (V) Cpublic.this.at(this.f14521if, i);
        }
    }

    /* renamed from: com.google.common.collect.public$for, reason: invalid class name */
    public class Cfor extends com.google.common.collect.Cif<V> {
        public Cfor(int i) {
            super(i);
        }

        @Override // com.google.common.collect.Cif
        /* renamed from: do */
        public V mo15720do(int i) {
            return (V) Cpublic.this.getValue(i);
        }
    }

    /* renamed from: com.google.common.collect.public$goto, reason: invalid class name */
    public class Cgoto extends Cnew<R, Map<C, V>> {
        public /* synthetic */ Cgoto(Cpublic cpublic, Cdo cdo) {
            this();
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<C, V> mo16143try(int i) {
            return new Celse(i);
        }

        @Override // com.google.common.collect.Cpublic.Cnew, java.util.AbstractMap, java.util.Map
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<C, V> put(R r, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: new */
        public String mo16141new() {
            return "Row";
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map<C, V> mo16138case(int i, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        private Cgoto() {
            super(Cpublic.this.rowKeyToIndex, null);
        }
    }

    /* renamed from: com.google.common.collect.public$if, reason: invalid class name */
    public class Cif extends m3.Cif<R, C, V> {

        /* renamed from: do, reason: not valid java name */
        public final int f14524do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f14525for;

        /* renamed from: if, reason: not valid java name */
        public final int f14526if;

        public Cif(int i) {
            this.f14525for = i;
            this.f14524do = i / Cpublic.this.columnList.size();
            this.f14526if = i % Cpublic.this.columnList.size();
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return (C) Cpublic.this.columnList.get(this.f14526if);
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return (R) Cpublic.this.rowList.get(this.f14524do);
        }

        @Override // com.google.common.collect.Table.Cell
        public V getValue() {
            return (V) Cpublic.this.at(this.f14524do, this.f14526if);
        }
    }

    /* renamed from: com.google.common.collect.public$new, reason: invalid class name */
    public static abstract class Cnew<K, V> extends Maps.Cextends<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final x0<K, Integer> f14528do;

        /* renamed from: com.google.common.collect.public$new$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Celse<K, V> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f14529do;

            public Cdo(int i) {
                this.f14529do = i;
            }

            @Override // com.google.common.collect.Celse, java.util.Map.Entry
            public K getKey() {
                return (K) Cnew.this.m16148for(this.f14529do);
            }

            @Override // com.google.common.collect.Celse, java.util.Map.Entry
            public V getValue() {
                return (V) Cnew.this.mo16143try(this.f14529do);
            }

            @Override // com.google.common.collect.Celse, java.util.Map.Entry
            public V setValue(V v) {
                return (V) Cnew.this.mo16138case(this.f14529do, v);
            }
        }

        /* renamed from: com.google.common.collect.public$new$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cif<Map.Entry<K, V>> {
            public Cif(int i) {
                super(i);
            }

            @Override // com.google.common.collect.Cif
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, V> mo15720do(int i) {
                return Cnew.this.m16149if(i);
            }
        }

        public /* synthetic */ Cnew(x0 x0Var, Cdo cdo) {
            this(x0Var);
        }

        @b51
        /* renamed from: case */
        public abstract V mo16138case(int i, V v);

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return this.f14528do.containsKey(obj);
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<K, V>> mo15460do() {
            return new Cif(size());
        }

        /* renamed from: for, reason: not valid java name */
        public K m16148for(int i) {
            return this.f14528do.keySet().asList().get(i);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@b51 Object obj) {
            Integer num = this.f14528do.get(obj);
            if (num == null) {
                return null;
            }
            return mo16143try(num.intValue());
        }

        /* renamed from: if, reason: not valid java name */
        public Map.Entry<K, V> m16149if(int i) {
            af1.m222private(i, size());
            return new Cdo(i);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f14528do.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f14528do.keySet();
        }

        /* renamed from: new */
        public abstract String mo16141new();

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Integer num = this.f14528do.get(k);
            if (num != null) {
                return mo16138case(num.intValue(), v);
            }
            throw new IllegalArgumentException(mo16141new() + Cclass.f28652do + k + " not in " + this.f14528do.keySet());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14528do.size();
        }

        @b51
        /* renamed from: try */
        public abstract V mo16143try(int i);

        private Cnew(x0<K, Integer> x0Var) {
            this.f14528do = x0Var;
        }
    }

    /* renamed from: com.google.common.collect.public$try, reason: invalid class name */
    public class Ctry extends Cnew<R, V> {

        /* renamed from: if, reason: not valid java name */
        public final int f14533if;

        public Ctry(int i) {
            super(Cpublic.this.rowKeyToIndex, null);
            this.f14533if = i;
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: case */
        public V mo16138case(int i, V v) {
            return (V) Cpublic.this.set(i, this.f14533if, v);
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: new */
        public String mo16141new() {
            return "Row";
        }

        @Override // com.google.common.collect.Cpublic.Cnew
        /* renamed from: try */
        public V mo16143try(int i) {
            return (V) Cpublic.this.at(i, this.f14533if);
        }
    }

    private Cpublic(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        v0<R> v0VarCopyOf = v0.copyOf(iterable);
        this.rowList = v0VarCopyOf;
        v0<C> v0VarCopyOf2 = v0.copyOf(iterable2);
        this.columnList = v0VarCopyOf2;
        af1.m220new(v0VarCopyOf.isEmpty() == v0VarCopyOf2.isEmpty());
        this.rowKeyToIndex = Maps.d(v0VarCopyOf);
        this.columnKeyToIndex = Maps.d(v0VarCopyOf2);
        this.array = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, v0VarCopyOf.size(), v0VarCopyOf2.size()));
        eraseAll();
    }

    public static <R, C, V> Cpublic<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new Cpublic<>(iterable, iterable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Table.Cell<R, C, V> getCell(int i) {
        return new Cif(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V getValue(int i) {
        return at(i / this.columnList.size(), i % this.columnList.size());
    }

    public V at(int i, int i2) {
        af1.m222private(i, this.rowList.size());
        af1.m222private(i2, this.columnList.size());
        return this.array[i][i2];
    }

    @Override // com.google.common.collect.Cthrow
    public Iterator<Table.Cell<R, C, V>> cellIterator() {
        return new Cdo(size());
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c) {
        af1.m205continue(c);
        Integer num = this.columnKeyToIndex.get(c);
        return num == null ? x0.of() : new Ctry(num.intValue());
    }

    public v0<C> columnKeyList() {
        return this.columnList;
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        Cpublic<R, C, V>.Ccase ccase = this.f14516for;
        if (ccase != null) {
            return ccase;
        }
        Cpublic<R, C, V>.Ccase ccase2 = new Ccase(this, null);
        this.f14516for = ccase2;
        return ccase2;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean contains(@b51 Object obj, @b51 Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsColumn(@b51 Object obj) {
        return this.columnKeyToIndex.containsKey(obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsRow(@b51 Object obj) {
        return this.rowKeyToIndex.containsKey(obj);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean containsValue(@b51 Object obj) {
        for (V[] vArr : this.array) {
            for (V v : vArr) {
                if (Cthrow.m15205do(obj, v)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @lf
    public V erase(@b51 Object obj, @b51 Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    public void eraseAll() {
        for (V[] vArr : this.array) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public V get(@b51 Object obj, @b51 Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return at(num.intValue(), num2.intValue());
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.rowList.isEmpty() || this.columnList.isEmpty();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    public V put(R r, C c, @b51 V v) {
        af1.m205continue(r);
        af1.m205continue(c);
        Integer num = this.rowKeyToIndex.get(r);
        af1.m206default(num != null, "Row %s not in %s", r, this.rowList);
        Integer num2 = this.columnKeyToIndex.get(c);
        af1.m206default(num2 != null, "Column %s not in %s", c, this.columnList);
        return set(num.intValue(), num2.intValue(), v);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        super.putAll(table);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    @lf
    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        af1.m205continue(r);
        Integer num = this.rowKeyToIndex.get(r);
        return num == null ? x0.of() : new Celse(num.intValue());
    }

    public v0<R> rowKeyList() {
        return this.rowList;
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        Cpublic<R, C, V>.Cgoto cgoto = this.f14517new;
        if (cgoto != null) {
            return cgoto;
        }
        Cpublic<R, C, V>.Cgoto cgoto2 = new Cgoto(this, null);
        this.f14517new = cgoto2;
        return cgoto2;
    }

    @lf
    public V set(int i, int i2, @b51 V v) {
        af1.m222private(i, this.rowList.size());
        af1.m222private(i2, this.columnList.size());
        V[][] vArr = this.array;
        V v2 = vArr[i][i2];
        vArr[i][i2] = v;
        return v2;
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    @li0
    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.rowList.size(), this.columnList.size()));
        for (int i = 0; i < this.rowList.size(); i++) {
            V[][] vArr2 = this.array;
            System.arraycopy(vArr2[i], 0, vArr[i], 0, vArr2[i].length);
        }
        return vArr;
    }

    @Override // com.google.common.collect.Cthrow
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.Cthrow
    public Iterator<V> valuesIterator() {
        return new Cfor(size());
    }

    public static <R, C, V> Cpublic<R, C, V> create(Table<R, C, V> table) {
        return table instanceof Cpublic ? new Cpublic<>((Cpublic) table) : new Cpublic<>(table);
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public g1<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override // com.google.common.collect.Cthrow, com.google.common.collect.Table
    public g1<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Cpublic(Table<R, C, V> table) {
        this(table.rowKeySet(), table.columnKeySet());
        putAll(table);
    }

    private Cpublic(Cpublic<R, C, V> cpublic) {
        v0<R> v0Var = cpublic.rowList;
        this.rowList = v0Var;
        v0<C> v0Var2 = cpublic.columnList;
        this.columnList = v0Var2;
        this.rowKeyToIndex = cpublic.rowKeyToIndex;
        this.columnKeyToIndex = cpublic.columnKeyToIndex;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, v0Var.size(), v0Var2.size()));
        this.array = vArr;
        for (int i = 0; i < this.rowList.size(); i++) {
            V[][] vArr2 = cpublic.array;
            System.arraycopy(vArr2[i], 0, vArr[i], 0, vArr2[i].length);
        }
    }
}
