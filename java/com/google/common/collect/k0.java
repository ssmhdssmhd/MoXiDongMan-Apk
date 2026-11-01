package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class k0<K, V> extends l0<K, V> {

    /* renamed from: goto, reason: not valid java name */
    private static final int f14388goto = 2;

    @li0
    private static final long serialVersionUID = 0;

    @af2
    public transient int expectedValuesPerKey;

    private k0() {
        this(12, 2);
    }

    public static <K, V> k0<K, V> create() {
        return new k0<>();
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = 2;
        int iM15610goto = b3.m15610goto(objectInputStream);
        setMap(l2.m15995new(12));
        b3.m15614try(this, objectInputStream, iM15610goto);
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        b3.m15604break(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@b51 Object obj, @b51 Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@b51 Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@b51 Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set get(@b51 Object obj) {
        return super.get((k0<K, V>) obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean put(@b51 Object obj, @b51 Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean remove(@b51 Object obj, @b51 Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Set removeAll(@b51 Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Set replaceValues(@b51 Object obj, Iterable iterable) {
        return super.replaceValues((k0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.Cgoto
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    private k0(int i, int i2) {
        super(l2.m15995new(i));
        this.expectedValuesPerKey = 2;
        af1.m220new(i2 >= 0);
        this.expectedValuesPerKey = i2;
    }

    public static <K, V> k0<K, V> create(int i, int i2) {
        return new k0<>(i, i2);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public Set<V> createCollection() {
        return l2.m15997try(this.expectedValuesPerKey);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean putAll(@b51 Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K, V> k0<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new k0<>(multimap);
    }

    private k0(Multimap<? extends K, ? extends V> multimap) {
        super(l2.m15995new(multimap.keySet().size()));
        this.expectedValuesPerKey = 2;
        putAll(multimap);
    }
}
