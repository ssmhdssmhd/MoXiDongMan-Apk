package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.zd0;
import com.google.common.base.Cpublic;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.base.Supplier;
import com.google.common.collect.Cgoto;
import com.google.common.collect.Ctry;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import com.google.common.collect.c3;
import com.google.common.collect.w0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class b2 {

    /* renamed from: com.google.common.collect.b2$break, reason: invalid class name */
    public static class Cbreak<K, V1, V2> extends com.google.common.collect.Cgoto<K, V2> {

        /* renamed from: case, reason: not valid java name */
        public final Multimap<K, V1> f14099case;

        /* renamed from: else, reason: not valid java name */
        public final Maps.EntryTransformer<? super K, ? super V1, V2> f14100else;

        /* renamed from: com.google.common.collect.b2$break$do, reason: invalid class name */
        public class Cdo implements Maps.EntryTransformer<K, Collection<V1>, Collection<V2>> {
            public Cdo() {
            }

            @Override // com.google.common.collect.Maps.EntryTransformer
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Collection<V2> transformEntry(K k, Collection<V1> collection) {
                return Cbreak.this.mo15593do(k, collection);
            }
        }

        public Cbreak(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            this.f14099case = (Multimap) af1.m205continue(multimap);
            this.f14100else = (Maps.EntryTransformer) af1.m205continue(entryTransformer);
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.f14099case.clear();
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            return this.f14099case.containsKey(obj);
        }

        @Override // com.google.common.collect.Cgoto
        public Map<K, Collection<V2>> createAsMap() {
            return Maps.K(this.f14099case.asMap(), new Cdo());
        }

        @Override // com.google.common.collect.Cgoto
        public Collection<Map.Entry<K, V2>> createEntries() {
            return new Cgoto.Cdo();
        }

        @Override // com.google.common.collect.Cgoto
        public Set<K> createKeySet() {
            return this.f14099case.keySet();
        }

        @Override // com.google.common.collect.Cgoto
        public Multiset<K> createKeys() {
            return this.f14099case.keys();
        }

        @Override // com.google.common.collect.Cgoto
        public Collection<V2> createValues() {
            return Cextends.m15768final(this.f14099case.entries(), Maps.m15420goto(this.f14100else));
        }

        /* renamed from: do, reason: not valid java name */
        public Collection<V2> mo15593do(K k, Collection<V1> collection) {
            Function functionM15417final = Maps.m15417final(this.f14100else, k);
            return collection instanceof List ? x1.m16491abstract((List) collection, functionM15417final) : Cextends.m15768final(collection, functionM15417final);
        }

        @Override // com.google.common.collect.Cgoto
        public Iterator<Map.Entry<K, V2>> entryIterator() {
            return s1.p(this.f14099case.entries().iterator(), Maps.m15415else(this.f14100else));
        }

        @Override // com.google.common.collect.Multimap
        public Collection<V2> get(K k) {
            return mo15593do(k, this.f14099case.get(k));
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean isEmpty() {
            return this.f14099case.isEmpty();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean put(K k, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            return get(obj).remove(obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimap
        public Collection<V2> removeAll(Object obj) {
            return mo15593do(obj, this.f14099case.removeAll(obj));
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public Collection<V2> replaceValues(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.f14099case.size();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V2> multimap) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.collect.b2$case, reason: invalid class name */
    public static abstract class Ccase<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            mo15595do().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return mo15595do().containsEntry(entry.getKey(), entry.getValue());
        }

        /* renamed from: do, reason: not valid java name */
        public abstract Multimap<K, V> mo15595do();

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return mo15595do().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return mo15595do().size();
        }
    }

    /* renamed from: com.google.common.collect.b2$catch, reason: invalid class name */
    public static class Ccatch<K, V> extends Cclass<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public Ccatch(ListMultimap<K, V> listMultimap) {
            super(listMultimap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Ccatch<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Ccatch<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public List<V> get(K k) {
            return Collections.unmodifiableList(delegate().get((ListMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public List<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, android.support.v4.ae0
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.b2$class, reason: invalid class name */
    public static class Cclass<K, V> extends zd0<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        public final Multimap<K, V> delegate;

        @l01
        public transient Collection<Map.Entry<K, V>> entries;

        @l01
        public transient Set<K> keySet;

        @l01
        public transient Multiset<K> keys;

        @l01
        public transient Map<K, Collection<V>> map;

        @l01
        public transient Collection<V> values;

        /* renamed from: com.google.common.collect.b2$class$do, reason: invalid class name */
        public class Cdo implements Function<Collection<V>, Collection<V>> {
            public Cdo() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Collection<V> apply(Collection<V> collection) {
                return b2.b(collection);
            }
        }

        public Cclass(Multimap<K, V> multimap) {
            this.delegate = (Multimap) af1.m205continue(multimap);
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.map;
            if (map != null) {
                return map;
            }
            Map<K, Collection<V>> mapUnmodifiableMap = Collections.unmodifiableMap(Maps.O(this.delegate.asMap(), new Cdo()));
            this.map = mapUnmodifiableMap;
            return mapUnmodifiableMap;
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.entries;
            if (collection != null) {
                return collection;
            }
            Collection<Map.Entry<K, V>> collectionM15591volatile = b2.m15591volatile(this.delegate.entries());
            this.entries = collectionM15591volatile;
            return collectionM15591volatile;
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Collection<V> get(K k) {
            return b2.b(this.delegate.get(k));
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set = this.keySet;
            if (set != null) {
                return set;
            }
            Set<K> setUnmodifiableSet = Collections.unmodifiableSet(this.delegate.keySet());
            this.keySet = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset = this.keys;
            if (multiset != null) {
                return multiset;
            }
            Multiset<K> multisetM15653finally = c2.m15653finally(this.delegate.keys());
            this.keys = multisetM15653finally;
            return multisetM15653finally;
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Collection<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection = this.values;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionUnmodifiableCollection = Collections.unmodifiableCollection(this.delegate.values());
            this.values = collectionUnmodifiableCollection;
            return collectionUnmodifiableCollection;
        }

        @Override // android.support.v4.zd0, android.support.v4.ae0
        public Multimap<K, V> delegate() {
            return this.delegate;
        }

        @Override // android.support.v4.zd0, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.collect.b2$const, reason: invalid class name */
    public static class Cconst<K, V> extends Cclass<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public Cconst(SetMultimap<K, V> setMultimap) {
            super(setMultimap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cconst<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cconst<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return Maps.W(delegate().entries());
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public Set<V> get(K k) {
            return Collections.unmodifiableSet(delegate().get((SetMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public Set<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2.Cclass, android.support.v4.zd0, android.support.v4.ae0
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.b2$do, reason: invalid class name */
    public static final class Cdo<K, V> extends Maps.d<K, Collection<V>> {

        /* renamed from: new, reason: not valid java name */
        @hf2
        private final Multimap<K, V> f14103new;

        /* renamed from: com.google.common.collect.b2$do$do, reason: invalid class name and collision with other inner class name */
        public class C0087do extends Maps.Cnative<K, Collection<V>> {

            /* renamed from: com.google.common.collect.b2$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0088do implements Function<K, Collection<V>> {
                public C0088do() {
                }

                @Override // com.google.common.base.Function
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Collection<V> apply(K k) {
                    return Cdo.this.f14103new.get(k);
                }
            }

            public C0087do() {
            }

            @Override // com.google.common.collect.Maps.Cnative
            /* renamed from: do */
            public Map<K, Collection<V>> mo15461do() {
                return Cdo.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Maps.m15411const(Cdo.this.f14103new.keySet(), new C0088do());
            }

            @Override // com.google.common.collect.Maps.Cnative, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Cdo.this.m15599else(((Map.Entry) obj).getKey());
                return true;
            }
        }

        public Cdo(Multimap<K, V> multimap) {
            this.f14103new = (Multimap) af1.m205continue(multimap);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            if (containsKey(obj)) {
                return this.f14103new.removeAll(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f14103new.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f14103new.containsKey(obj);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<K, Collection<V>>> mo15456do() {
            return new C0087do();
        }

        /* renamed from: else, reason: not valid java name */
        public void m15599else(Object obj) {
            this.f14103new.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f14103new.isEmpty();
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return this.f14103new.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14103new.keySet().size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            if (containsKey(obj)) {
                return this.f14103new.get(obj);
            }
            return null;
        }
    }

    /* renamed from: com.google.common.collect.b2$else, reason: invalid class name */
    public static class Celse<K, V> extends com.google.common.collect.Cthis<K> {

        /* renamed from: for, reason: not valid java name */
        @hf2
        public final Multimap<K, V> f14106for;

        /* renamed from: com.google.common.collect.b2$else$do, reason: invalid class name */
        public class Cdo extends o3<Map.Entry<K, Collection<V>>, Multiset.Entry<K>> {

            /* renamed from: com.google.common.collect.b2$else$do$do, reason: invalid class name and collision with other inner class name */
            public class C0089do extends c2.Ccase<K> {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Map.Entry f14108do;

                public C0089do(Map.Entry entry) {
                    this.f14108do = entry;
                }

                @Override // com.google.common.collect.Multiset.Entry
                public int getCount() {
                    return ((Collection) this.f14108do.getValue()).size();
                }

                @Override // com.google.common.collect.Multiset.Entry
                public K getElement() {
                    return (K) this.f14108do.getKey();
                }
            }

            public Cdo(Iterator it) {
                super(it);
            }

            @Override // com.google.common.collect.o3
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Multiset.Entry<K> mo15451do(Map.Entry<K, Collection<V>> entry) {
                return new C0089do(entry);
            }
        }

        public Celse(Multimap<K, V> multimap) {
            this.f14106for = multimap;
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f14106for.clear();
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@b51 Object obj) {
            return this.f14106for.containsKey(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@b51 Object obj) {
            Collection collection = (Collection) Maps.C(this.f14106for.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // com.google.common.collect.Cthis
        public int distinctElements() {
            return this.f14106for.asMap().size();
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<K> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
        public Set<K> elementSet() {
            return this.f14106for.keySet();
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<Multiset.Entry<K>> entryIterator() {
            return new Cdo(this.f14106for.asMap().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<K> iterator() {
            return Maps.f(this.f14106for.entries().iterator());
        }

        @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
        public int remove(@b51 Object obj, int i) {
            Cdefault.m15742if(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.C(this.f14106for.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i2 = 0; i2 < i; i2++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return this.f14106for.size();
        }
    }

    /* renamed from: com.google.common.collect.b2$final, reason: invalid class name */
    public static class Cfinal<K, V> extends Cconst<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        public Cfinal(SortedSetMultimap<K, V> sortedSetMultimap) {
            super(sortedSetMultimap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cfinal<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cfinal<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return delegate().valueComparator();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Set get(Object obj) {
            return get((Cfinal<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cfinal<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public SortedSet<V> get(K k) {
            return Collections.unmodifiableSortedSet(delegate().get((SortedSetMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public SortedSet<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, com.google.common.collect.Multimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2.Cconst, com.google.common.collect.b2.Cclass, android.support.v4.zd0, android.support.v4.ae0
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }
    }

    /* renamed from: com.google.common.collect.b2$for, reason: invalid class name */
    public static class Cfor<K, V> extends com.google.common.collect.Ctry<K, V> {

        @li0
        private static final long serialVersionUID = 0;
        public transient Supplier<? extends Collection<V>> factory;

        public Cfor(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
            super(map);
            this.factory = (Supplier) af1.m205continue(supplier);
        }

        @li0
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.factory = (Supplier) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        @li0
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.Ctry
        public Collection<V> createCollection() {
            return this.factory.get();
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.Ctry
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            return collection instanceof NavigableSet ? c3.b((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
        }

        @Override // com.google.common.collect.Ctry
        public Collection<V> wrapCollection(K k, Collection<V> collection) {
            return collection instanceof List ? wrapList(k, (List) collection, null) : collection instanceof NavigableSet ? new Ctry.Cconst(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new Ctry.Csuper(k, (SortedSet) collection, null) : collection instanceof Set ? new Ctry.Cfinal(k, (Set) collection) : new Ctry.Ccatch(k, collection, null);
        }
    }

    /* renamed from: com.google.common.collect.b2$goto, reason: invalid class name */
    public static class Cgoto<K, V> extends com.google.common.collect.Cgoto<K, V> implements SetMultimap<K, V>, Serializable {
        private static final long serialVersionUID = 7845222491160860175L;
        public final Map<K, V> map;

        /* renamed from: com.google.common.collect.b2$goto$do, reason: invalid class name */
        public class Cdo extends c3.Ccatch<V> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Object f14110do;

            /* renamed from: com.google.common.collect.b2$goto$do$do, reason: invalid class name and collision with other inner class name */
            public class C0090do implements Iterator<V> {

                /* renamed from: do, reason: not valid java name */
                public int f14112do;

                public C0090do() {
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.f14112do == 0) {
                        Cdo cdo = Cdo.this;
                        if (Cgoto.this.map.containsKey(cdo.f14110do)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // java.util.Iterator
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.f14112do++;
                    Cdo cdo = Cdo.this;
                    return Cgoto.this.map.get(cdo.f14110do);
                }

                @Override // java.util.Iterator
                public void remove() {
                    Cdefault.m15744try(this.f14112do == 1);
                    this.f14112do = -1;
                    Cdo cdo = Cdo.this;
                    Cgoto.this.map.remove(cdo.f14110do);
                }
            }

            public Cdo(Object obj) {
                this.f14110do = obj;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new C0090do();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Cgoto.this.map.containsKey(this.f14110do) ? 1 : 0;
            }
        }

        public Cgoto(Map<K, V> map) {
            this.map = (Map) af1.m205continue(map);
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.map.clear();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean containsEntry(Object obj, Object obj2) {
            return this.map.entrySet().contains(Maps.b(obj, obj2));
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean containsValue(Object obj) {
            return this.map.containsValue(obj);
        }

        @Override // com.google.common.collect.Cgoto
        public Map<K, Collection<V>> createAsMap() {
            return new Cdo(this);
        }

        @Override // com.google.common.collect.Cgoto
        public Collection<Map.Entry<K, V>> createEntries() {
            throw new AssertionError("unreachable");
        }

        @Override // com.google.common.collect.Cgoto
        public Set<K> createKeySet() {
            return this.map.keySet();
        }

        @Override // com.google.common.collect.Cgoto
        public Multiset<K> createKeys() {
            return new Celse(this);
        }

        @Override // com.google.common.collect.Cgoto
        public Collection<V> createValues() {
            return this.map.values();
        }

        @Override // com.google.common.collect.Cgoto
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return this.map.entrySet().iterator();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cgoto<K, V>) obj);
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public int hashCode() {
            return this.map.hashCode();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            return this.map.entrySet().remove(Maps.b(obj, obj2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cgoto<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.map.size();
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return this.map.entrySet();
        }

        @Override // com.google.common.collect.Multimap
        public Set<V> get(K k) {
            return new Cdo(k);
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimap
        public Set<V> removeAll(Object obj) {
            HashSet hashSet = new HashSet(2);
            if (!this.map.containsKey(obj)) {
                return hashSet;
            }
            hashSet.add(this.map.remove(obj));
            return hashSet;
        }

        @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.collect.b2$if, reason: invalid class name */
    public static class Cif<K, V> extends com.google.common.collect.Cnew<K, V> {

        @li0
        private static final long serialVersionUID = 0;
        public transient Supplier<? extends List<V>> factory;

        public Cif(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
            super(map);
            this.factory = (Supplier) af1.m205continue(supplier);
        }

        @li0
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.factory = (Supplier) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        @li0
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.Cnew, com.google.common.collect.Ctry
        public List<V> createCollection() {
            return this.factory.get();
        }
    }

    /* renamed from: com.google.common.collect.b2$new, reason: invalid class name */
    public static class Cnew<K, V> extends com.google.common.collect.Cclass<K, V> {

        @li0
        private static final long serialVersionUID = 0;
        public transient Supplier<? extends Set<V>> factory;

        public Cnew(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
            super(map);
            this.factory = (Supplier) af1.m205continue(supplier);
        }

        @li0
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.factory = (Supplier) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        @li0
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            return collection instanceof NavigableSet ? c3.b((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
        public Collection<V> wrapCollection(K k, Collection<V> collection) {
            return collection instanceof NavigableSet ? new Ctry.Cconst(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new Ctry.Csuper(k, (SortedSet) collection, null) : new Ctry.Cfinal(k, (Set) collection);
        }

        @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
        public Set<V> createCollection() {
            return this.factory.get();
        }
    }

    /* renamed from: com.google.common.collect.b2$this, reason: invalid class name */
    public static final class Cthis<K, V1, V2> extends Cbreak<K, V1, V2> implements ListMultimap<K, V2> {
        public Cthis(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(listMultimap, entryTransformer);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cbreak, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((Cthis<K, V1, V2>) obj);
        }

        @Override // com.google.common.collect.b2.Cbreak
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<V2> mo15593do(K k, Collection<V1> collection) {
            return x1.m16491abstract((List) collection, Maps.m15417final(this.f14100else, k));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cbreak, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((Cthis<K, V1, V2>) obj, iterable);
        }

        @Override // com.google.common.collect.b2.Cbreak, com.google.common.collect.Multimap
        public List<V2> get(K k) {
            return mo15593do(k, this.f14099case.get(k));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2.Cbreak, com.google.common.collect.Multimap
        public List<V2> removeAll(Object obj) {
            return mo15593do(obj, this.f14099case.removeAll(obj));
        }

        @Override // com.google.common.collect.b2.Cbreak, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
        public List<V2> replaceValues(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    private b2() {
    }

    public static <K, V> SortedSetMultimap<K, V> a(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap instanceof Cfinal ? sortedSetMultimap : new Cfinal(sortedSetMultimap);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <K, V1, V2> Multimap<K, V2> m15554abstract(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new Cbreak(multimap, entryTransformer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> Collection<V> b(Collection<V> collection) {
        return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
    }

    /* renamed from: break, reason: not valid java name */
    private static <K, V> Multimap<K, V> m15555break(FilteredMultimap<K, V> filteredMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        return new n(filteredMultimap.unfiltered(), Cpublic.m15173new(filteredMultimap.entryPredicate(), predicate));
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static <K, V> Map<K, SortedSet<V>> m15556case(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap.asMap();
    }

    /* renamed from: catch, reason: not valid java name */
    private static <K, V> SetMultimap<K, V> m15557catch(FilteredSetMultimap<K, V> filteredSetMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        return new o(filteredSetMultimap.unfiltered(), Cpublic.m15173new(filteredSetMultimap.entryPredicate(), predicate));
    }

    /* renamed from: class, reason: not valid java name */
    public static <K, V> ListMultimap<K, V> m15558class(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        if (!(listMultimap instanceof p)) {
            return new p(listMultimap, predicate);
        }
        p pVar = (p) listMultimap;
        return new p(pVar.unfiltered(), Cpublic.m15173new(pVar.f14535else, predicate));
    }

    /* renamed from: const, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15559const(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        if (multimap instanceof SetMultimap) {
            return m15565final((SetMultimap) multimap, predicate);
        }
        if (multimap instanceof ListMultimap) {
            return m15558class((ListMultimap) multimap, predicate);
        }
        if (!(multimap instanceof q)) {
            return multimap instanceof FilteredMultimap ? m15555break((FilteredMultimap) multimap, Maps.h(predicate)) : new q(multimap, predicate);
        }
        q qVar = (q) multimap;
        return new q(qVar.f14534case, Cpublic.m15173new(qVar.f14535else, predicate));
    }

    /* renamed from: continue, reason: not valid java name */
    public static <K, V1, V2> ListMultimap<K, V2> m15560continue(ListMultimap<K, V1> listMultimap, Function<? super V1, V2> function) {
        af1.m205continue(function);
        return m15577private(listMultimap, Maps.m15438this(function));
    }

    /* renamed from: default, reason: not valid java name */
    public static <K, V> ListMultimap<K, V> m15561default(ListMultimap<K, V> listMultimap) {
        return l3.m16000catch(listMultimap, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m15563else(Multimap<?, ?> multimap, @b51 Object obj) {
        if (obj == multimap) {
            return true;
        }
        if (obj instanceof Multimap) {
            return multimap.asMap().equals(((Multimap) obj).asMap());
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15564extends(Multimap<K, V> multimap) {
        return l3.m16002const(multimap, null);
    }

    /* renamed from: final, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15565final(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        if (!(setMultimap instanceof r)) {
            return setMultimap instanceof FilteredSetMultimap ? m15557catch((FilteredSetMultimap) setMultimap, Maps.h(predicate)) : new r(setMultimap, predicate);
        }
        r rVar = (r) setMultimap;
        return new r(rVar.unfiltered(), Cpublic.m15173new(rVar.f14535else, predicate));
    }

    /* renamed from: finally, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15566finally(SetMultimap<K, V> setMultimap) {
        return l3.m16018static(setMultimap, null);
    }

    @o8
    /* renamed from: for, reason: not valid java name */
    public static <K, V> Map<K, List<V>> m15567for(ListMultimap<K, V> listMultimap) {
        return listMultimap.asMap();
    }

    /* renamed from: goto, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15568goto(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        af1.m205continue(predicate);
        return multimap instanceof SetMultimap ? m15586this((SetMultimap) multimap, predicate) : multimap instanceof FilteredMultimap ? m15555break((FilteredMultimap) multimap, predicate) : new n((Multimap) af1.m205continue(multimap), predicate);
    }

    /* renamed from: implements, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15570implements(Multimap<K, V> multimap) {
        return ((multimap instanceof Cclass) || (multimap instanceof b1)) ? multimap : new Cclass(multimap);
    }

    /* renamed from: import, reason: not valid java name */
    public static <K, V> w0<K, V> m15571import(Iterable<V> iterable, Function<? super V, K> function) {
        return m15574native(iterable.iterator(), function);
    }

    @Deprecated
    /* renamed from: instanceof, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15572instanceof(h1<K, V> h1Var) {
        return (SetMultimap) af1.m205continue(h1Var);
    }

    @Deprecated
    /* renamed from: interface, reason: not valid java name */
    public static <K, V> ListMultimap<K, V> m15573interface(w0<K, V> w0Var) {
        return (ListMultimap) af1.m205continue(w0Var);
    }

    /* renamed from: native, reason: not valid java name */
    public static <K, V> w0<K, V> m15574native(Iterator<V> it, Function<? super V, K> function) {
        af1.m205continue(function);
        w0.Cdo cdoBuilder = w0.builder();
        while (it.hasNext()) {
            V next = it.next();
            af1.m227strictfp(next, it);
            cdoBuilder.mo15544case(function.apply(next), next);
        }
        return cdoBuilder.mo15546do();
    }

    @o8
    /* renamed from: new, reason: not valid java name */
    public static <K, V> Map<K, Collection<V>> m15575new(Multimap<K, V> multimap) {
        return multimap.asMap();
    }

    /* renamed from: package, reason: not valid java name */
    public static <K, V> SortedSetMultimap<K, V> m15576package(SortedSetMultimap<K, V> sortedSetMultimap) {
        return l3.m16003default(sortedSetMultimap, null);
    }

    /* renamed from: private, reason: not valid java name */
    public static <K, V1, V2> ListMultimap<K, V2> m15577private(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new Cthis(listMultimap, entryTransformer);
    }

    /* renamed from: protected, reason: not valid java name */
    public static <K, V> ListMultimap<K, V> m15578protected(ListMultimap<K, V> listMultimap) {
        return ((listMultimap instanceof Ccatch) || (listMultimap instanceof w0)) ? listMultimap : new Ccatch(listMultimap);
    }

    @lf
    /* renamed from: public, reason: not valid java name */
    public static <K, V, M extends Multimap<K, V>> M m15579public(Multimap<? extends V, ? extends K> multimap, M m) {
        af1.m205continue(m);
        for (Map.Entry<? extends V, ? extends K> entry : multimap.entries()) {
            m.put(entry.getValue(), entry.getKey());
        }
        return m;
    }

    /* renamed from: return, reason: not valid java name */
    public static <K, V> ListMultimap<K, V> m15580return(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
        return new Cif(map, supplier);
    }

    /* renamed from: static, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15581static(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
        return new Cfor(map, supplier);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <K, V1, V2> Multimap<K, V2> m15582strictfp(Multimap<K, V1> multimap, Function<? super V1, V2> function) {
        af1.m205continue(function);
        return m15554abstract(multimap, Maps.m15438this(function));
    }

    /* renamed from: super, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15583super(Multimap<K, V> multimap, Predicate<? super V> predicate) {
        return m15568goto(multimap, Maps.d0(predicate));
    }

    /* renamed from: switch, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15584switch(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
        return new Cnew(map, supplier);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15585synchronized(SetMultimap<K, V> setMultimap) {
        return ((setMultimap instanceof Cconst) || (setMultimap instanceof h1)) ? setMultimap : new Cconst(setMultimap);
    }

    /* renamed from: this, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15586this(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        af1.m205continue(predicate);
        return setMultimap instanceof FilteredSetMultimap ? m15557catch((FilteredSetMultimap) setMultimap, predicate) : new o((SetMultimap) af1.m205continue(setMultimap), predicate);
    }

    /* renamed from: throw, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15587throw(SetMultimap<K, V> setMultimap, Predicate<? super V> predicate) {
        return m15586this(setMultimap, Maps.d0(predicate));
    }

    /* renamed from: throws, reason: not valid java name */
    public static <K, V> SortedSetMultimap<K, V> m15588throws(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
        return new Ctry(map, supplier);
    }

    @Deprecated
    /* renamed from: transient, reason: not valid java name */
    public static <K, V> Multimap<K, V> m15589transient(b1<K, V> b1Var) {
        return (Multimap) af1.m205continue(b1Var);
    }

    @o8
    /* renamed from: try, reason: not valid java name */
    public static <K, V> Map<K, Set<V>> m15590try(SetMultimap<K, V> setMultimap) {
        return setMultimap.asMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public static <K, V> Collection<Map.Entry<K, V>> m15591volatile(Collection<Map.Entry<K, V>> collection) {
        return collection instanceof Set ? Maps.W((Set) collection) : new Maps.Cinstanceof(Collections.unmodifiableCollection(collection));
    }

    /* renamed from: while, reason: not valid java name */
    public static <K, V> SetMultimap<K, V> m15592while(Map<K, V> map) {
        return new Cgoto(map);
    }

    /* renamed from: com.google.common.collect.b2$try, reason: invalid class name */
    public static class Ctry<K, V> extends Csuper<K, V> {

        @li0
        private static final long serialVersionUID = 0;
        public transient Supplier<? extends SortedSet<V>> factory;
        public transient Comparator<? super V> valueComparator;

        public Ctry(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
            super(map);
            this.factory = (Supplier) af1.m205continue(supplier);
            this.valueComparator = supplier.get().comparator();
        }

        @li0
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Supplier<? extends SortedSet<V>> supplier = (Supplier) objectInputStream.readObject();
            this.factory = supplier;
            this.valueComparator = supplier.get().comparator();
            setMap((Map) objectInputStream.readObject());
        }

        @li0
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return this.valueComparator;
        }

        @Override // com.google.common.collect.Csuper, com.google.common.collect.Cclass, com.google.common.collect.Ctry
        public SortedSet<V> createCollection() {
            return this.factory.get();
        }
    }
}
