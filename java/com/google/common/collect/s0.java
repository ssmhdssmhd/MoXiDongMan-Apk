package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;

@ki0(serializable = true)
/* loaded from: classes2.dex */
class s0<K, V> extends Celse<K, V> implements Serializable {
    private static final long serialVersionUID = 0;

    @b51
    public final K key;

    @b51
    public final V value;

    public s0(@b51 K k, @b51 V v) {
        this.key = k;
        this.value = v;
    }

    @Override // com.google.common.collect.Celse, java.util.Map.Entry
    @b51
    public final K getKey() {
        return this.key;
    }

    @Override // com.google.common.collect.Celse, java.util.Map.Entry
    @b51
    public final V getValue() {
        return this.value;
    }

    @Override // com.google.common.collect.Celse, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
