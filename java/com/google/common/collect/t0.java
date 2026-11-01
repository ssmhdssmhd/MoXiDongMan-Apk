package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.collect.x0;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class t0<K extends Enum<K>, V> extends x0.Cfor<K, V> {

    /* renamed from: try, reason: not valid java name */
    private final transient EnumMap<K, V> f14650try;

    /* renamed from: com.google.common.collect.t0$if, reason: invalid class name */
    public static class Cif<K extends Enum<K>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        public final EnumMap<K, V> delegate;

        public Cif(EnumMap<K, V> enumMap) {
            this.delegate = enumMap;
        }

        public Object readResolve() {
            return new t0(this.delegate);
        }
    }

    public static <K extends Enum<K>, V> x0<K, V> asImmutable(EnumMap<K, V> enumMap) {
        int size = enumMap.size();
        if (size == 0) {
            return x0.of();
        }
        if (size != 1) {
            return new t0(enumMap);
        }
        Map.Entry entry = (Map.Entry) r1.m16184extends(enumMap.entrySet());
        return x0.of(entry.getKey(), entry.getValue());
    }

    @Override // com.google.common.collect.x0, java.util.Map
    public boolean containsKey(@b51 Object obj) {
        return this.f14650try.containsKey(obj);
    }

    @Override // com.google.common.collect.x0.Cfor
    public ac2<Map.Entry<K, V>> entryIterator() {
        return Maps.V(this.f14650try.entrySet().iterator());
    }

    @Override // com.google.common.collect.x0, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t0) {
            obj = ((t0) obj).f14650try;
        }
        return this.f14650try.equals(obj);
    }

    @Override // com.google.common.collect.x0, java.util.Map
    public V get(Object obj) {
        return this.f14650try.get(obj);
    }

    @Override // com.google.common.collect.x0
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.x0
    public ac2<K> keyIterator() {
        return s1.s(this.f14650try.keySet().iterator());
    }

    @Override // java.util.Map
    public int size() {
        return this.f14650try.size();
    }

    @Override // com.google.common.collect.x0
    public Object writeReplace() {
        return new Cif(this.f14650try);
    }

    private t0(EnumMap<K, V> enumMap) {
        this.f14650try = enumMap;
        af1.m220new(!enumMap.isEmpty());
    }
}
