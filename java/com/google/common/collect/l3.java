package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.li0;
import android.support.v4.yd0;
import com.google.common.base.Function;
import com.google.common.collect.Multiset;
import com.google.common.collect.Table;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class l3 {

    /* renamed from: com.google.common.collect.l3$break, reason: invalid class name */
    public static class Cbreak<K, V> extends Cclass<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public Cbreak(ListMultimap<K, V> listMultimap, @b51 Object obj) {
            super(listMultimap, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cbreak<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cbreak<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public List<V> get(K k) {
            List<V> listM15998break;
            synchronized (this.mutex) {
                listM15998break = l3.m15998break(delegate().get((ListMultimap<K, V>) k), this.mutex);
            }
            return listM15998break;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public List<V> removeAll(Object obj) {
            List<V> listRemoveAll;
            synchronized (this.mutex) {
                listRemoveAll = delegate().removeAll(obj);
            }
            return listRemoveAll;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            List<V> listReplaceValues;
            synchronized (this.mutex) {
                listReplaceValues = delegate().replaceValues((ListMultimap<K, V>) k, (Iterable) iterable);
            }
            return listReplaceValues;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.l3.Cthrow
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }
    }

    @af2
    /* renamed from: com.google.common.collect.l3$case, reason: invalid class name */
    public static class Ccase<E> extends Cthrow implements Collection<E> {
        private static final long serialVersionUID = 0;

        @Override // java.util.Collection
        public boolean add(E e) {
            boolean zAdd;
            synchronized (this.mutex) {
                zAdd = delegate().add(e);
            }
            return zAdd;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.mutex) {
                zAddAll = delegate().addAll(collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.mutex) {
                zContains = delegate().contains(obj);
            }
            return zContains;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            boolean zContainsAll;
            synchronized (this.mutex) {
                zContainsAll = delegate().containsAll(collection);
            }
            return zContainsAll;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.mutex) {
                zIsEmpty = delegate().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return delegate().iterator();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.mutex) {
                zRemove = delegate().remove(obj);
            }
            return zRemove;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.mutex) {
                zRemoveAll = delegate().removeAll(collection);
            }
            return zRemoveAll;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.mutex) {
                zRetainAll = delegate().retainAll(collection);
            }
            return zRetainAll;
        }

        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            Object[] array;
            synchronized (this.mutex) {
                array = delegate().toArray();
            }
            return array;
        }

        private Ccase(Collection<E> collection, @b51 Object obj) {
            super(collection, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3.Cthrow
        public Collection<E> delegate() {
            return (Collection) super.delegate();
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.mutex) {
                tArr2 = (T[]) delegate().toArray(tArr);
            }
            return tArr2;
        }
    }

    /* renamed from: com.google.common.collect.l3$catch, reason: invalid class name */
    public static class Ccatch<K, V> extends Cthrow implements Map<K, V> {
        private static final long serialVersionUID = 0;

        @l01
        public transient Set<Map.Entry<K, V>> entrySet;

        @l01
        public transient Set<K> keySet;

        @l01
        public transient Collection<V> values;

        public Ccatch(Map<K, V> map, @b51 Object obj) {
            super(map, obj);
        }

        @Override // java.util.Map
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.mutex) {
                zContainsKey = delegate().containsKey(obj);
            }
            return zContainsKey;
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.mutex) {
                zContainsValue = delegate().containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = l3.m16017return(delegate().entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map
        public V get(Object obj) {
            V v;
            synchronized (this.mutex) {
                v = delegate().get(obj);
            }
            return v;
        }

        @Override // java.util.Map
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.mutex) {
                zIsEmpty = delegate().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = l3.m16017return(delegate().keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        @Override // java.util.Map
        public V put(K k, V v) {
            V vPut;
            synchronized (this.mutex) {
                vPut = delegate().put(k, v);
            }
            return vPut;
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.mutex) {
                delegate().putAll(map);
            }
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            V vRemove;
            synchronized (this.mutex) {
                vRemove = delegate().remove(obj);
            }
            return vRemove;
        }

        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        @Override // java.util.Map
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.mutex) {
                if (this.values == null) {
                    this.values = l3.m16010goto(delegate().values(), this.mutex);
                }
                collection = this.values;
            }
            return collection;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3.Cthrow
        public Map<K, V> delegate() {
            return (Map) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$class, reason: invalid class name */
    public static class Cclass<K, V> extends Cthrow implements Multimap<K, V> {
        private static final long serialVersionUID = 0;

        @l01
        public transient Map<K, Collection<V>> asMap;

        @l01
        public transient Collection<Map.Entry<K, V>> entries;

        @l01
        public transient Set<K> keySet;

        @l01
        public transient Multiset<K> keys;

        @l01
        public transient Collection<V> valuesCollection;

        public Cclass(Multimap<K, V> multimap, @b51 Object obj) {
            super(multimap, obj);
        }

        @Override // com.google.common.collect.Multimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map;
            synchronized (this.mutex) {
                if (this.asMap == null) {
                    this.asMap = new Cif(delegate().asMap(), this.mutex);
                }
                map = this.asMap;
            }
            return map;
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsEntry(Object obj, Object obj2) {
            boolean zContainsEntry;
            synchronized (this.mutex) {
                zContainsEntry = delegate().containsEntry(obj, obj2);
            }
            return zContainsEntry;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.mutex) {
                zContainsKey = delegate().containsKey(obj);
            }
            return zContainsKey;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.mutex) {
                zContainsValue = delegate().containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.mutex) {
                if (this.entries == null) {
                    this.entries = l3.m16008finally(delegate().entries(), this.mutex);
                }
                collection = this.entries;
            }
            return collection;
        }

        @Override // com.google.common.collect.Multimap
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        public Collection<V> get(K k) {
            Collection<V> collectionM16008finally;
            synchronized (this.mutex) {
                collectionM16008finally = l3.m16008finally(delegate().get(k), this.mutex);
            }
            return collectionM16008finally;
        }

        @Override // com.google.common.collect.Multimap
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        @Override // com.google.common.collect.Multimap
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.mutex) {
                zIsEmpty = delegate().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = l3.m16015package(delegate().keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        @Override // com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset;
            synchronized (this.mutex) {
                if (this.keys == null) {
                    this.keys = l3.m16007final(delegate().keys(), this.mutex);
                }
                multiset = this.keys;
            }
            return multiset;
        }

        @Override // com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            boolean zPut;
            synchronized (this.mutex) {
                zPut = delegate().put(k, v);
            }
            return zPut;
        }

        @Override // com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            boolean zPutAll;
            synchronized (this.mutex) {
                zPutAll = delegate().putAll(k, iterable);
            }
            return zPutAll;
        }

        @Override // com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            boolean zRemove;
            synchronized (this.mutex) {
                zRemove = delegate().remove(obj, obj2);
            }
            return zRemove;
        }

        public Collection<V> removeAll(Object obj) {
            Collection<V> collectionRemoveAll;
            synchronized (this.mutex) {
                collectionRemoveAll = delegate().removeAll(obj);
            }
            return collectionRemoveAll;
        }

        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Collection<V> collectionReplaceValues;
            synchronized (this.mutex) {
                collectionReplaceValues = delegate().replaceValues(k, iterable);
            }
            return collectionReplaceValues;
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        @Override // com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.mutex) {
                if (this.valuesCollection == null) {
                    this.valuesCollection = l3.m16010goto(delegate().values(), this.mutex);
                }
                collection = this.valuesCollection;
            }
            return collection;
        }

        @Override // com.google.common.collect.l3.Cthrow
        public Multimap<K, V> delegate() {
            return (Multimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            boolean zPutAll;
            synchronized (this.mutex) {
                zPutAll = delegate().putAll(multimap);
            }
            return zPutAll;
        }
    }

    @li0
    /* renamed from: com.google.common.collect.l3$goto, reason: invalid class name */
    public static class Cgoto<K, V> extends Cthrow implements Map.Entry<K, V> {
        private static final long serialVersionUID = 0;

        public Cgoto(Map.Entry<K, V> entry, @b51 Object obj) {
            super(entry, obj);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean zEquals;
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            K key;
            synchronized (this.mutex) {
                key = delegate().getKey();
            }
            return key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            V value;
            synchronized (this.mutex) {
                value = delegate().getValue();
            }
            return value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V value;
            synchronized (this.mutex) {
                value = delegate().setValue(v);
            }
            return value;
        }

        @Override // com.google.common.collect.l3.Cthrow
        public Map.Entry<K, V> delegate() {
            return (Map.Entry) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$if, reason: invalid class name */
    public static class Cif<K, V> extends Ccatch<K, Collection<V>> {
        private static final long serialVersionUID = 0;

        @l01
        public transient Set<Map.Entry<K, Collection<V>>> asMapEntrySet;

        @l01
        public transient Collection<Collection<V>> asMapValues;

        public Cif(Map<K, Collection<V>> map, @b51 Object obj) {
            super(map, obj);
        }

        @Override // com.google.common.collect.l3.Ccatch, java.util.Map
        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }

        @Override // com.google.common.collect.l3.Ccatch, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.mutex) {
                if (this.asMapEntrySet == null) {
                    this.asMapEntrySet = new Cfor(delegate().entrySet(), this.mutex);
                }
                set = this.asMapEntrySet;
            }
            return set;
        }

        @Override // com.google.common.collect.l3.Ccatch, java.util.Map
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.mutex) {
                if (this.asMapValues == null) {
                    this.asMapValues = new Cnew(delegate().values(), this.mutex);
                }
                collection = this.asMapValues;
            }
            return collection;
        }

        @Override // com.google.common.collect.l3.Ccatch, java.util.Map
        public Collection<V> get(Object obj) {
            Collection<V> collectionM16008finally;
            synchronized (this.mutex) {
                Collection collection = (Collection) super.get(obj);
                collectionM16008finally = collection == null ? null : l3.m16008finally(collection, this.mutex);
            }
            return collectionM16008finally;
        }
    }

    /* renamed from: com.google.common.collect.l3$import, reason: invalid class name */
    public static class Cimport<E> extends Cthis<E> implements RandomAccess {
        private static final long serialVersionUID = 0;

        public Cimport(List<E> list, @b51 Object obj) {
            super(list, obj);
        }
    }

    /* renamed from: com.google.common.collect.l3$new, reason: invalid class name */
    public static class Cnew<V> extends Ccase<Collection<V>> {
        private static final long serialVersionUID = 0;

        /* renamed from: com.google.common.collect.l3$new$do, reason: invalid class name */
        public class Cdo extends o3<Collection<V>, Collection<V>> {
            public Cdo(Iterator it) {
                super(it);
            }

            @Override // com.google.common.collect.o3
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Collection<V> mo15451do(Collection<V> collection) {
                return l3.m16008finally(collection, Cnew.this.mutex);
            }
        }

        public Cnew(Collection<Collection<V>> collection, @b51 Object obj) {
            super(collection, obj);
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection, java.lang.Iterable
        public Iterator<Collection<V>> iterator() {
            return new Cdo(super.iterator());
        }
    }

    /* renamed from: com.google.common.collect.l3$public, reason: invalid class name */
    public static class Cpublic<K, V> extends Cclass<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        @l01
        public transient Set<Map.Entry<K, V>> entrySet;

        public Cpublic(SetMultimap<K, V> setMultimap, @b51 Object obj) {
            super(setMultimap, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cpublic<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cpublic<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = l3.m16017return(delegate().entries(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public Set<V> get(K k) {
            Set<V> setM16017return;
            synchronized (this.mutex) {
                setM16017return = l3.m16017return(delegate().get((SetMultimap<K, V>) k), this.mutex);
            }
            return setM16017return;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public Set<V> removeAll(Object obj) {
            Set<V> setRemoveAll;
            synchronized (this.mutex) {
                setRemoveAll = delegate().removeAll(obj);
            }
            return setRemoveAll;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Set<V> setReplaceValues;
            synchronized (this.mutex) {
                setReplaceValues = delegate().replaceValues((SetMultimap<K, V>) k, (Iterable) iterable);
            }
            return setReplaceValues;
        }

        @Override // com.google.common.collect.l3.Cclass, com.google.common.collect.l3.Cthrow
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$switch, reason: invalid class name */
    public static class Cswitch<K, V> extends Cpublic<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public Cswitch(SortedSetMultimap<K, V> sortedSetMultimap, @b51 Object obj) {
            super(sortedSetMultimap, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cswitch<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cswitch<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            Comparator<? super V> comparatorValueComparator;
            synchronized (this.mutex) {
                comparatorValueComparator = delegate().valueComparator();
            }
            return comparatorValueComparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Set get(Object obj) {
            return get((Cswitch<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cswitch<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public SortedSet<V> get(K k) {
            SortedSet<V> sortedSetM16023throws;
            synchronized (this.mutex) {
                sortedSetM16023throws = l3.m16023throws(delegate().get((SortedSetMultimap<K, V>) k), this.mutex);
            }
            return sortedSetM16023throws;
        }

        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public SortedSet<V> removeAll(Object obj) {
            SortedSet<V> sortedSetRemoveAll;
            synchronized (this.mutex) {
                sortedSetRemoveAll = delegate().removeAll(obj);
            }
            return sortedSetRemoveAll;
        }

        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.Multimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            SortedSet<V> sortedSetReplaceValues;
            synchronized (this.mutex) {
                sortedSetReplaceValues = delegate().replaceValues((SortedSetMultimap<K, V>) k, (Iterable) iterable);
            }
            return sortedSetReplaceValues;
        }

        @Override // com.google.common.collect.l3.Cpublic, com.google.common.collect.l3.Cclass, com.google.common.collect.l3.Cthrow
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$this, reason: invalid class name */
    public static class Cthis<E> extends Ccase<E> implements List<E> {
        private static final long serialVersionUID = 0;

        public Cthis(List<E> list, @b51 Object obj) {
            super(list, obj);
        }

        @Override // java.util.List
        public void add(int i, E e) {
            synchronized (this.mutex) {
                delegate().add(i, e);
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.mutex) {
                zAddAll = delegate().addAll(i, collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.List
        public E get(int i) {
            E e;
            synchronized (this.mutex) {
                e = delegate().get(i);
            }
            return e;
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            synchronized (this.mutex) {
                iIndexOf = delegate().indexOf(obj);
            }
            return iIndexOf;
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            synchronized (this.mutex) {
                iLastIndexOf = delegate().lastIndexOf(obj);
            }
            return iLastIndexOf;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return delegate().listIterator();
        }

        @Override // java.util.List
        public E remove(int i) {
            E eRemove;
            synchronized (this.mutex) {
                eRemove = delegate().remove(i);
            }
            return eRemove;
        }

        @Override // java.util.List
        public E set(int i, E e) {
            E e2;
            synchronized (this.mutex) {
                e2 = delegate().set(i, e);
            }
            return e2;
        }

        @Override // java.util.List
        public List<E> subList(int i, int i2) {
            List<E> listM15998break;
            synchronized (this.mutex) {
                listM15998break = l3.m15998break(delegate().subList(i, i2), this.mutex);
            }
            return listM15998break;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator(int i) {
            return delegate().listIterator(i);
        }

        @Override // com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public List<E> delegate() {
            return (List) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$throw, reason: invalid class name */
    public static class Cthrow implements Serializable {

        @li0
        private static final long serialVersionUID = 0;
        public final Object delegate;
        public final Object mutex;

        public Cthrow(Object obj, @b51 Object obj2) {
            this.delegate = af1.m205continue(obj);
            this.mutex = obj2 == null ? this : obj2;
        }

        @li0
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            synchronized (this.mutex) {
                objectOutputStream.defaultWriteObject();
            }
        }

        Object delegate() {
            return this.delegate;
        }

        public String toString() {
            String string;
            synchronized (this.mutex) {
                string = this.delegate.toString();
            }
            return string;
        }
    }

    /* renamed from: com.google.common.collect.l3$throws, reason: invalid class name */
    public static final class Cthrows<R, C, V> extends Cthrow implements Table<R, C, V> {

        /* renamed from: com.google.common.collect.l3$throws$do, reason: invalid class name */
        public class Cdo implements Function<Map<C, V>, Map<C, V>> {
            public Cdo() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map<C, V> apply(Map<C, V> map) {
                return l3.m16001class(map, Cthrows.this.mutex);
            }
        }

        /* renamed from: com.google.common.collect.l3$throws$if, reason: invalid class name */
        public class Cif implements Function<Map<R, V>, Map<R, V>> {
            public Cif() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map<R, V> apply(Map<R, V> map) {
                return l3.m16001class(map, Cthrows.this.mutex);
            }
        }

        public Cthrows(Table<R, C, V> table, Object obj) {
            super(table, obj);
        }

        @Override // com.google.common.collect.Table
        public Set<Table.Cell<R, C, V>> cellSet() {
            Set<Table.Cell<R, C, V>> setM16017return;
            synchronized (this.mutex) {
                setM16017return = l3.m16017return(delegate().cellSet(), this.mutex);
            }
            return setM16017return;
        }

        @Override // com.google.common.collect.Table
        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        @Override // com.google.common.collect.Table
        public Map<R, V> column(@b51 C c) {
            Map<R, V> mapM16001class;
            synchronized (this.mutex) {
                mapM16001class = l3.m16001class(delegate().column(c), this.mutex);
            }
            return mapM16001class;
        }

        @Override // com.google.common.collect.Table
        public Set<C> columnKeySet() {
            Set<C> setM16017return;
            synchronized (this.mutex) {
                setM16017return = l3.m16017return(delegate().columnKeySet(), this.mutex);
            }
            return setM16017return;
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V>> columnMap() {
            Map<C, Map<R, V>> mapM16001class;
            synchronized (this.mutex) {
                mapM16001class = l3.m16001class(Maps.O(delegate().columnMap(), new Cif()), this.mutex);
            }
            return mapM16001class;
        }

        @Override // com.google.common.collect.Table
        public boolean contains(@b51 Object obj, @b51 Object obj2) {
            boolean zContains;
            synchronized (this.mutex) {
                zContains = delegate().contains(obj, obj2);
            }
            return zContains;
        }

        @Override // com.google.common.collect.Table
        public boolean containsColumn(@b51 Object obj) {
            boolean zContainsColumn;
            synchronized (this.mutex) {
                zContainsColumn = delegate().containsColumn(obj);
            }
            return zContainsColumn;
        }

        @Override // com.google.common.collect.Table
        public boolean containsRow(@b51 Object obj) {
            boolean zContainsRow;
            synchronized (this.mutex) {
                zContainsRow = delegate().containsRow(obj);
            }
            return zContainsRow;
        }

        @Override // com.google.common.collect.Table
        public boolean containsValue(@b51 Object obj) {
            boolean zContainsValue;
            synchronized (this.mutex) {
                zContainsValue = delegate().containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // com.google.common.collect.Table
        public boolean equals(@b51 Object obj) {
            boolean zEquals;
            if (this == obj) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        @Override // com.google.common.collect.Table
        public V get(@b51 Object obj, @b51 Object obj2) {
            V v;
            synchronized (this.mutex) {
                v = delegate().get(obj, obj2);
            }
            return v;
        }

        @Override // com.google.common.collect.Table
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        @Override // com.google.common.collect.Table
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.mutex) {
                zIsEmpty = delegate().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // com.google.common.collect.Table
        public V put(@b51 R r, @b51 C c, @b51 V v) {
            V vPut;
            synchronized (this.mutex) {
                vPut = delegate().put(r, c, v);
            }
            return vPut;
        }

        @Override // com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
            synchronized (this.mutex) {
                delegate().putAll(table);
            }
        }

        @Override // com.google.common.collect.Table
        public V remove(@b51 Object obj, @b51 Object obj2) {
            V vRemove;
            synchronized (this.mutex) {
                vRemove = delegate().remove(obj, obj2);
            }
            return vRemove;
        }

        @Override // com.google.common.collect.Table
        public Map<C, V> row(@b51 R r) {
            Map<C, V> mapM16001class;
            synchronized (this.mutex) {
                mapM16001class = l3.m16001class(delegate().row(r), this.mutex);
            }
            return mapM16001class;
        }

        @Override // com.google.common.collect.Table
        public Set<R> rowKeySet() {
            Set<R> setM16017return;
            synchronized (this.mutex) {
                setM16017return = l3.m16017return(delegate().rowKeySet(), this.mutex);
            }
            return setM16017return;
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V>> rowMap() {
            Map<R, Map<C, V>> mapM16001class;
            synchronized (this.mutex) {
                mapM16001class = l3.m16001class(Maps.O(delegate().rowMap(), new Cdo()), this.mutex);
            }
            return mapM16001class;
        }

        @Override // com.google.common.collect.Table
        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        @Override // com.google.common.collect.Table
        public Collection<V> values() {
            Collection<V> collectionM16010goto;
            synchronized (this.mutex) {
                collectionM16010goto = l3.m16010goto(delegate().values(), this.mutex);
            }
            return collectionM16010goto;
        }

        @Override // com.google.common.collect.l3.Cthrow
        public Table<R, C, V> delegate() {
            return (Table) super.delegate();
        }
    }

    @af2
    /* renamed from: com.google.common.collect.l3$try, reason: invalid class name */
    public static class Ctry<K, V> extends Ccatch<K, V> implements BiMap<K, V>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: do, reason: not valid java name */
        @l01
        private transient Set<V> f14452do;

        /* renamed from: if, reason: not valid java name */
        @bo1
        @l01
        private transient BiMap<V, K> f14453if;

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            V vForcePut;
            synchronized (this.mutex) {
                vForcePut = delegate().forcePut(k, v);
            }
            return vForcePut;
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap;
            synchronized (this.mutex) {
                if (this.f14453if == null) {
                    this.f14453if = new Ctry(delegate().inverse(), this.mutex, this);
                }
                biMap = this.f14453if;
            }
            return biMap;
        }

        private Ctry(BiMap<K, V> biMap, @b51 Object obj, @b51 BiMap<V, K> biMap2) {
            super(biMap, obj);
            this.f14453if = biMap2;
        }

        @Override // com.google.common.collect.l3.Ccatch, java.util.Map
        public Set<V> values() {
            Set<V> set;
            synchronized (this.mutex) {
                if (this.f14452do == null) {
                    this.f14452do = l3.m16017return(delegate().values(), this.mutex);
                }
                set = this.f14452do;
            }
            return set;
        }

        @Override // com.google.common.collect.l3.Ccatch, com.google.common.collect.l3.Cthrow
        public BiMap<K, V> delegate() {
            return (BiMap) super.delegate();
        }
    }

    private l3() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static <E> List<E> m15998break(List<E> list, @b51 Object obj) {
        return list instanceof RandomAccess ? new Cimport(list, obj) : new Cthis(list, obj);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <K, V> ListMultimap<K, V> m16000catch(ListMultimap<K, V> listMultimap, @b51 Object obj) {
        return ((listMultimap instanceof Cbreak) || (listMultimap instanceof com.google.common.collect.Creturn)) ? listMultimap : new Cbreak(listMultimap, obj);
    }

    @af2
    /* renamed from: class, reason: not valid java name */
    public static <K, V> Map<K, V> m16001class(Map<K, V> map, @b51 Object obj) {
        return new Ccatch(map, obj);
    }

    /* renamed from: const, reason: not valid java name */
    public static <K, V> Multimap<K, V> m16002const(Multimap<K, V> multimap, @b51 Object obj) {
        return ((multimap instanceof Cclass) || (multimap instanceof com.google.common.collect.Creturn)) ? multimap : new Cclass(multimap, obj);
    }

    /* renamed from: default, reason: not valid java name */
    public static <K, V> SortedSetMultimap<K, V> m16003default(SortedSetMultimap<K, V> sortedSetMultimap, @b51 Object obj) {
        return sortedSetMultimap instanceof Cswitch ? sortedSetMultimap : new Cswitch(sortedSetMultimap, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else, reason: not valid java name */
    public static <K, V> BiMap<K, V> m16005else(BiMap<K, V> biMap, @b51 Object obj) {
        return ((biMap instanceof Ctry) || (biMap instanceof p0)) ? biMap : new Ctry(biMap, obj, null);
    }

    /* renamed from: extends, reason: not valid java name */
    public static <R, C, V> Table<R, C, V> m16006extends(Table<R, C, V> table, Object obj) {
        return new Cthrows(table, obj);
    }

    /* renamed from: final, reason: not valid java name */
    public static <E> Multiset<E> m16007final(Multiset<E> multiset, @b51 Object obj) {
        return ((multiset instanceof Cconst) || (multiset instanceof c1)) ? multiset : new Cconst(multiset, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public static <E> Collection<E> m16008finally(Collection<E> collection, @b51 Object obj) {
        return collection instanceof SortedSet ? m16023throws((SortedSet) collection, obj) : collection instanceof Set ? m16017return((Set) collection, obj) : collection instanceof List ? m15998break((List) collection, obj) : m16010goto(collection, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static <E> Collection<E> m16010goto(Collection<E> collection, @b51 Object obj) {
        return new Ccase(collection, obj);
    }

    @li0
    /* renamed from: import, reason: not valid java name */
    public static <E> NavigableSet<E> m16012import(NavigableSet<E> navigableSet, @b51 Object obj) {
        return new Csuper(navigableSet, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @li0
    /* renamed from: native, reason: not valid java name */
    public static <K, V> Map.Entry<K, V> m16013native(@b51 Map.Entry<K, V> entry, @b51 Object obj) {
        if (entry == null) {
            return null;
        }
        return new Cgoto(entry, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public static <E> Set<E> m16015package(Set<E> set, @b51 Object obj) {
        return set instanceof SortedSet ? m16023throws((SortedSet) set, obj) : m16017return(set, obj);
    }

    /* renamed from: public, reason: not valid java name */
    public static <E> Queue<E> m16016public(Queue<E> queue, @b51 Object obj) {
        return queue instanceof Cwhile ? queue : new Cwhile(queue, obj);
    }

    @af2
    /* renamed from: return, reason: not valid java name */
    public static <E> Set<E> m16017return(Set<E> set, @b51 Object obj) {
        return new Cnative(set, obj);
    }

    /* renamed from: static, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m16018static(SetMultimap<K, V> setMultimap, @b51 Object obj) {
        return ((setMultimap instanceof Cpublic) || (setMultimap instanceof com.google.common.collect.Creturn)) ? setMultimap : new Cpublic(setMultimap, obj);
    }

    @li0
    /* renamed from: super, reason: not valid java name */
    public static <K, V> NavigableMap<K, V> m16019super(NavigableMap<K, V> navigableMap) {
        return m16022throw(navigableMap, null);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <K, V> SortedMap<K, V> m16020switch(SortedMap<K, V> sortedMap, @b51 Object obj) {
        return new Creturn(sortedMap, obj);
    }

    /* renamed from: this, reason: not valid java name */
    public static <E> Deque<E> m16021this(Deque<E> deque, @b51 Object obj) {
        return new Celse(deque, obj);
    }

    @li0
    /* renamed from: throw, reason: not valid java name */
    public static <K, V> NavigableMap<K, V> m16022throw(NavigableMap<K, V> navigableMap, @b51 Object obj) {
        return new Cfinal(navigableMap, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public static <E> SortedSet<E> m16023throws(SortedSet<E> sortedSet, @b51 Object obj) {
        return new Cstatic(sortedSet, obj);
    }

    @li0
    /* renamed from: while, reason: not valid java name */
    public static <E> NavigableSet<E> m16025while(NavigableSet<E> navigableSet) {
        return m16012import(navigableSet, null);
    }

    /* renamed from: com.google.common.collect.l3$const, reason: invalid class name */
    public static class Cconst<E> extends Ccase<E> implements Multiset<E> {
        private static final long serialVersionUID = 0;

        @l01
        public transient Set<E> elementSet;

        @l01
        public transient Set<Multiset.Entry<E>> entrySet;

        public Cconst(Multiset<E> multiset, @b51 Object obj) {
            super(multiset, obj);
        }

        @Override // com.google.common.collect.Multiset
        public int add(E e, int i) {
            int iAdd;
            synchronized (this.mutex) {
                iAdd = delegate().add(e, i);
            }
            return iAdd;
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            int iCount;
            synchronized (this.mutex) {
                iCount = delegate().count(obj);
            }
            return iCount;
        }

        @Override // com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set;
            synchronized (this.mutex) {
                if (this.elementSet == null) {
                    this.elementSet = l3.m16015package(delegate().elementSet(), this.mutex);
                }
                set = this.elementSet;
            }
            return set;
        }

        @Override // com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = l3.m16015package(delegate().entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        @Override // com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            int iRemove;
            synchronized (this.mutex) {
                iRemove = delegate().remove(obj, i);
            }
            return iRemove;
        }

        @Override // com.google.common.collect.Multiset
        public int setCount(E e, int i) {
            int count;
            synchronized (this.mutex) {
                count = delegate().setCount(e, i);
            }
            return count;
        }

        @Override // com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public Multiset<E> delegate() {
            return (Multiset) super.delegate();
        }

        @Override // com.google.common.collect.Multiset
        public boolean setCount(E e, int i, int i2) {
            boolean count;
            synchronized (this.mutex) {
                count = delegate().setCount(e, i, i2);
            }
            return count;
        }
    }

    /* renamed from: com.google.common.collect.l3$native, reason: invalid class name */
    public static class Cnative<E> extends Ccase<E> implements Set<E> {
        private static final long serialVersionUID = 0;

        public Cnative(Set<E> set, @b51 Object obj) {
            super(set, obj);
        }

        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                zEquals = delegate().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int iHashCode;
            synchronized (this.mutex) {
                iHashCode = delegate().hashCode();
            }
            return iHashCode;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public Set<E> delegate() {
            return (Set) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$return, reason: invalid class name */
    public static class Creturn<K, V> extends Ccatch<K, V> implements SortedMap<K, V> {
        private static final long serialVersionUID = 0;

        public Creturn(SortedMap<K, V> sortedMap, @b51 Object obj) {
            super(sortedMap, obj);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.mutex) {
                comparator = delegate().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K kFirstKey;
            synchronized (this.mutex) {
                kFirstKey = delegate().firstKey();
            }
            return kFirstKey;
        }

        public SortedMap<K, V> headMap(K k) {
            SortedMap<K, V> sortedMapM16020switch;
            synchronized (this.mutex) {
                sortedMapM16020switch = l3.m16020switch(delegate().headMap(k), this.mutex);
            }
            return sortedMapM16020switch;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K kLastKey;
            synchronized (this.mutex) {
                kLastKey = delegate().lastKey();
            }
            return kLastKey;
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            SortedMap<K, V> sortedMapM16020switch;
            synchronized (this.mutex) {
                sortedMapM16020switch = l3.m16020switch(delegate().subMap(k, k2), this.mutex);
            }
            return sortedMapM16020switch;
        }

        public SortedMap<K, V> tailMap(K k) {
            SortedMap<K, V> sortedMapM16020switch;
            synchronized (this.mutex) {
                sortedMapM16020switch = l3.m16020switch(delegate().tailMap(k), this.mutex);
            }
            return sortedMapM16020switch;
        }

        @Override // com.google.common.collect.l3.Ccatch, com.google.common.collect.l3.Cthrow
        public SortedMap<K, V> delegate() {
            return (SortedMap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$while, reason: invalid class name */
    public static class Cwhile<E> extends Ccase<E> implements Queue<E> {
        private static final long serialVersionUID = 0;

        public Cwhile(Queue<E> queue, @b51 Object obj) {
            super(queue, obj);
        }

        @Override // java.util.Queue
        public E element() {
            E eElement;
            synchronized (this.mutex) {
                eElement = delegate().element();
            }
            return eElement;
        }

        @Override // java.util.Queue
        public boolean offer(E e) {
            boolean zOffer;
            synchronized (this.mutex) {
                zOffer = delegate().offer(e);
            }
            return zOffer;
        }

        @Override // java.util.Queue
        public E peek() {
            E ePeek;
            synchronized (this.mutex) {
                ePeek = delegate().peek();
            }
            return ePeek;
        }

        @Override // java.util.Queue
        public E poll() {
            E ePoll;
            synchronized (this.mutex) {
                ePoll = delegate().poll();
            }
            return ePoll;
        }

        @Override // java.util.Queue
        public E remove() {
            E eRemove;
            synchronized (this.mutex) {
                eRemove = delegate().remove();
            }
            return eRemove;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public Queue<E> delegate() {
            return (Queue) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.l3$else, reason: invalid class name */
    public static final class Celse<E> extends Cwhile<E> implements Deque<E> {
        private static final long serialVersionUID = 0;

        public Celse(Deque<E> deque, @b51 Object obj) {
            super(deque, obj);
        }

        @Override // java.util.Deque
        public void addFirst(E e) {
            synchronized (this.mutex) {
                delegate().addFirst(e);
            }
        }

        @Override // java.util.Deque
        public void addLast(E e) {
            synchronized (this.mutex) {
                delegate().addLast(e);
            }
        }

        @Override // java.util.Deque
        public Iterator<E> descendingIterator() {
            Iterator<E> itDescendingIterator;
            synchronized (this.mutex) {
                itDescendingIterator = delegate().descendingIterator();
            }
            return itDescendingIterator;
        }

        @Override // java.util.Deque
        public E getFirst() {
            E first;
            synchronized (this.mutex) {
                first = delegate().getFirst();
            }
            return first;
        }

        @Override // java.util.Deque
        public E getLast() {
            E last;
            synchronized (this.mutex) {
                last = delegate().getLast();
            }
            return last;
        }

        @Override // java.util.Deque
        public boolean offerFirst(E e) {
            boolean zOfferFirst;
            synchronized (this.mutex) {
                zOfferFirst = delegate().offerFirst(e);
            }
            return zOfferFirst;
        }

        @Override // java.util.Deque
        public boolean offerLast(E e) {
            boolean zOfferLast;
            synchronized (this.mutex) {
                zOfferLast = delegate().offerLast(e);
            }
            return zOfferLast;
        }

        @Override // java.util.Deque
        public E peekFirst() {
            E ePeekFirst;
            synchronized (this.mutex) {
                ePeekFirst = delegate().peekFirst();
            }
            return ePeekFirst;
        }

        @Override // java.util.Deque
        public E peekLast() {
            E ePeekLast;
            synchronized (this.mutex) {
                ePeekLast = delegate().peekLast();
            }
            return ePeekLast;
        }

        @Override // java.util.Deque
        public E pollFirst() {
            E ePollFirst;
            synchronized (this.mutex) {
                ePollFirst = delegate().pollFirst();
            }
            return ePollFirst;
        }

        @Override // java.util.Deque
        public E pollLast() {
            E ePollLast;
            synchronized (this.mutex) {
                ePollLast = delegate().pollLast();
            }
            return ePollLast;
        }

        @Override // java.util.Deque
        public E pop() {
            E ePop;
            synchronized (this.mutex) {
                ePop = delegate().pop();
            }
            return ePop;
        }

        @Override // java.util.Deque
        public void push(E e) {
            synchronized (this.mutex) {
                delegate().push(e);
            }
        }

        @Override // java.util.Deque
        public E removeFirst() {
            E eRemoveFirst;
            synchronized (this.mutex) {
                eRemoveFirst = delegate().removeFirst();
            }
            return eRemoveFirst;
        }

        @Override // java.util.Deque
        public boolean removeFirstOccurrence(Object obj) {
            boolean zRemoveFirstOccurrence;
            synchronized (this.mutex) {
                zRemoveFirstOccurrence = delegate().removeFirstOccurrence(obj);
            }
            return zRemoveFirstOccurrence;
        }

        @Override // java.util.Deque
        public E removeLast() {
            E eRemoveLast;
            synchronized (this.mutex) {
                eRemoveLast = delegate().removeLast();
            }
            return eRemoveLast;
        }

        @Override // java.util.Deque
        public boolean removeLastOccurrence(Object obj) {
            boolean zRemoveLastOccurrence;
            synchronized (this.mutex) {
                zRemoveLastOccurrence = delegate().removeLastOccurrence(obj);
            }
            return zRemoveLastOccurrence;
        }

        @Override // com.google.common.collect.l3.Cwhile, com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public Deque<E> delegate() {
            return (Deque) super.delegate();
        }
    }

    @af2
    @li0
    /* renamed from: com.google.common.collect.l3$final, reason: invalid class name */
    public static class Cfinal<K, V> extends Creturn<K, V> implements NavigableMap<K, V> {
        private static final long serialVersionUID = 0;

        @l01
        public transient NavigableSet<K> descendingKeySet;

        @l01
        public transient NavigableMap<K, V> descendingMap;

        @l01
        public transient NavigableSet<K> navigableKeySet;

        public Cfinal(NavigableMap<K, V> navigableMap, @b51 Object obj) {
            super(navigableMap, obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().ceilingEntry(k), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            K kCeilingKey;
            synchronized (this.mutex) {
                kCeilingKey = delegate().ceilingKey(k);
            }
            return kCeilingKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            synchronized (this.mutex) {
                NavigableSet<K> navigableSet = this.descendingKeySet;
                if (navigableSet != null) {
                    return navigableSet;
                }
                NavigableSet<K> navigableSetM16012import = l3.m16012import(delegate().descendingKeySet(), this.mutex);
                this.descendingKeySet = navigableSetM16012import;
                return navigableSetM16012import;
            }
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            synchronized (this.mutex) {
                NavigableMap<K, V> navigableMap = this.descendingMap;
                if (navigableMap != null) {
                    return navigableMap;
                }
                NavigableMap<K, V> navigableMapM16022throw = l3.m16022throw(delegate().descendingMap(), this.mutex);
                this.descendingMap = navigableMapM16022throw;
                return navigableMapM16022throw;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().firstEntry(), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().floorEntry(k), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            K kFloorKey;
            synchronized (this.mutex) {
                kFloorKey = delegate().floorKey(k);
            }
            return kFloorKey;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            NavigableMap<K, V> navigableMapM16022throw;
            synchronized (this.mutex) {
                navigableMapM16022throw = l3.m16022throw(delegate().headMap(k, z), this.mutex);
            }
            return navigableMapM16022throw;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().higherEntry(k), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            K kHigherKey;
            synchronized (this.mutex) {
                kHigherKey = delegate().higherKey(k);
            }
            return kHigherKey;
        }

        @Override // com.google.common.collect.l3.Ccatch, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().lastEntry(), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().lowerEntry(k), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            K kLowerKey;
            synchronized (this.mutex) {
                kLowerKey = delegate().lowerKey(k);
            }
            return kLowerKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            synchronized (this.mutex) {
                NavigableSet<K> navigableSet = this.navigableKeySet;
                if (navigableSet != null) {
                    return navigableSet;
                }
                NavigableSet<K> navigableSetM16012import = l3.m16012import(delegate().navigableKeySet(), this.mutex);
                this.navigableKeySet = navigableSetM16012import;
                return navigableSetM16012import;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().pollFirstEntry(), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> entryM16013native;
            synchronized (this.mutex) {
                entryM16013native = l3.m16013native(delegate().pollLastEntry(), this.mutex);
            }
            return entryM16013native;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            NavigableMap<K, V> navigableMapM16022throw;
            synchronized (this.mutex) {
                navigableMapM16022throw = l3.m16022throw(delegate().subMap(k, z, k2, z2), this.mutex);
            }
            return navigableMapM16022throw;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            NavigableMap<K, V> navigableMapM16022throw;
            synchronized (this.mutex) {
                navigableMapM16022throw = l3.m16022throw(delegate().tailMap(k, z), this.mutex);
            }
            return navigableMapM16022throw;
        }

        @Override // com.google.common.collect.l3.Creturn, com.google.common.collect.l3.Ccatch, com.google.common.collect.l3.Cthrow
        public NavigableMap<K, V> delegate() {
            return (NavigableMap) super.delegate();
        }

        @Override // com.google.common.collect.l3.Creturn, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // com.google.common.collect.l3.Creturn, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.l3.Creturn, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    /* renamed from: com.google.common.collect.l3$for, reason: invalid class name */
    public static class Cfor<K, V> extends Cnative<Map.Entry<K, Collection<V>>> {
        private static final long serialVersionUID = 0;

        /* renamed from: com.google.common.collect.l3$for$do, reason: invalid class name */
        public class Cdo extends o3<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>> {

            /* renamed from: com.google.common.collect.l3$for$do$do, reason: invalid class name and collision with other inner class name */
            public class C0102do extends yd0<K, Collection<V>> {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Map.Entry f14447do;

                public C0102do(Map.Entry entry) {
                    this.f14447do = entry;
                }

                @Override // android.support.v4.yd0, android.support.v4.ae0
                /* renamed from: do */
                public Map.Entry<K, Collection<V>> delegate() {
                    return this.f14447do;
                }

                @Override // android.support.v4.yd0, java.util.Map.Entry
                /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
                public Collection<V> getValue() {
                    return l3.m16008finally((Collection) this.f14447do.getValue(), Cfor.this.mutex);
                }
            }

            public Cdo(Iterator it) {
                super(it);
            }

            @Override // com.google.common.collect.o3
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> mo15451do(Map.Entry<K, Collection<V>> entry) {
                return new C0102do(entry);
            }
        }

        public Cfor(Set<Map.Entry<K, Collection<V>>> set, @b51 Object obj) {
            super(set, obj);
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public boolean contains(Object obj) {
            boolean zM15439throw;
            synchronized (this.mutex) {
                zM15439throw = Maps.m15439throw(delegate(), obj);
            }
            return zM15439throw;
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            boolean zM15769for;
            synchronized (this.mutex) {
                zM15769for = Cextends.m15769for(delegate(), collection);
            }
            return zM15769for;
        }

        @Override // com.google.common.collect.l3.Cnative, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            boolean zM15689else;
            if (obj == this) {
                return true;
            }
            synchronized (this.mutex) {
                zM15689else = c3.m15689else(delegate(), obj);
            }
            return zM15689else;
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new Cdo(super.iterator());
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public boolean remove(Object obj) {
            boolean zX;
            synchronized (this.mutex) {
                zX = Maps.x(delegate(), obj);
            }
            return zX;
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            boolean zI;
            synchronized (this.mutex) {
                zI = s1.i(delegate().iterator(), collection);
            }
            return zI;
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            boolean zK;
            synchronized (this.mutex) {
                zK = s1.k(delegate().iterator(), collection);
            }
            return zK;
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public Object[] toArray() {
            Object[] objArrM15836class;
            synchronized (this.mutex) {
                objArrM15836class = h2.m15836class(delegate());
            }
            return objArrM15836class;
        }

        @Override // com.google.common.collect.l3.Ccase, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.mutex) {
                tArr2 = (T[]) h2.m15837const(delegate(), tArr);
            }
            return tArr2;
        }
    }

    /* renamed from: com.google.common.collect.l3$static, reason: invalid class name */
    public static class Cstatic<E> extends Cnative<E> implements SortedSet<E> {
        private static final long serialVersionUID = 0;

        public Cstatic(SortedSet<E> sortedSet, @b51 Object obj) {
            super(sortedSet, obj);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.mutex) {
                comparator = delegate().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedSet
        public E first() {
            E eFirst;
            synchronized (this.mutex) {
                eFirst = delegate().first();
            }
            return eFirst;
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            SortedSet<E> sortedSetM16023throws;
            synchronized (this.mutex) {
                sortedSetM16023throws = l3.m16023throws(delegate().headSet(e), this.mutex);
            }
            return sortedSetM16023throws;
        }

        @Override // java.util.SortedSet
        public E last() {
            E eLast;
            synchronized (this.mutex) {
                eLast = delegate().last();
            }
            return eLast;
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            SortedSet<E> sortedSetM16023throws;
            synchronized (this.mutex) {
                sortedSetM16023throws = l3.m16023throws(delegate().subSet(e, e2), this.mutex);
            }
            return sortedSetM16023throws;
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            SortedSet<E> sortedSetM16023throws;
            synchronized (this.mutex) {
                sortedSetM16023throws = l3.m16023throws(delegate().tailSet(e), this.mutex);
            }
            return sortedSetM16023throws;
        }

        @Override // com.google.common.collect.l3.Cnative, com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public SortedSet<E> delegate() {
            return (SortedSet) super.delegate();
        }
    }

    @af2
    @li0
    /* renamed from: com.google.common.collect.l3$super, reason: invalid class name */
    public static class Csuper<E> extends Cstatic<E> implements NavigableSet<E> {
        private static final long serialVersionUID = 0;

        @l01
        public transient NavigableSet<E> descendingSet;

        public Csuper(NavigableSet<E> navigableSet, @b51 Object obj) {
            super(navigableSet, obj);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            E eCeiling;
            synchronized (this.mutex) {
                eCeiling = delegate().ceiling(e);
            }
            return eCeiling;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return delegate().descendingIterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            synchronized (this.mutex) {
                NavigableSet<E> navigableSet = this.descendingSet;
                if (navigableSet != null) {
                    return navigableSet;
                }
                NavigableSet<E> navigableSetM16012import = l3.m16012import(delegate().descendingSet(), this.mutex);
                this.descendingSet = navigableSetM16012import;
                return navigableSetM16012import;
            }
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            E eFloor;
            synchronized (this.mutex) {
                eFloor = delegate().floor(e);
            }
            return eFloor;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            NavigableSet<E> navigableSetM16012import;
            synchronized (this.mutex) {
                navigableSetM16012import = l3.m16012import(delegate().headSet(e, z), this.mutex);
            }
            return navigableSetM16012import;
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            E eHigher;
            synchronized (this.mutex) {
                eHigher = delegate().higher(e);
            }
            return eHigher;
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            E eLower;
            synchronized (this.mutex) {
                eLower = delegate().lower(e);
            }
            return eLower;
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            E ePollFirst;
            synchronized (this.mutex) {
                ePollFirst = delegate().pollFirst();
            }
            return ePollFirst;
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            E ePollLast;
            synchronized (this.mutex) {
                ePollLast = delegate().pollLast();
            }
            return ePollLast;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            NavigableSet<E> navigableSetM16012import;
            synchronized (this.mutex) {
                navigableSetM16012import = l3.m16012import(delegate().subSet(e, z, e2, z2), this.mutex);
            }
            return navigableSetM16012import;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            NavigableSet<E> navigableSetM16012import;
            synchronized (this.mutex) {
                navigableSetM16012import = l3.m16012import(delegate().tailSet(e, z), this.mutex);
            }
            return navigableSetM16012import;
        }

        @Override // com.google.common.collect.l3.Cstatic, java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return headSet(e, false);
        }

        @Override // com.google.common.collect.l3.Cstatic, java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return tailSet(e, true);
        }

        @Override // com.google.common.collect.l3.Cstatic, com.google.common.collect.l3.Cnative, com.google.common.collect.l3.Ccase, com.google.common.collect.l3.Cthrow
        public NavigableSet<E> delegate() {
            return (NavigableSet) super.delegate();
        }

        @Override // com.google.common.collect.l3.Cstatic, java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return subSet(e, true, e2, false);
        }
    }
}
