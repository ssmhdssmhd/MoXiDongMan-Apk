package com.google.common.cache;

import android.support.v4.ki0;

@ki0
/* loaded from: classes.dex */
public interface Weigher<K, V> {
    int weigh(K k, V v);
}
