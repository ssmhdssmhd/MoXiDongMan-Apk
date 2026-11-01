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

@v10("Use ImmutableMultimap, HashMultimap, or another implementation")
@ki0
/* loaded from: classes2.dex */
public interface Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    void clear();

    boolean containsEntry(@lp("K") @b51 Object obj, @lp(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) @b51 Object obj2);

    boolean containsKey(@lp("K") @b51 Object obj);

    boolean containsValue(@lp(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) @b51 Object obj);

    Collection<Map.Entry<K, V>> entries();

    boolean equals(@b51 Object obj);

    Collection<V> get(@b51 K k);

    int hashCode();

    boolean isEmpty();

    Set<K> keySet();

    Multiset<K> keys();

    @lf
    boolean put(@b51 K k, @b51 V v);

    @lf
    boolean putAll(Multimap<? extends K, ? extends V> multimap);

    @lf
    boolean putAll(@b51 K k, Iterable<? extends V> iterable);

    @lf
    boolean remove(@lp("K") @b51 Object obj, @lp(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) @b51 Object obj2);

    @lf
    Collection<V> removeAll(@lp("K") @b51 Object obj);

    @lf
    Collection<V> replaceValues(@b51 K k, Iterable<? extends V> iterable);

    int size();

    Collection<V> values();
}
