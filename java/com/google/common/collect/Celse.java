package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Cthrow;
import java.util.Map;

@ki0
/* renamed from: com.google.common.collect.else, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Celse<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Cthrow.m15205do(getKey(), entry.getKey()) && Cthrow.m15205do(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public abstract K getKey();

    @Override // java.util.Map.Entry
    public abstract V getValue();

    @Override // java.util.Map.Entry
    public int hashCode() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return getKey() + "=" + getValue();
    }
}
