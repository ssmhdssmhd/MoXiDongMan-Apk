package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.v10;
import java.util.Map;

@v10("Use Maps.difference")
@ki0
/* loaded from: classes2.dex */
public interface MapDifference<K, V> {

    @v10("Use Maps.difference")
    public interface ValueDifference<V> {
        boolean equals(@b51 Object obj);

        int hashCode();

        V leftValue();

        V rightValue();
    }

    boolean areEqual();

    Map<K, ValueDifference<V>> entriesDiffering();

    Map<K, V> entriesInCommon();

    Map<K, V> entriesOnlyOnLeft();

    Map<K, V> entriesOnlyOnRight();

    boolean equals(@b51 Object obj);

    int hashCode();
}
