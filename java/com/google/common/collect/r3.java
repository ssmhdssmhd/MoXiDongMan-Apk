package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class r3<K, V> extends Cconst<K, V> {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: goto, reason: not valid java name */
    private transient Comparator<? super K> f14584goto;

    /* renamed from: this, reason: not valid java name */
    private transient Comparator<? super V> f14585this;

    public r3(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        super(new TreeMap(comparator));
        this.f14584goto = comparator;
        this.f14585this = comparator2;
    }

    public static <K extends Comparable, V extends Comparable> r3<K, V> create() {
        return new r3<>(k2.natural(), k2.natural());
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f14584goto = (Comparator) af1.m205continue((Comparator) objectInputStream.readObject());
        this.f14585this = (Comparator) af1.m205continue((Comparator) objectInputStream.readObject());
        setMap(new TreeMap(this.f14584goto));
        b3.m15612new(this, objectInputStream);
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(keyComparator());
        objectOutputStream.writeObject(valueComparator());
        b3.m15604break(this, objectOutputStream);
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

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
    public Map<K, Collection<V>> createAsMap() {
        return createMaybeNavigableAsMap();
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
    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @li0
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((r3<K, V>) obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Deprecated
    public Comparator<? super K> keyComparator() {
        return this.f14584goto;
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

    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ SortedSet removeAll(@b51 Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ SortedSet replaceValues(@b51 Object obj, Iterable iterable) {
        return super.replaceValues((r3<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.Cgoto
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.SortedSetMultimap
    public Comparator<? super V> valueComparator() {
        return this.f14585this;
    }

    @Override // com.google.common.collect.Csuper, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <K, V> r3<K, V> create(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new r3<>((Comparator) af1.m205continue(comparator), (Comparator) af1.m205continue(comparator2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @li0
    public /* bridge */ /* synthetic */ Set get(@b51 Object obj) {
        return get((r3<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean putAll(@b51 Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K extends Comparable, V extends Comparable> r3<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new r3<>(k2.natural(), k2.natural(), multimap);
    }

    @Override // com.google.common.collect.Cconst, com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public NavigableMap<K, Collection<V>> asMap() {
        return (NavigableMap) super.asMap();
    }

    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public SortedSet<V> createCollection() {
        return new TreeSet(this.f14585this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @li0
    public /* bridge */ /* synthetic */ SortedSet get(@b51 Object obj) {
        return get((r3<K, V>) obj);
    }

    @Override // com.google.common.collect.Cconst, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    private r3(Comparator<? super K> comparator, Comparator<? super V> comparator2, Multimap<? extends K, ? extends V> multimap) {
        this(comparator, comparator2);
        putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Ctry
    public Collection<V> createCollection(@b51 K k) {
        if (k == 0) {
            keyComparator().compare(k, k);
        }
        return super.createCollection(k);
    }

    @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @li0
    public NavigableSet<V> get(@b51 K k) {
        return (NavigableSet) super.get((r3<K, V>) k);
    }
}
