package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class j<K extends Enum<K>, V extends Enum<V>> extends Cdo<K, V> {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: case, reason: not valid java name */
    private transient Class<V> f14350case;

    /* renamed from: try, reason: not valid java name */
    private transient Class<K> f14351try;

    private j(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.f14351try = cls;
        this.f14350case = cls2;
    }

    public static <K extends Enum<K>, V extends Enum<V>> j<K, V> create(Class<K> cls, Class<V> cls2) {
        return new j<>(cls, cls2);
    }

    public static <K extends Enum<K>> Class<K> inferKeyType(Map<K, ?> map) {
        if (map instanceof j) {
            return ((j) map).keyType();
        }
        if (map instanceof k) {
            return ((k) map).keyType();
        }
        af1.m220new(!map.isEmpty());
        return map.keySet().iterator().next().getDeclaringClass();
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f14351try = (Class) objectInputStream.readObject();
        this.f14350case = (Class) objectInputStream.readObject();
        setDelegates(new EnumMap(this.f14351try), new EnumMap(this.f14350case));
        b3.m15611if(this, objectInputStream);
    }

    /* renamed from: try, reason: not valid java name */
    private static <V extends Enum<V>> Class<V> m15920try(Map<?, V> map) {
        if (map instanceof j) {
            return ((j) map).f14350case;
        }
        af1.m220new(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f14351try);
        objectOutputStream.writeObject(this.f14350case);
        b3.m15613this(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(@b51 Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map, java.util.SortedMap
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ BiMap inverse() {
        return super.inverse();
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map, java.util.SortedMap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    public Class<K> keyType() {
        return this.f14351try;
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    public Class<V> valueType() {
        return this.f14350case;
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> j<K, V> create(Map<K, V> map) {
        j<K, V> jVarCreate = create(inferKeyType(map), m15920try(map));
        jVarCreate.putAll(map);
        return jVarCreate;
    }

    @Override // com.google.common.collect.Cdo
    public K checkKey(K k) {
        return (K) af1.m205continue(k);
    }

    @Override // com.google.common.collect.Cdo
    public V checkValue(V v) {
        return (V) af1.m205continue(v);
    }
}
