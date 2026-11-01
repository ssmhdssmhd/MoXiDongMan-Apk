package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
class j3<R, C, V> extends k3<R, C, V> implements RowSortedTable<R, C, V> {
    private static final long serialVersionUID = 0;

    /* renamed from: com.google.common.collect.j3$if, reason: invalid class name */
    public class Cif extends k3<R, C, V>.Cgoto implements SortedMap<R, Map<C, V>> {
        private Cif() {
            super();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedSet<R> mo15458if() {
            return new Maps.Cstrictfp(this);
        }

        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return j3.this.m15947try().comparator();
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) j3.this.m15947try().firstKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r) {
            af1.m205continue(r);
            return new j3(j3.this.m15947try().headMap(r), j3.this.factory).rowMap();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) j3.this.m15947try().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r, R r2) {
            af1.m205continue(r);
            af1.m205continue(r2);
            return new j3(j3.this.m15947try().subMap(r, r2), j3.this.factory).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r) {
            af1.m205continue(r);
            return new j3(j3.this.m15947try().tailMap(r), j3.this.factory).rowMap();
        }
    }

    public j3(SortedMap<R, Map<C, V>> sortedMap, Supplier<? extends Map<C, V>> supplier) {
        super(sortedMap, supplier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public SortedMap<R, Map<C, V>> m15947try() {
        return (SortedMap) this.backingMap;
    }

    @Override // com.google.common.collect.k3
    public SortedMap<R, Map<C, V>> createRowMap() {
        return new Cif();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Cthrow, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // com.google.common.collect.k3, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }
}
