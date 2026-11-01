package com.google.common.collect;

import android.support.v4.ki0;
import com.google.common.base.Predicate;
import java.util.Map;

@ki0
/* loaded from: classes2.dex */
interface FilteredMultimap<K, V> extends Multimap<K, V> {
    Predicate<? super Map.Entry<K, V>> entryPredicate();

    Multimap<K, V> unfiltered();
}
