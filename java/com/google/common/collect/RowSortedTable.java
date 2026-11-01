package com.google.common.collect;

import android.support.v4.ki0;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
public interface RowSortedTable<R, C, V> extends Table<R, C, V> {
    @Override // com.google.common.collect.Table
    SortedSet<R> rowKeySet();

    @Override // com.google.common.collect.Table
    SortedMap<R, Map<C, V>> rowMap();
}
