package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import java.lang.Comparable;
import java.util.Map;

@v10("Use ImmutableRangeMap or TreeRangeMap")
@li0
@o8
/* loaded from: classes2.dex */
public interface RangeMap<K extends Comparable, V> {
    Map<n2<K>, V> asDescendingMapOfRanges();

    Map<n2<K>, V> asMapOfRanges();

    void clear();

    boolean equals(@b51 Object obj);

    @b51
    V get(K k);

    @b51
    Map.Entry<n2<K>, V> getEntry(K k);

    int hashCode();

    void put(n2<K> n2Var, V v);

    void putAll(RangeMap<K, V> rangeMap);

    void putCoalescing(n2<K> n2Var, V v);

    void remove(n2<K> n2Var);

    n2<K> span();

    RangeMap<K, V> subRangeMap(n2<K> n2Var);

    String toString();
}
