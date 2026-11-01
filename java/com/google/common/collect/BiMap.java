package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public interface BiMap<K, V> extends Map<K, V> {
    @lf
    @b51
    V forcePut(@b51 K k, @b51 V v);

    BiMap<V, K> inverse();

    @Override // java.util.Map
    @lf
    @b51
    V put(@b51 K k, @b51 V v);

    @Override // java.util.Map
    void putAll(Map<? extends K, ? extends V> map);

    @Override // java.util.Map
    Set<V> values();
}
