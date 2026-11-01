package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class z<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: do, reason: not valid java name */
    private static final z f17355do;
    private boolean isMutable;

    static {
        z zVar = new z();
        f17355do = zVar;
        zVar.makeImmutable();
    }

    private z() {
        this.isMutable = true;
    }

    public static <K, V> int calculateHashCodeForMap(Map<K, V> map) {
        int iM21642do = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            iM21642do += m21642do(entry.getValue()) ^ m21642do(entry.getKey());
        }
        return iM21642do;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> Map<K, V> copy(Map<K, V> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), m21643for(entry.getValue()));
        }
        return linkedHashMap;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m21642do(Object obj) {
        if (obj instanceof byte[]) {
            return Internal.m19612const((byte[]) obj);
        }
        if (obj instanceof Internal.EnumLite) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    public static <K, V> z<K, V> emptyMapField() {
        return f17355do;
    }

    public static <K, V> boolean equals(Map<K, V> map, Map<K, V> map2) {
        if (map == map2) {
            return true;
        }
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (!map2.containsKey(entry.getKey()) || !m21646try(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    private static Object m21643for(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m21644if(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            Internal.m19623new(obj);
            Internal.m19623new(map.get(obj));
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m21645new() {
        if (!isMutable()) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m21646try(Object obj, Object obj2) {
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m21645new();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return calculateHashCodeForMap(this);
    }

    public boolean isMutable() {
        return this.isMutable;
    }

    public void makeImmutable() {
        this.isMutable = false;
    }

    public void mergeFrom(z<K, V> zVar) {
        m21645new();
        if (zVar.isEmpty()) {
            return;
        }
        putAll(zVar);
    }

    public z<K, V> mutableCopy() {
        return isEmpty() ? new z<>() : new z<>(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m21645new();
        Internal.m19623new(k);
        Internal.m19623new(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m21645new();
        m21644if(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m21645new();
        return (V) super.remove(obj);
    }

    private z(Map<K, V> map) {
        super(map);
        this.isMutable = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && equals(this, (Map) obj);
    }

    public V put(Map.Entry<K, V> entry) {
        return put(entry.getKey(), entry.getValue());
    }
}
