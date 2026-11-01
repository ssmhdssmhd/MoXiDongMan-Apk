package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class k<K extends Enum<K>, V> extends Cdo<K, V> {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: try, reason: not valid java name */
    private transient Class<K> f14387try;

    private k(Class<K> cls) {
        super(new EnumMap(cls), Maps.n(cls.getEnumConstants().length));
        this.f14387try = cls;
    }

    public static <K extends Enum<K>, V> k<K, V> create(Class<K> cls) {
        return new k<>(cls);
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f14387try = (Class) objectInputStream.readObject();
        setDelegates(new EnumMap(this.f14387try), new HashMap((this.f14387try.getEnumConstants().length * 3) / 2));
        b3.m15611if(this, objectInputStream);
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f14387try);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cdo, com.google.common.collect.BiMap
    @lf
    public /* bridge */ /* synthetic */ Object forcePut(Object obj, @b51 Object obj2) {
        return forcePut((k<K, V>) obj, (Enum) obj2);
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
        return this.f14387try;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    @lf
    public /* bridge */ /* synthetic */ Object put(Object obj, @b51 Object obj2) {
        return put((k<K, V>) obj, (Enum) obj2);
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    @lf
    public /* bridge */ /* synthetic */ Object remove(@b51 Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V> k<K, V> create(Map<K, ? extends V> map) {
        k<K, V> kVarCreate = create(j.inferKeyType(map));
        kVarCreate.putAll(map);
        return kVarCreate;
    }

    @Override // com.google.common.collect.Cdo
    public K checkKey(K k) {
        return (K) af1.m205continue(k);
    }

    @lf
    public V forcePut(K k, @b51 V v) {
        return (V) super.forcePut((k<K, V>) k, (K) v);
    }

    @lf
    public V put(K k, @b51 V v) {
        return (V) super.put((k<K, V>) k, (K) v);
    }
}
