package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.lp;
import android.support.v4.v10;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@v10("Use ImmutableTable, HashBasedTable, or another implementation")
@ki0
/* loaded from: classes2.dex */
public interface Table<R, C, V> {

    public interface Cell<R, C, V> {
        boolean equals(@b51 Object obj);

        @b51
        C getColumnKey();

        @b51
        R getRowKey();

        @b51
        V getValue();

        int hashCode();
    }

    Set<Cell<R, C, V>> cellSet();

    void clear();

    Map<R, V> column(C c);

    Set<C> columnKeySet();

    Map<C, Map<R, V>> columnMap();

    boolean contains(@lp("R") @b51 Object obj, @lp("C") @b51 Object obj2);

    boolean containsColumn(@lp("C") @b51 Object obj);

    boolean containsRow(@lp("R") @b51 Object obj);

    boolean containsValue(@lp(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) @b51 Object obj);

    boolean equals(@b51 Object obj);

    V get(@lp("R") @b51 Object obj, @lp("C") @b51 Object obj2);

    int hashCode();

    boolean isEmpty();

    @lf
    @b51
    V put(R r, C c, V v);

    void putAll(Table<? extends R, ? extends C, ? extends V> table);

    @lf
    @b51
    V remove(@lp("R") @b51 Object obj, @lp("C") @b51 Object obj2);

    Map<C, V> row(R r);

    Set<R> rowKeySet();

    Map<R, Map<C, V>> rowMap();

    int size();

    Collection<V> values();
}
