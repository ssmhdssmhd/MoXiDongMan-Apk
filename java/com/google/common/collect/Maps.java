package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.ce0;
import android.support.v4.ee0;
import android.support.v4.hf2;
import android.support.v4.hy1;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.qd0;
import android.support.v4.yd0;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.collect.MapDifference;
import com.google.common.collect.c3;
import com.google.common.collect.x0;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.helpers.MessageFormatter;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class Maps {

    public interface EntryTransformer<K, V1, V2> {
        V2 transformEntry(@b51 K k, @b51 V1 v1);
    }

    @li0
    public static class a<K, V> extends d0<K, V> implements NavigableMap<K, V>, Serializable {
        private final NavigableMap<K, ? extends V> delegate;

        /* renamed from: do, reason: not valid java name */
        @l01
        private transient a<K, V> f13994do;

        public a(NavigableMap<K, ? extends V> navigableMap) {
            this.delegate = navigableMap;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return Maps.Z(this.delegate.ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return this.delegate.ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return c3.b(this.delegate.descendingKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            a<K, V> aVar = this.f13994do;
            if (aVar != null) {
                return aVar;
            }
            a<K, V> aVar2 = new a<>(this.delegate.descendingMap(), this);
            this.f13994do = aVar2;
            return aVar2;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return Maps.Z(this.delegate.firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return Maps.Z(this.delegate.floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return this.delegate.floorKey(k);
        }

        @Override // com.google.common.collect.d0, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return Maps.Z(this.delegate.higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return this.delegate.higherKey(k);
        }

        @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return Maps.Z(this.delegate.lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return Maps.Z(this.delegate.lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return this.delegate.lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return c3.b(this.delegate.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.d0, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.d0, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.Y(this.delegate.headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.Y(this.delegate.subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.Y(this.delegate.tailMap(k, z));
        }

        public a(NavigableMap<K, ? extends V> navigableMap, a<K, V> aVar) {
            this.delegate = navigableMap;
            this.f13994do = aVar;
        }

        @Override // com.google.common.collect.d0, com.google.common.collect.z, android.support.v4.ae0
        public SortedMap<K, V> delegate() {
            return Collections.unmodifiableSortedMap(this.delegate);
        }
    }

    @li0
    /* renamed from: com.google.common.collect.Maps$abstract, reason: invalid class name */
    public static class Cabstract<K, V> extends Cstrictfp<K, V> implements NavigableSet<K> {
        public Cabstract(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return mo15445do().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return mo15445do().descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return mo15445do().floorKey(k);
        }

        @Override // com.google.common.collect.Maps.Cstrictfp
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableMap<K, V> mo15447if() {
            return (NavigableMap) this.f14013do;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return mo15445do().headMap(k, z).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return mo15445do().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return mo15445do().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Maps.g(mo15445do().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Maps.g(mo15445do().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return mo15445do().subMap(k, z, k2, z2).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return mo15445do().tailMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.Cstrictfp, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // com.google.common.collect.Maps.Cstrictfp, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.Cstrictfp, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k) {
            return tailSet(k, true);
        }
    }

    public static class b<V> implements MapDifference.ValueDifference<V> {

        /* renamed from: do, reason: not valid java name */
        @b51
        private final V f13995do;

        /* renamed from: if, reason: not valid java name */
        @b51
        private final V f13996if;

        private b(@b51 V v, @b51 V v2) {
            this.f13995do = v;
            this.f13996if = v2;
        }

        /* renamed from: do, reason: not valid java name */
        public static <V> MapDifference.ValueDifference<V> m15448do(@b51 V v, @b51 V v2) {
            return new b(v, v2);
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof MapDifference.ValueDifference)) {
                return false;
            }
            MapDifference.ValueDifference valueDifference = (MapDifference.ValueDifference) obj;
            return com.google.common.base.Cthrow.m15205do(this.f13995do, valueDifference.leftValue()) && com.google.common.base.Cthrow.m15205do(this.f13996if, valueDifference.rightValue());
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public int hashCode() {
            return com.google.common.base.Cthrow.m15206if(this.f13995do, this.f13996if);
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public V leftValue() {
            return this.f13995do;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public V rightValue() {
            return this.f13996if;
        }

        public String toString() {
            return "(" + this.f13995do + ", " + this.f13996if + ")";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Maps$break, reason: invalid class name */
    public static class Cbreak<E> extends c0<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ NavigableSet f13997do;

        public Cbreak(NavigableSet navigableSet) {
            this.f13997do = navigableSet;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Maps.y(super.descendingSet());
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return Maps.A(super.headSet(e));
        }

        @Override // com.google.common.collect.c0, android.support.v4.ee0, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        /* renamed from: if, reason: not valid java name */
        public NavigableSet<E> delegate() {
            return this.f13997do;
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return Maps.A(super.subSet(e, e2));
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return Maps.A(super.tailSet(e));
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return Maps.y(super.headSet(e, z));
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return Maps.y(super.subSet(e, z, e2, z2));
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return Maps.y(super.tailSet(e, z));
        }
    }

    public static class c<K, V> extends AbstractCollection<V> {

        /* renamed from: do, reason: not valid java name */
        @hf2
        public final Map<K, V> f13998do;

        public c(Map<K, V> map) {
            this.f13998do = (Map) af1.m205continue(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            m15450do().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return m15450do().containsValue(obj);
        }

        /* renamed from: do, reason: not valid java name */
        public final Map<K, V> m15450do() {
            return this.f13998do;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return m15450do().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.b0(m15450do().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : m15450do().entrySet()) {
                    if (com.google.common.base.Cthrow.m15205do(obj, entry.getValue())) {
                        m15450do().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) af1.m205continue(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetM15706return = c3.m15706return();
                for (Map.Entry<K, V> entry : m15450do().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetM15706return.add(entry.getKey());
                    }
                }
                return m15450do().keySet().removeAll(hashSetM15706return);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) af1.m205continue(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetM15706return = c3.m15706return();
                for (Map.Entry<K, V> entry : m15450do().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetM15706return.add(entry.getKey());
                    }
                }
                return m15450do().keySet().retainAll(hashSetM15706return);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return m15450do().size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$case, reason: invalid class name */
    public static class Ccase<K, V> extends o3<Map.Entry<K, V>, V> {
        public Ccase(Iterator it) {
            super(it);
        }

        @Override // com.google.common.collect.o3
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public V mo15451do(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$catch, reason: invalid class name */
    public static class Ccatch<K, V> extends com.google.common.collect.Celse<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Map.Entry f13999do;

        public Ccatch(Map.Entry entry) {
            this.f13999do = entry;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K getKey() {
            return (K) this.f13999do.getKey();
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V getValue() {
            return (V) this.f13999do.getValue();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$class, reason: invalid class name */
    public static class Cclass<K, V> extends ac2<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f14000do;

        public Cclass(Iterator it) {
            this.f14000do = it;
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return Maps.U((Map.Entry) this.f14000do.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14000do.hasNext();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    /* renamed from: com.google.common.collect.Maps$const, reason: invalid class name */
    public static class Cconst<K, V1, V2> implements EntryTransformer<K, V1, V2> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function f14001do;

        public Cconst(Function function) {
            this.f14001do = function;
        }

        @Override // com.google.common.collect.Maps.EntryTransformer
        public V2 transformEntry(K k, V1 v1) {
            return (V2) this.f14001do.apply(v1);
        }
    }

    /* renamed from: com.google.common.collect.Maps$continue, reason: invalid class name */
    public static class Ccontinue<K, V> extends Csuper<K, V> implements SortedMap<K, V> {
        public Ccontinue(SortedSet<K> sortedSet, Function<? super K, V> function) {
            super(sortedSet, function);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return mo15454new().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo15454new().first();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return Maps.m15410class(mo15454new().headSet(k), this.f14042try);
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return Maps.A(mo15454new());
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo15454new().last();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return Maps.m15410class(mo15454new().subSet(k, k2), this.f14042try);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return Maps.m15410class(mo15454new().tailSet(k), this.f14042try);
        }

        @Override // com.google.common.collect.Maps.Csuper
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedSet<K> mo15454new() {
            return (SortedSet) super.mo15454new();
        }
    }

    @ki0
    public static abstract class d<K, V> extends AbstractMap<K, V> {

        /* renamed from: do, reason: not valid java name */
        @l01
        private transient Set<Map.Entry<K, V>> f14002do;

        /* renamed from: for, reason: not valid java name */
        @l01
        private transient Collection<V> f14003for;

        /* renamed from: if, reason: not valid java name */
        @l01
        private transient Set<K> f14004if;

        /* renamed from: do, reason: not valid java name */
        public abstract Set<Map.Entry<K, V>> mo15456do();

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f14002do;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setMo15456do = mo15456do();
            this.f14002do = setMo15456do;
            return setMo15456do;
        }

        /* renamed from: for, reason: not valid java name */
        public Collection<V> mo15457for() {
            return new c(this);
        }

        /* renamed from: if, reason: not valid java name */
        public Set<K> mo15458if() {
            return new Cfinally(this);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            Set<K> set = this.f14004if;
            if (set != null) {
                return set;
            }
            Set<K> setMo15458if = mo15458if();
            this.f14004if = setMo15458if;
            return setMo15458if;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f14003for;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionMo15457for = mo15457for();
            this.f14003for = collectionMo15457for;
            return collectionMo15457for;
        }
    }

    /* renamed from: com.google.common.collect.Maps$default, reason: invalid class name */
    public static final class Cdefault<K, V> extends c<K, V> {

        /* renamed from: for, reason: not valid java name */
        public final Predicate<? super Map.Entry<K, V>> f14005for;

        /* renamed from: if, reason: not valid java name */
        public final Map<K, V> f14006if;

        public Cdefault(Map<K, V> map, Map<K, V> map2, Predicate<? super Map.Entry<K, V>> predicate) {
            super(map);
            this.f14006if = map2;
            this.f14005for = predicate;
        }

        @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            Iterator<Map.Entry<K, V>> it = this.f14006if.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f14005for.apply(next) && com.google.common.base.Cthrow.m15205do(next.getValue(), obj)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f14006if.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f14005for.apply(next) && collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f14006if.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f14005for.apply(next) && !collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return x1.m16507native(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) x1.m16507native(iterator()).toArray(tArr);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V1, V2] */
    /* renamed from: com.google.common.collect.Maps$do, reason: invalid class name */
    public static class Cdo<V1, V2> implements Function<V1, V2> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ EntryTransformer f14007do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f14008if;

        public Cdo(EntryTransformer entryTransformer, Object obj) {
            this.f14007do = entryTransformer;
            this.f14008if = obj;
        }

        @Override // com.google.common.base.Function
        public V2 apply(@b51 V1 v1) {
            return (V2) this.f14007do.transformEntry(this.f14008if, v1);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$else, reason: invalid class name */
    public static class Celse<K, V> extends o3<K, Map.Entry<K, V>> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function f14009if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(Iterator it, Function function) {
            super(it);
            this.f14009if = function;
        }

        @Override // com.google.common.collect.o3
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo15451do(K k) {
            return Maps.b(k, this.f14009if.apply(k));
        }
    }

    /* renamed from: com.google.common.collect.Maps$extends, reason: invalid class name */
    public static abstract class Cextends<K, V> extends AbstractMap<K, V> {

        /* renamed from: com.google.common.collect.Maps$extends$do, reason: invalid class name */
        public class Cdo extends Cnative<K, V> {
            public Cdo() {
            }

            @Override // com.google.common.collect.Maps.Cnative
            /* renamed from: do, reason: not valid java name */
            public Map<K, V> mo15461do() {
                return Cextends.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return Cextends.this.mo15460do();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            s1.m16228goto(mo15460do());
        }

        /* renamed from: do, reason: not valid java name */
        public abstract Iterator<Map.Entry<K, V>> mo15460do();

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new Cdo();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public abstract int size();
    }

    /* renamed from: com.google.common.collect.Maps$final, reason: invalid class name */
    public static abstract class Cfinal<K, V> extends d<K, V> {

        /* renamed from: new, reason: not valid java name */
        public final Map<K, V> f14011new;

        /* renamed from: try, reason: not valid java name */
        public final Predicate<? super Map.Entry<K, V>> f14012try;

        public Cfinal(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
            this.f14011new = map;
            this.f14012try = predicate;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f14011new.containsKey(obj) && m15462new(obj, this.f14011new.get(obj));
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: for */
        public Collection<V> mo15457for() {
            return new Cdefault(this, this.f14011new, this.f14012try);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            V v = this.f14011new.get(obj);
            if (v == null || !m15462new(obj, v)) {
                return null;
            }
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m15462new(@b51 Object obj, @b51 V v) {
            return this.f14012try.apply(Maps.b(obj, v));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            af1.m220new(m15462new(k, v));
            return this.f14011new.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                af1.m220new(m15462new(entry.getKey(), entry.getValue()));
            }
            this.f14011new.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (containsKey(obj)) {
                return this.f14011new.remove(obj);
            }
            return null;
        }
    }

    /* renamed from: com.google.common.collect.Maps$finally, reason: invalid class name */
    public static class Cfinally<K, V> extends c3.Ccatch<K> {

        /* renamed from: do, reason: not valid java name */
        @hf2
        public final Map<K, V> f14013do;

        public Cfinally(Map<K, V> map) {
            this.f14013do = (Map) af1.m205continue(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo15447if().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return mo15447if().containsKey(obj);
        }

        /* renamed from: do */
        public Map<K, V> mo15447if() {
            return this.f14013do;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo15447if().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return Maps.f(mo15447if().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            mo15447if().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo15447if().size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V2] */
    /* renamed from: com.google.common.collect.Maps$for, reason: invalid class name */
    public static class Cfor<K, V2> extends com.google.common.collect.Celse<K, V2> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Map.Entry f14014do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ EntryTransformer f14015if;

        public Cfor(Map.Entry entry, EntryTransformer entryTransformer) {
            this.f14014do = entry;
            this.f14015if = entryTransformer;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K getKey() {
            return (K) this.f14014do.getKey();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V2 getValue() {
            return (V2) this.f14015if.transformEntry(this.f14014do.getKey(), this.f14014do.getValue());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    /* renamed from: com.google.common.collect.Maps$if, reason: invalid class name */
    public static class Cif<K, V1, V2> implements Function<Map.Entry<K, V1>, V2> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ EntryTransformer f14017do;

        public Cif(EntryTransformer entryTransformer) {
            this.f14017do = entryTransformer;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public V2 apply(Map.Entry<K, V1> entry) {
            return (V2) this.f14017do.transformEntry(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: com.google.common.collect.Maps$implements, reason: invalid class name */
    public static class Cimplements<K, V> extends z<K, V> implements BiMap<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        public final BiMap<? extends K, ? extends V> delegate;

        @bo1
        @l01
        public BiMap<V, K> inverse;
        public final Map<K, V> unmodifiableMap;

        @l01
        public transient Set<V> values;

        public Cimplements(BiMap<? extends K, ? extends V> biMap, @b51 BiMap<V, K> biMap2) {
            this.unmodifiableMap = Collections.unmodifiableMap(biMap);
            this.delegate = biMap;
            this.inverse = biMap2;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap = this.inverse;
            if (biMap != null) {
                return biMap;
            }
            Cimplements cimplements = new Cimplements(this.delegate.inverse(), this);
            this.inverse = cimplements;
            return cimplements;
        }

        @Override // com.google.common.collect.z, android.support.v4.ae0
        public Map<K, V> delegate() {
            return this.unmodifiableMap;
        }

        @Override // com.google.common.collect.z, java.util.Map
        public Set<V> values() {
            Set<V> set = this.values;
            if (set != null) {
                return set;
            }
            Set<V> setUnmodifiableSet = Collections.unmodifiableSet(this.delegate.values());
            this.values = setUnmodifiableSet;
            return setUnmodifiableSet;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.collect.Maps$import, reason: invalid class name */
    public static abstract class Cimport implements Function<Map.Entry<?, ?>, Object> {
        public static final Cimport KEY;
        public static final Cimport VALUE;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cimport[] f14018do;

        /* renamed from: com.google.common.collect.Maps$import$do, reason: invalid class name */
        public enum Cdo extends Cimport {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.Function
            @b51
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        /* renamed from: com.google.common.collect.Maps$import$if, reason: invalid class name */
        public enum Cif extends Cimport {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.Function
            @b51
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        static {
            Cdo cdo = new Cdo("KEY", 0);
            KEY = cdo;
            Cif cif = new Cif("VALUE", 1);
            VALUE = cif;
            f14018do = new Cimport[]{cdo, cif};
        }

        private Cimport(String str, int i) {
        }

        public static Cimport valueOf(String str) {
            return (Cimport) Enum.valueOf(Cimport.class, str);
        }

        public static Cimport[] values() {
            return (Cimport[]) f14018do.clone();
        }

        public /* synthetic */ Cimport(String str, int i, Ctry ctry) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.collect.Maps$instanceof, reason: invalid class name */
    public static class Cinstanceof<K, V> extends qd0<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        private final Collection<Map.Entry<K, V>> f14019do;

        public Cinstanceof(Collection<Map.Entry<K, V>> collection) {
            this.f14019do = collection;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return Maps.V(this.f14019do.iterator());
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // android.support.v4.qd0, android.support.v4.ae0
        public Collection<Map.Entry<K, V>> delegate() {
            return this.f14019do;
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.Maps$interface, reason: invalid class name */
    public static class Cinterface<K, V1, V2> extends Cextends<K, V2> {

        /* renamed from: do, reason: not valid java name */
        public final Map<K, V1> f14020do;

        /* renamed from: if, reason: not valid java name */
        public final EntryTransformer<? super K, ? super V1, V2> f14021if;

        public Cinterface(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            this.f14020do = (Map) af1.m205continue(map);
            this.f14021if = (EntryTransformer) af1.m205continue(entryTransformer);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f14020do.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f14020do.containsKey(obj);
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<K, V2>> mo15460do() {
            return s1.p(this.f14020do.entrySet().iterator(), Maps.m15415else(this.f14021if));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 get(Object obj) {
            V1 v1 = this.f14020do.get(obj);
            if (v1 != null || this.f14020do.containsKey(obj)) {
                return this.f14021if.transformEntry(obj, v1);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f14020do.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 remove(Object obj) {
            if (this.f14020do.containsKey(obj)) {
                return this.f14021if.transformEntry(obj, this.f14020do.remove(obj));
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14020do.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new c(this);
        }
    }

    /* renamed from: com.google.common.collect.Maps$native, reason: invalid class name */
    public static abstract class Cnative<K, V> extends c3.Ccatch<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo15461do().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object objC = Maps.C(mo15461do(), key);
            if (com.google.common.base.Cthrow.m15205do(objC, entry.getValue())) {
                return objC != null || mo15461do().containsKey(key);
            }
            return false;
        }

        /* renamed from: do */
        public abstract Map<K, V> mo15461do();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo15461do().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return mo15461do().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) af1.m205continue(collection));
            } catch (UnsupportedOperationException unused) {
                return c3.m15715transient(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) af1.m205continue(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetM15687default = c3.m15687default(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        hashSetM15687default.add(((Map.Entry) obj).getKey());
                    }
                }
                return mo15461do().keySet().retainAll(hashSetM15687default);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo15461do().size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    /* renamed from: com.google.common.collect.Maps$new, reason: invalid class name */
    public static class Cnew<K, V1, V2> implements Function<Map.Entry<K, V1>, Map.Entry<K, V2>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ EntryTransformer f14022do;

        public Cnew(EntryTransformer entryTransformer) {
            this.f14022do = entryTransformer;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
            return Maps.N(this.f14022do, entry);
        }
    }

    /* renamed from: com.google.common.collect.Maps$package, reason: invalid class name */
    public static class Cpackage<K, V> implements MapDifference<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final Map<K, V> f14023do;

        /* renamed from: for, reason: not valid java name */
        public final Map<K, V> f14024for;

        /* renamed from: if, reason: not valid java name */
        public final Map<K, V> f14025if;

        /* renamed from: new, reason: not valid java name */
        public final Map<K, MapDifference.ValueDifference<V>> f14026new;

        public Cpackage(Map<K, V> map, Map<K, V> map2, Map<K, V> map3, Map<K, MapDifference.ValueDifference<V>> map4) {
            this.f14023do = Maps.X(map);
            this.f14025if = Maps.X(map2);
            this.f14024for = Maps.X(map3);
            this.f14026new = Maps.X(map4);
        }

        @Override // com.google.common.collect.MapDifference
        public boolean areEqual() {
            return this.f14023do.isEmpty() && this.f14025if.isEmpty() && this.f14026new.isEmpty();
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return this.f14026new;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesInCommon() {
            return this.f14024for;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesOnlyOnLeft() {
            return this.f14023do;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesOnlyOnRight() {
            return this.f14025if;
        }

        @Override // com.google.common.collect.MapDifference
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MapDifference)) {
                return false;
            }
            MapDifference mapDifference = (MapDifference) obj;
            return entriesOnlyOnLeft().equals(mapDifference.entriesOnlyOnLeft()) && entriesOnlyOnRight().equals(mapDifference.entriesOnlyOnRight()) && entriesInCommon().equals(mapDifference.entriesInCommon()) && entriesDiffering().equals(mapDifference.entriesDiffering());
        }

        @Override // com.google.common.collect.MapDifference
        public int hashCode() {
            return com.google.common.base.Cthrow.m15206if(entriesOnlyOnLeft(), entriesOnlyOnRight(), entriesInCommon(), entriesDiffering());
        }

        public String toString() {
            if (areEqual()) {
                return "equal";
            }
            StringBuilder sb = new StringBuilder("not equal");
            if (!this.f14023do.isEmpty()) {
                sb.append(": only on left=");
                sb.append(this.f14023do);
            }
            if (!this.f14025if.isEmpty()) {
                sb.append(": only on right=");
                sb.append(this.f14025if);
            }
            if (!this.f14026new.isEmpty()) {
                sb.append(": value differences=");
                sb.append(this.f14026new);
            }
            return sb.toString();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.Maps$private, reason: invalid class name */
    public static final class Cprivate<K, V> extends com.google.common.collect.Cbreak<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final NavigableSet<K> f14027do;

        /* renamed from: if, reason: not valid java name */
        private final Function<? super K, V> f14028if;

        public Cprivate(NavigableSet<K> navigableSet, Function<? super K, V> function) {
            this.f14027do = (NavigableSet) af1.m205continue(navigableSet);
            this.f14028if = (Function) af1.m205continue(function);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f14027do.clear();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.f14027do.comparator();
        }

        @Override // com.google.common.collect.Cbreak, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.m15409catch(this.f14027do.descendingSet(), this.f14028if);
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<K, V>> mo15460do() {
            return Maps.m15411const(this.f14027do, this.f14028if);
        }

        @Override // com.google.common.collect.Cbreak, java.util.AbstractMap, java.util.Map
        @b51
        public V get(@b51 Object obj) {
            if (com.google.common.collect.Cextends.m15763catch(this.f14027do, obj)) {
                return this.f14028if.apply(obj);
            }
            return null;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.m15409catch(this.f14027do.headSet(k, z), this.f14028if);
        }

        @Override // com.google.common.collect.Cbreak
        /* renamed from: if, reason: not valid java name */
        public Iterator<Map.Entry<K, V>> mo15465if() {
            return descendingMap().entrySet().iterator();
        }

        @Override // com.google.common.collect.Cbreak, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Maps.y(this.f14027do);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14027do.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.m15409catch(this.f14027do.subSet(k, z, k2, z2), this.f14028if);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.m15409catch(this.f14027do.tailSet(k, z), this.f14028if);
        }
    }

    @li0
    /* renamed from: com.google.common.collect.Maps$protected, reason: invalid class name */
    public static class Cprotected<K, V1, V2> extends Ctransient<K, V1, V2> implements NavigableMap<K, V2> {
        public Cprotected(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(navigableMap, entryTransformer);
        }

        @b51
        /* renamed from: else, reason: not valid java name */
        private Map.Entry<K, V2> m15466else(@b51 Map.Entry<K, V1> entry) {
            if (entry == null) {
                return null;
            }
            return Maps.N(this.f14021if, entry);
        }

        @Override // com.google.common.collect.Maps.Ctransient, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> ceilingEntry(K k) {
            return m15466else(mo15469if().ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return mo15469if().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return mo15469if().descendingKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> descendingMap() {
            return Maps.L(mo15469if().descendingMap(), this.f14021if);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> firstEntry() {
            return m15466else(mo15469if().firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> floorEntry(K k) {
            return m15466else(mo15469if().floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return mo15469if().floorKey(k);
        }

        @Override // com.google.common.collect.Maps.Ctransient
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, V1> mo15469if() {
            return (NavigableMap) super.mo15469if();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> higherEntry(K k) {
            return m15466else(mo15469if().higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return mo15469if().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lastEntry() {
            return m15466else(mo15469if().lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lowerEntry(K k) {
            return m15466else(mo15469if().lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return mo15469if().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return mo15469if().navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.Ctransient, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollFirstEntry() {
            return m15466else(mo15469if().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollLastEntry() {
            return m15466else(mo15469if().pollLastEntry());
        }

        @Override // com.google.common.collect.Maps.Ctransient, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> headMap(K k, boolean z) {
            return Maps.L(mo15469if().headMap(k, z), this.f14021if);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.L(mo15469if().subMap(k, z, k2, z2), this.f14021if);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(K k, boolean z) {
            return Maps.L(mo15469if().tailMap(k, z), this.f14021if);
        }
    }

    /* renamed from: com.google.common.collect.Maps$public, reason: invalid class name */
    public static final class Cpublic<K, V> extends Creturn<K, V> implements BiMap<K, V> {

        /* renamed from: else, reason: not valid java name */
        @bo1
        private final BiMap<V, K> f14029else;

        /* renamed from: com.google.common.collect.Maps$public$do, reason: invalid class name */
        public static class Cdo implements Predicate<Map.Entry<V, K>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Predicate f14030do;

            public Cdo(Predicate predicate) {
                this.f14030do = predicate;
            }

            @Override // com.google.common.base.Predicate
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public boolean apply(Map.Entry<V, K> entry) {
                return this.f14030do.apply(Maps.b(entry.getValue(), entry.getKey()));
            }
        }

        public Cpublic(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
            super(biMap, predicate);
            this.f14029else = new Cpublic(biMap.inverse(), m15472else(predicate), this);
        }

        /* renamed from: else, reason: not valid java name */
        private static <K, V> Predicate<Map.Entry<V, K>> m15472else(Predicate<? super Map.Entry<K, V>> predicate) {
            return new Cdo(predicate);
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(@b51 K k, @b51 V v) {
            af1.m220new(m15462new(k, v));
            return m15473goto().forcePut(k, v);
        }

        /* renamed from: goto, reason: not valid java name */
        public BiMap<K, V> m15473goto() {
            return (BiMap) this.f14011new;
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            return this.f14029else;
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map
        public Set<V> values() {
            return this.f14029else.keySet();
        }

        private Cpublic(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate, BiMap<V, K> biMap2) {
            super(biMap, predicate);
            this.f14029else = biMap2;
        }
    }

    /* renamed from: com.google.common.collect.Maps$return, reason: invalid class name */
    public static class Creturn<K, V> extends Cfinal<K, V> {

        /* renamed from: case, reason: not valid java name */
        public final Set<Map.Entry<K, V>> f14031case;

        /* renamed from: com.google.common.collect.Maps$return$do, reason: invalid class name */
        public class Cdo extends ce0<Map.Entry<K, V>> {

            /* renamed from: com.google.common.collect.Maps$return$do$do, reason: invalid class name and collision with other inner class name */
            public class C0084do extends o3<Map.Entry<K, V>, Map.Entry<K, V>> {

                /* renamed from: com.google.common.collect.Maps$return$do$do$do, reason: invalid class name and collision with other inner class name */
                public class C0085do extends yd0<K, V> {

                    /* renamed from: do, reason: not valid java name */
                    public final /* synthetic */ Map.Entry f14034do;

                    public C0085do(Map.Entry entry) {
                        this.f14034do = entry;
                    }

                    @Override // android.support.v4.yd0, android.support.v4.ae0
                    /* renamed from: do */
                    public Map.Entry<K, V> delegate() {
                        return this.f14034do;
                    }

                    @Override // android.support.v4.yd0, java.util.Map.Entry
                    public V setValue(V v) {
                        af1.m220new(Creturn.this.m15462new(getKey(), v));
                        return (V) super.setValue(v);
                    }
                }

                public C0084do(Iterator it) {
                    super(it);
                }

                @Override // com.google.common.collect.o3
                /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
                public Map.Entry<K, V> mo15451do(Map.Entry<K, V> entry) {
                    return new C0085do(entry);
                }
            }

            private Cdo() {
            }

            @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C0084do(Creturn.this.f14031case.iterator());
            }

            public /* synthetic */ Cdo(Creturn creturn, Ctry ctry) {
                this();
            }

            @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
            public Set<Map.Entry<K, V>> delegate() {
                return Creturn.this.f14031case;
            }
        }

        /* renamed from: com.google.common.collect.Maps$return$if, reason: invalid class name */
        public class Cif extends Cfinally<K, V> {
            public Cif() {
                super(Creturn.this);
            }

            @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!Creturn.this.containsKey(obj)) {
                    return false;
                }
                Creturn.this.f14011new.remove(obj);
                return true;
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                Creturn creturn = Creturn.this;
                return Creturn.m15476try(creturn.f14011new, creturn.f14012try, collection);
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                Creturn creturn = Creturn.this;
                return Creturn.m15475case(creturn.f14011new, creturn.f14012try, collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return x1.m16507native(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) x1.m16507native(iterator()).toArray(tArr);
            }
        }

        public Creturn(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
            super(map, predicate);
            this.f14031case = c3.m15712this(map.entrySet(), this.f14012try);
        }

        /* renamed from: case, reason: not valid java name */
        public static <K, V> boolean m15475case(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (predicate.apply(next) && !collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: try, reason: not valid java name */
        public static <K, V> boolean m15476try(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (predicate.apply(next) && collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<K, V>> mo15456do() {
            return new Cdo(this, null);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: if */
        public Set<K> mo15458if() {
            return new Cif();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.Maps$static, reason: invalid class name */
    public static class Cstatic<K, V> extends com.google.common.collect.Cbreak<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final NavigableMap<K, V> f14037do;

        /* renamed from: for, reason: not valid java name */
        private final Map<K, V> f14038for;

        /* renamed from: if, reason: not valid java name */
        private final Predicate<? super Map.Entry<K, V>> f14039if;

        /* renamed from: com.google.common.collect.Maps$static$do, reason: invalid class name */
        public class Cdo extends Cabstract<K, V> {
            public Cdo(NavigableMap navigableMap) {
                super(navigableMap);
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return Creturn.m15476try(Cstatic.this.f14037do, Cstatic.this.f14039if, collection);
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return Creturn.m15475case(Cstatic.this.f14037do, Cstatic.this.f14039if, collection);
            }
        }

        public Cstatic(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
            this.f14037do = (NavigableMap) af1.m205continue(navigableMap);
            this.f14039if = predicate;
            this.f14038for = new Creturn(navigableMap, predicate);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f14038for.clear();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.f14037do.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return this.f14038for.containsKey(obj);
        }

        @Override // com.google.common.collect.Cbreak, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.m15416extends(this.f14037do.descendingMap(), this.f14039if);
        }

        @Override // com.google.common.collect.Maps.Cextends
        /* renamed from: do */
        public Iterator<Map.Entry<K, V>> mo15460do() {
            return s1.m16248throws(this.f14037do.entrySet().iterator(), this.f14039if);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return this.f14038for.entrySet();
        }

        @Override // com.google.common.collect.Cbreak, java.util.AbstractMap, java.util.Map
        @b51
        public V get(@b51 Object obj) {
            return this.f14038for.get(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.m15416extends(this.f14037do.headMap(k, z), this.f14039if);
        }

        @Override // com.google.common.collect.Cbreak
        /* renamed from: if */
        public Iterator<Map.Entry<K, V>> mo15465if() {
            return s1.m16248throws(this.f14037do.descendingMap().entrySet().iterator(), this.f14039if);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return !r1.m16187for(this.f14037do.entrySet(), this.f14039if);
        }

        @Override // com.google.common.collect.Cbreak, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new Cdo(this);
        }

        @Override // com.google.common.collect.Cbreak, java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) r1.m16198protected(this.f14037do.entrySet(), this.f14039if);
        }

        @Override // com.google.common.collect.Cbreak, java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) r1.m16198protected(this.f14037do.descendingMap().entrySet(), this.f14039if);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            return this.f14038for.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f14038for.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@b51 Object obj) {
            return this.f14038for.remove(obj);
        }

        @Override // com.google.common.collect.Maps.Cextends, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f14038for.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.m15416extends(this.f14037do.subMap(k, z, k2, z2), this.f14039if);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.m15416extends(this.f14037do.tailMap(k, z), this.f14039if);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Collection<V> values() {
            return new Cdefault(this, this.f14037do, this.f14039if);
        }
    }

    /* renamed from: com.google.common.collect.Maps$strictfp, reason: invalid class name */
    public static class Cstrictfp<K, V> extends Cfinally<K, V> implements SortedSet<K> {
        public Cstrictfp(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return mo15447if().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return mo15447if().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new Cstrictfp(mo15447if().headMap(k));
        }

        @Override // com.google.common.collect.Maps.Cfinally
        /* renamed from: if */
        public SortedMap<K, V> mo15447if() {
            return (SortedMap) super.mo15447if();
        }

        @Override // java.util.SortedSet
        public K last() {
            return mo15447if().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new Cstrictfp(mo15447if().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new Cstrictfp(mo15447if().tailMap(k));
        }
    }

    /* renamed from: com.google.common.collect.Maps$super, reason: invalid class name */
    public static class Csuper<K, V> extends d<K, V> {

        /* renamed from: new, reason: not valid java name */
        private final Set<K> f14041new;

        /* renamed from: try, reason: not valid java name */
        public final Function<? super K, V> f14042try;

        /* renamed from: com.google.common.collect.Maps$super$do, reason: invalid class name */
        public class Cdo extends Cnative<K, V> {
            public Cdo() {
            }

            @Override // com.google.common.collect.Maps.Cnative
            /* renamed from: do */
            public Map<K, V> mo15461do() {
                return Csuper.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return Maps.m15411const(Csuper.this.mo15454new(), Csuper.this.f14042try);
            }
        }

        public Csuper(Set<K> set, Function<? super K, V> function) {
            this.f14041new = (Set) af1.m205continue(set);
            this.f14042try = (Function) af1.m205continue(function);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            mo15454new().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return mo15454new().contains(obj);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<K, V>> mo15456do() {
            return new Cdo();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: for */
        public Collection<V> mo15457for() {
            return com.google.common.collect.Cextends.m15768final(this.f14041new, this.f14042try);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@b51 Object obj) {
            if (com.google.common.collect.Cextends.m15763catch(mo15454new(), obj)) {
                return this.f14042try.apply(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: if */
        public Set<K> mo15458if() {
            return Maps.z(mo15454new());
        }

        /* renamed from: new */
        public Set<K> mo15454new() {
            return this.f14041new;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@b51 Object obj) {
            if (mo15454new().remove(obj)) {
                return this.f14042try.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return mo15454new().size();
        }
    }

    /* renamed from: com.google.common.collect.Maps$switch, reason: invalid class name */
    public static class Cswitch<K, V> extends Creturn<K, V> implements SortedMap<K, V> {

        /* renamed from: com.google.common.collect.Maps$switch$do, reason: invalid class name */
        public class Cdo extends Creturn<K, V>.Cif implements SortedSet<K> {
            public Cdo() {
                super();
            }

            @Override // java.util.SortedSet
            public Comparator<? super K> comparator() {
                return Cswitch.this.m15482this().comparator();
            }

            @Override // java.util.SortedSet
            public K first() {
                return (K) Cswitch.this.firstKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> headSet(K k) {
                return (SortedSet) Cswitch.this.headMap(k).keySet();
            }

            @Override // java.util.SortedSet
            public K last() {
                return (K) Cswitch.this.lastKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> subSet(K k, K k2) {
                return (SortedSet) Cswitch.this.subMap(k, k2).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> tailSet(K k) {
                return (SortedSet) Cswitch.this.tailMap(k).keySet();
            }
        }

        public Cswitch(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
            super(sortedMap, predicate);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return m15482this().comparator();
        }

        @Override // com.google.common.collect.Maps.Creturn, com.google.common.collect.Maps.d
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedSet<K> mo15458if() {
            return new Cdo();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return keySet().iterator().next();
        }

        @Override // com.google.common.collect.Maps.d, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public SortedSet<K> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return new Cswitch(m15482this().headMap(k), this.f14012try);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            SortedMap<K, V> sortedMapM15482this = m15482this();
            while (true) {
                K kLastKey = sortedMapM15482this.lastKey();
                if (m15462new(kLastKey, this.f14011new.get(kLastKey))) {
                    return kLastKey;
                }
                sortedMapM15482this = m15482this().headMap(kLastKey);
            }
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return new Cswitch(m15482this().subMap(k, k2), this.f14012try);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return new Cswitch(m15482this().tailMap(k), this.f14012try);
        }

        /* renamed from: this, reason: not valid java name */
        public SortedMap<K, V> m15482this() {
            return (SortedMap) this.f14011new;
        }
    }

    /* renamed from: com.google.common.collect.Maps$synchronized, reason: invalid class name */
    public static class Csynchronized<K, V> extends Cinstanceof<K, V> implements Set<Map.Entry<K, V>> {
        public Csynchronized(Set<Map.Entry<K, V>> set) {
            super(set);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return c3.m15689else(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return c3.m15683catch(this);
        }
    }

    /* renamed from: com.google.common.collect.Maps$throw, reason: invalid class name */
    public static final class Cthrow<A, B> extends com.google.common.base.Celse<A, B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final BiMap<A, B> bimap;

        public Cthrow(BiMap<A, B> biMap) {
            this.bimap = (BiMap) af1.m205continue(biMap);
        }

        /* renamed from: do, reason: not valid java name */
        private static <X, Y> Y m15483do(BiMap<X, Y> biMap, X x) {
            Y y = biMap.get(x);
            af1.m225return(y != null, "No non-null mapping present for input: %s", x);
            return y;
        }

        @Override // com.google.common.base.Celse
        public A doBackward(B b) {
            return (A) m15483do(this.bimap.inverse(), b);
        }

        @Override // com.google.common.base.Celse
        public B doForward(A a) {
            return (B) m15483do(this.bimap, a);
        }

        @Override // com.google.common.base.Celse, com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cthrow) {
                return this.bimap.equals(((Cthrow) obj).bimap);
            }
            return false;
        }

        public int hashCode() {
            return this.bimap.hashCode();
        }

        public String toString() {
            return "Maps.asConverter(" + this.bimap + ")";
        }
    }

    /* renamed from: com.google.common.collect.Maps$throws, reason: invalid class name */
    public static class Cthrows<K, V> extends Cfinal<K, V> {

        /* renamed from: case, reason: not valid java name */
        public final Predicate<? super K> f14046case;

        public Cthrows(Map<K, V> map, Predicate<? super K> predicate, Predicate<? super Map.Entry<K, V>> predicate2) {
            super(map, predicate2);
            this.f14046case = predicate;
        }

        @Override // com.google.common.collect.Maps.Cfinal, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f14011new.containsKey(obj) && this.f14046case.apply(obj);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<K, V>> mo15456do() {
            return c3.m15712this(this.f14011new.entrySet(), this.f14012try);
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: if */
        public Set<K> mo15458if() {
            return c3.m15712this(this.f14011new.keySet(), this.f14046case);
        }
    }

    /* renamed from: com.google.common.collect.Maps$transient, reason: invalid class name */
    public static class Ctransient<K, V1, V2> extends Cinterface<K, V1, V2> implements SortedMap<K, V2> {
        public Ctransient(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(sortedMap, entryTransformer);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return mo15469if().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo15469if().firstKey();
        }

        public SortedMap<K, V2> headMap(K k) {
            return Maps.M(mo15469if().headMap(k), this.f14021if);
        }

        /* renamed from: if */
        public SortedMap<K, V1> mo15469if() {
            return (SortedMap) this.f14020do;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo15469if().lastKey();
        }

        public SortedMap<K, V2> subMap(K k, K k2) {
            return Maps.M(mo15469if().subMap(k, k2), this.f14021if);
        }

        public SortedMap<K, V2> tailMap(K k) {
            return Maps.M(mo15469if().tailMap(k), this.f14021if);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* renamed from: com.google.common.collect.Maps$try, reason: invalid class name */
    public static class Ctry<K, V> extends o3<Map.Entry<K, V>, K> {
        public Ctry(Iterator it) {
            super(it);
        }

        @Override // com.google.common.collect.o3
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public K mo15451do(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* renamed from: com.google.common.collect.Maps$volatile, reason: invalid class name */
    public static class Cvolatile<K, V> extends Cpackage<K, V> implements SortedMapDifference<K, V> {
        public Cvolatile(SortedMap<K, V> sortedMap, SortedMap<K, V> sortedMap2, SortedMap<K, V> sortedMap3, SortedMap<K, MapDifference.ValueDifference<V>> sortedMap4) {
            super(sortedMap, sortedMap2, sortedMap3, sortedMap4);
        }

        @Override // com.google.common.collect.Maps.Cpackage, com.google.common.collect.MapDifference
        public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return (SortedMap) super.entriesDiffering();
        }

        @Override // com.google.common.collect.Maps.Cpackage, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesInCommon() {
            return (SortedMap) super.entriesInCommon();
        }

        @Override // com.google.common.collect.Maps.Cpackage, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesOnlyOnLeft() {
            return (SortedMap) super.entriesOnlyOnLeft();
        }

        @Override // com.google.common.collect.Maps.Cpackage, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesOnlyOnRight() {
            return (SortedMap) super.entriesOnlyOnRight();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.Maps$while, reason: invalid class name */
    public static abstract class Cwhile<K, V> extends z<K, V> implements NavigableMap<K, V> {

        /* renamed from: do, reason: not valid java name */
        @l01
        private transient Comparator<? super K> f14047do;

        /* renamed from: for, reason: not valid java name */
        @l01
        private transient NavigableSet<K> f14048for;

        /* renamed from: if, reason: not valid java name */
        @l01
        private transient Set<Map.Entry<K, V>> f14049if;

        /* renamed from: com.google.common.collect.Maps$while$do, reason: invalid class name */
        public class Cdo extends Cnative<K, V> {
            public Cdo() {
            }

            @Override // com.google.common.collect.Maps.Cnative
            /* renamed from: do */
            public Map<K, V> mo15461do() {
                return Cwhile.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return Cwhile.this.mo15488if();
            }
        }

        /* renamed from: new, reason: not valid java name */
        private static <T> k2<T> m15485new(Comparator<T> comparator) {
            return k2.from(comparator).reverse();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return mo15487for().floorEntry(k);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return mo15487for().floorKey(k);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.f14047do;
            if (comparator != null) {
                return comparator;
            }
            Comparator<? super K> comparator2 = mo15487for().comparator();
            if (comparator2 == null) {
                comparator2 = k2.natural();
            }
            k2 k2VarM15485new = m15485new(comparator2);
            this.f14047do = k2VarM15485new;
            return k2VarM15485new;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return mo15487for().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return mo15487for();
        }

        /* renamed from: do, reason: not valid java name */
        public Set<Map.Entry<K, V>> m15486do() {
            return new Cdo();
        }

        @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f14049if;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setM15486do = m15486do();
            this.f14049if = setM15486do;
            return setM15486do;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return mo15487for().lastEntry();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return mo15487for().lastKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return mo15487for().ceilingEntry(k);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return mo15487for().ceilingKey(k);
        }

        /* renamed from: for, reason: not valid java name */
        public abstract NavigableMap<K, V> mo15487for();

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return mo15487for().tailMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return mo15487for().lowerEntry(k);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return mo15487for().lowerKey(k);
        }

        /* renamed from: if, reason: not valid java name */
        public abstract Iterator<Map.Entry<K, V>> mo15488if();

        @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return mo15487for().firstEntry();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return mo15487for().firstKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return mo15487for().higherEntry(k);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return mo15487for().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.f14048for;
            if (navigableSet != null) {
                return navigableSet;
            }
            Cabstract cabstract = new Cabstract(this);
            this.f14048for = cabstract;
            return cabstract;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return mo15487for().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return mo15487for().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return mo15487for().subMap(k2, z2, k, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return mo15487for().headMap(k, z).descendingMap();
        }

        @Override // android.support.v4.ae0
        public String toString() {
            return standardToString();
        }

        @Override // com.google.common.collect.z, java.util.Map
        public Collection<V> values() {
            return new c(this);
        }

        @Override // com.google.common.collect.z, android.support.v4.ae0
        public final Map<K, V> delegate() {
            return mo15487for();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    private Maps() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> A(SortedSet<E> sortedSet) {
        return new Cthis(sortedSet);
    }

    public static boolean B(Map<?, ?> map, Object obj) {
        af1.m205continue(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static <V> V C(Map<?, V> map, @b51 Object obj) {
        af1.m205continue(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static <V> V D(Map<?, V> map, Object obj) {
        af1.m205continue(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    @o8
    public static <K extends Comparable<? super K>, V> NavigableMap<K, V> E(NavigableMap<K, V> navigableMap, n2<K> n2Var) {
        if (navigableMap.comparator() != null && navigableMap.comparator() != k2.natural() && n2Var.hasLowerBound() && n2Var.hasUpperBound()) {
            af1.m235try(navigableMap.comparator().compare(n2Var.lowerEndpoint(), n2Var.upperEndpoint()) <= 0, "map is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (n2Var.hasLowerBound() && n2Var.hasUpperBound()) {
            Comparable comparableLowerEndpoint = n2Var.lowerEndpoint();
            com.google.common.collect.Cstatic cstaticLowerBoundType = n2Var.lowerBoundType();
            com.google.common.collect.Cstatic cstatic = com.google.common.collect.Cstatic.CLOSED;
            return navigableMap.subMap(comparableLowerEndpoint, cstaticLowerBoundType == cstatic, n2Var.upperEndpoint(), n2Var.upperBoundType() == cstatic);
        }
        if (n2Var.hasLowerBound()) {
            return navigableMap.tailMap(n2Var.lowerEndpoint(), n2Var.lowerBoundType() == com.google.common.collect.Cstatic.CLOSED);
        }
        if (n2Var.hasUpperBound()) {
            return navigableMap.headMap(n2Var.upperEndpoint(), n2Var.upperBoundType() == com.google.common.collect.Cstatic.CLOSED);
        }
        return (NavigableMap) af1.m205continue(navigableMap);
    }

    public static <K, V> BiMap<K, V> F(BiMap<K, V> biMap) {
        return l3.m16005else(biMap, null);
    }

    @li0
    public static <K, V> NavigableMap<K, V> G(NavigableMap<K, V> navigableMap) {
        return l3.m16019super(navigableMap);
    }

    public static <K, V> x0<K, V> H(Iterable<K> iterable, Function<? super K, V> function) {
        return I(iterable.iterator(), function);
    }

    public static <K, V> x0<K, V> I(Iterator<K> it, Function<? super K, V> function) {
        af1.m205continue(function);
        LinkedHashMap linkedHashMapP = p();
        while (it.hasNext()) {
            K next = it.next();
            linkedHashMapP.put(next, function.apply(next));
        }
        return x0.copyOf((Map) linkedHashMapP);
    }

    public static String J(Map<?, ?> map) {
        StringBuilder sbM15767else = com.google.common.collect.Cextends.m15767else(map.size());
        sbM15767else.append(MessageFormatter.DELIM_START);
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                sbM15767else.append(", ");
            }
            z = false;
            sbM15767else.append(entry.getKey());
            sbM15767else.append(hy1.f2563new);
            sbM15767else.append(entry.getValue());
        }
        sbM15767else.append(MessageFormatter.DELIM_STOP);
        return sbM15767else.toString();
    }

    public static <K, V1, V2> Map<K, V2> K(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new Cinterface(map, entryTransformer);
    }

    @li0
    public static <K, V1, V2> NavigableMap<K, V2> L(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new Cprotected(navigableMap, entryTransformer);
    }

    public static <K, V1, V2> SortedMap<K, V2> M(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new Ctransient(sortedMap, entryTransformer);
    }

    public static <V2, K, V1> Map.Entry<K, V2> N(EntryTransformer<? super K, ? super V1, V2> entryTransformer, Map.Entry<K, V1> entry) {
        af1.m205continue(entryTransformer);
        af1.m205continue(entry);
        return new Cfor(entry, entryTransformer);
    }

    public static <K, V1, V2> Map<K, V2> O(Map<K, V1> map, Function<? super V1, V2> function) {
        return K(map, m15438this(function));
    }

    @li0
    public static <K, V1, V2> NavigableMap<K, V2> P(NavigableMap<K, V1> navigableMap, Function<? super V1, V2> function) {
        return L(navigableMap, m15438this(function));
    }

    public static <K, V1, V2> SortedMap<K, V2> Q(SortedMap<K, V1> sortedMap, Function<? super V1, V2> function) {
        return M(sortedMap, m15438this(function));
    }

    @lf
    public static <K, V> x0<K, V> R(Iterable<V> iterable, Function<? super V, K> function) {
        return S(iterable.iterator(), function);
    }

    @lf
    public static <K, V> x0<K, V> S(Iterator<V> it, Function<? super V, K> function) {
        af1.m205continue(function);
        x0.Cif cifBuilder = x0.builder();
        while (it.hasNext()) {
            V next = it.next();
            cifBuilder.mo15869new(function.apply(next), next);
        }
        try {
            return cifBuilder.mo15865do();
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(e.getMessage() + ". To index multiple values under a key, use Multimaps.index.");
        }
    }

    public static <K, V> BiMap<K, V> T(BiMap<? extends K, ? extends V> biMap) {
        return new Cimplements(biMap, null);
    }

    public static <K, V> Map.Entry<K, V> U(Map.Entry<? extends K, ? extends V> entry) {
        af1.m205continue(entry);
        return new Ccatch(entry);
    }

    public static <K, V> ac2<Map.Entry<K, V>> V(Iterator<Map.Entry<K, V>> it) {
        return new Cclass(it);
    }

    public static <K, V> Set<Map.Entry<K, V>> W(Set<Map.Entry<K, V>> set) {
        return new Csynchronized(Collections.unmodifiableSet(set));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map<K, V> X(Map<K, ? extends V> map) {
        return map instanceof SortedMap ? Collections.unmodifiableSortedMap((SortedMap) map) : Collections.unmodifiableMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public static <K, V> NavigableMap<K, V> Y(NavigableMap<K, ? extends V> navigableMap) {
        af1.m205continue(navigableMap);
        return navigableMap instanceof a ? navigableMap : new a(navigableMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @b51
    public static <K, V> Map.Entry<K, V> Z(@b51 Map.Entry<K, ? extends V> entry) {
        if (entry == null) {
            return null;
        }
        return U(entry);
    }

    @li0
    public static x0<String, String> a(Properties properties) {
        x0.Cif cifBuilder = x0.builder();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            cifBuilder.mo15869new(str, properties.getProperty(str));
        }
        return cifBuilder.mo15865do();
    }

    public static <V> Function<Map.Entry<?, V>, V> a0() {
        return Cimport.VALUE;
    }

    @li0
    /* renamed from: abstract, reason: not valid java name */
    private static <K, V> NavigableMap<K, V> m15406abstract(Cstatic<K, V> cstatic, Predicate<? super Map.Entry<K, V>> predicate) {
        return new Cstatic(((Cstatic) cstatic).f14037do, com.google.common.base.Cpublic.m15173new(((Cstatic) cstatic).f14039if, predicate));
    }

    @ki0(serializable = true)
    public static <K, V> Map.Entry<K, V> b(@b51 K k, @b51 V v) {
        return new s0(k, v);
    }

    public static <K, V> Iterator<V> b0(Iterator<Map.Entry<K, V>> it) {
        return new Ccase(it);
    }

    /* renamed from: break, reason: not valid java name */
    public static <K, V> Map<K, V> m15407break(Set<K> set, Function<? super K, V> function) {
        return new Csuper(set, function);
    }

    @ki0(serializable = true)
    public static <K extends Enum<K>, V> x0<K, V> c(Map<K, ? extends V> map) {
        if (map instanceof t0) {
            return (t0) map;
        }
        Iterator<Map.Entry<K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return x0.of();
        }
        Map.Entry<K, ? extends V> next = it.next();
        K key = next.getKey();
        V value = next.getValue();
        com.google.common.collect.Cdefault.m15740do(key, value);
        EnumMap enumMap = new EnumMap(key.getDeclaringClass());
        enumMap.put((EnumMap) key, (K) value);
        while (it.hasNext()) {
            Map.Entry<K, ? extends V> next2 = it.next();
            K key2 = next2.getKey();
            V value2 = next2.getValue();
            com.google.common.collect.Cdefault.m15740do(key2, value2);
            enumMap.put((EnumMap) key2, (K) value2);
        }
        return t0.asImmutable(enumMap);
    }

    @b51
    public static <V> V c0(@b51 Map.Entry<?, V> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    /* renamed from: case, reason: not valid java name */
    public static <A, B> com.google.common.base.Celse<A, B> m15408case(BiMap<A, B> biMap) {
        return new Cthrow(biMap);
    }

    @li0
    /* renamed from: catch, reason: not valid java name */
    public static <K, V> NavigableMap<K, V> m15409catch(NavigableSet<K> navigableSet, Function<? super K, V> function) {
        return new Cprivate(navigableSet, function);
    }

    /* renamed from: class, reason: not valid java name */
    public static <K, V> SortedMap<K, V> m15410class(SortedSet<K> sortedSet, Function<? super K, V> function) {
        return new Ccontinue(sortedSet, function);
    }

    /* renamed from: const, reason: not valid java name */
    public static <K, V> Iterator<Map.Entry<K, V>> m15411const(Set<K> set, Function<? super K, V> function) {
        return new Celse(set.iterator(), function);
    }

    /* renamed from: continue, reason: not valid java name */
    private static <K, V> SortedMap<K, V> m15412continue(Cswitch<K, V> cswitch, Predicate<? super Map.Entry<K, V>> predicate) {
        return new Cswitch(cswitch.m15482this(), com.google.common.base.Cpublic.m15173new(cswitch.f14012try, predicate));
    }

    public static <E> x0<E, Integer> d(Collection<E> collection) {
        x0.Cif cif = new x0.Cif(collection.size());
        Iterator<E> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            cif.mo15869new(it.next(), Integer.valueOf(i));
            i++;
        }
        return cif.mo15865do();
    }

    public static <V> Predicate<Map.Entry<?, V>> d0(Predicate<? super V> predicate) {
        return com.google.common.base.Cpublic.m15169goto(predicate, a0());
    }

    /* renamed from: default, reason: not valid java name */
    public static <K, V> Map<K, V> m15413default(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
        af1.m205continue(predicate);
        return map instanceof Cfinal ? m15429private((Cfinal) map, predicate) : new Creturn((Map) af1.m205continue(map), predicate);
    }

    public static <K> Function<Map.Entry<K, ?>, K> e() {
        return Cimport.KEY;
    }

    /* renamed from: else, reason: not valid java name */
    public static <K, V1, V2> Function<Map.Entry<K, V1>, Map.Entry<K, V2>> m15415else(EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        af1.m205continue(entryTransformer);
        return new Cnew(entryTransformer);
    }

    @li0
    /* renamed from: extends, reason: not valid java name */
    public static <K, V> NavigableMap<K, V> m15416extends(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
        af1.m205continue(predicate);
        return navigableMap instanceof Cstatic ? m15406abstract((Cstatic) navigableMap, predicate) : new Cstatic((NavigableMap) af1.m205continue(navigableMap), predicate);
    }

    public static <K, V> Iterator<K> f(Iterator<Map.Entry<K, V>> it) {
        return new Ctry(it);
    }

    /* renamed from: final, reason: not valid java name */
    public static <K, V1, V2> Function<V1, V2> m15417final(EntryTransformer<? super K, V1, V2> entryTransformer, K k) {
        af1.m205continue(entryTransformer);
        return new Cdo(entryTransformer, k);
    }

    /* renamed from: finally, reason: not valid java name */
    public static <K, V> SortedMap<K, V> m15418finally(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
        af1.m205continue(predicate);
        return sortedMap instanceof Cswitch ? m15412continue((Cswitch) sortedMap, predicate) : new Cswitch((SortedMap) af1.m205continue(sortedMap), predicate);
    }

    @b51
    public static <K> K g(@b51 Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    /* renamed from: goto, reason: not valid java name */
    public static <K, V1, V2> Function<Map.Entry<K, V1>, V2> m15420goto(EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        af1.m205continue(entryTransformer);
        return new Cif(entryTransformer);
    }

    public static <K> Predicate<Map.Entry<K, ?>> h(Predicate<? super K> predicate) {
        return com.google.common.base.Cpublic.m15169goto(predicate, e());
    }

    public static <K, V> ConcurrentMap<K, V> i() {
        return new ConcurrentHashMap();
    }

    /* renamed from: implements, reason: not valid java name */
    public static <K, V> Map<K, V> m15422implements(Map<K, V> map, Predicate<? super V> predicate) {
        return m15413default(map, d0(predicate));
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m15423import(Map<?, ?> map, @b51 Object obj) {
        return s1.m16252while(b0(map.entrySet().iterator()), obj);
    }

    @li0
    /* renamed from: instanceof, reason: not valid java name */
    public static <K, V> NavigableMap<K, V> m15424instanceof(NavigableMap<K, V> navigableMap, Predicate<? super V> predicate) {
        return m15416extends(navigableMap, d0(predicate));
    }

    @li0
    /* renamed from: interface, reason: not valid java name */
    public static <K, V> NavigableMap<K, V> m15425interface(NavigableMap<K, V> navigableMap, Predicate<? super K> predicate) {
        return m15416extends(navigableMap, h(predicate));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> j(Class<K> cls) {
        return new EnumMap<>((Class) af1.m205continue(cls));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> k(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> HashMap<K, V> l() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> m(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> HashMap<K, V> n(int i) {
        return new HashMap<>(m15435super(i));
    }

    /* renamed from: native, reason: not valid java name */
    public static <K, V> MapDifference<K, V> m15426native(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        return map instanceof SortedMap ? m15432return((SortedMap) map, map2) : m15431public(map, map2, com.google.common.base.Cthis.equals());
    }

    public static <K, V> IdentityHashMap<K, V> o() {
        return new IdentityHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> p() {
        return new LinkedHashMap<>();
    }

    /* renamed from: package, reason: not valid java name */
    private static <K, V> BiMap<K, V> m15428package(Cpublic<K, V> cpublic, Predicate<? super Map.Entry<K, V>> predicate) {
        return new Cpublic(cpublic.m15473goto(), com.google.common.base.Cpublic.m15173new(cpublic.f14012try, predicate));
    }

    /* renamed from: private, reason: not valid java name */
    private static <K, V> Map<K, V> m15429private(Cfinal<K, V> cfinal, Predicate<? super Map.Entry<K, V>> predicate) {
        return new Creturn(cfinal.f14011new, com.google.common.base.Cpublic.m15173new(cfinal.f14012try, predicate));
    }

    /* renamed from: protected, reason: not valid java name */
    public static <K, V> SortedMap<K, V> m15430protected(SortedMap<K, V> sortedMap, Predicate<? super K> predicate) {
        return m15418finally(sortedMap, h(predicate));
    }

    /* renamed from: public, reason: not valid java name */
    public static <K, V> MapDifference<K, V> m15431public(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, com.google.common.base.Cthis<? super V> cthis) {
        af1.m205continue(cthis);
        LinkedHashMap linkedHashMapP = p();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap linkedHashMapP2 = p();
        LinkedHashMap linkedHashMapP3 = p();
        m15433static(map, map2, cthis, linkedHashMapP, linkedHashMap, linkedHashMapP2, linkedHashMapP3);
        return new Cpackage(linkedHashMapP, linkedHashMap, linkedHashMapP2, linkedHashMapP3);
    }

    public static <K, V> LinkedHashMap<K, V> q(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> r(int i) {
        return new LinkedHashMap<>(m15435super(i));
    }

    /* renamed from: return, reason: not valid java name */
    public static <K, V> SortedMapDifference<K, V> m15432return(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        af1.m205continue(sortedMap);
        af1.m205continue(map);
        Comparator comparatorV = v(sortedMap.comparator());
        TreeMap treeMapT = t(comparatorV);
        TreeMap treeMapT2 = t(comparatorV);
        treeMapT2.putAll(map);
        TreeMap treeMapT3 = t(comparatorV);
        TreeMap treeMapT4 = t(comparatorV);
        m15433static(sortedMap, map, com.google.common.base.Cthis.equals(), treeMapT, treeMapT2, treeMapT3, treeMapT4);
        return new Cvolatile(treeMapT, treeMapT2, treeMapT3, treeMapT4);
    }

    public static <K extends Comparable, V> TreeMap<K, V> s() {
        return new TreeMap<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: static, reason: not valid java name */
    private static <K, V> void m15433static(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, com.google.common.base.Cthis<? super V> cthis, Map<K, V> map3, Map<K, V> map4, Map<K, V> map5, Map<K, MapDifference.ValueDifference<V>> map6) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (map2.containsKey(key)) {
                V vRemove = map4.remove(key);
                if (cthis.equivalent(value, vRemove)) {
                    map5.put(key, value);
                } else {
                    map6.put(key, b.m15448do(value, vRemove));
                }
            } else {
                map3.put(key, value);
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <K, V> BiMap<K, V> m15434strictfp(BiMap<K, V> biMap, Predicate<? super K> predicate) {
        af1.m205continue(predicate);
        return m15440throws(biMap, h(predicate));
    }

    /* renamed from: super, reason: not valid java name */
    public static int m15435super(int i) {
        if (i < 3) {
            com.google.common.collect.Cdefault.m15742if(i, "expectedSize");
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m15436switch(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <K, V> SortedMap<K, V> m15437synchronized(SortedMap<K, V> sortedMap, Predicate<? super V> predicate) {
        return m15418finally(sortedMap, d0(predicate));
    }

    public static <C, K extends C, V> TreeMap<K, V> t(@b51 Comparator<C> comparator) {
        return new TreeMap<>(comparator);
    }

    /* renamed from: this, reason: not valid java name */
    public static <K, V1, V2> EntryTransformer<K, V1, V2> m15438this(Function<? super V1, V2> function) {
        af1.m205continue(function);
        return new Cconst(function);
    }

    /* renamed from: throw, reason: not valid java name */
    public static <K, V> boolean m15439throw(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(U((Map.Entry) obj));
        }
        return false;
    }

    /* renamed from: throws, reason: not valid java name */
    public static <K, V> BiMap<K, V> m15440throws(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
        af1.m205continue(biMap);
        af1.m205continue(predicate);
        return biMap instanceof Cpublic ? m15428package((Cpublic) biMap, predicate) : new Cpublic(biMap, predicate);
    }

    /* renamed from: transient, reason: not valid java name */
    public static <K, V> BiMap<K, V> m15441transient(BiMap<K, V> biMap, Predicate<? super V> predicate) {
        return m15440throws(biMap, d0(predicate));
    }

    public static <K, V> TreeMap<K, V> u(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    public static <E> Comparator<? super E> v(@b51 Comparator<? super E> comparator) {
        return comparator != null ? comparator : k2.natural();
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <K, V> Map<K, V> m15443volatile(Map<K, V> map, Predicate<? super K> predicate) {
        af1.m205continue(predicate);
        Predicate predicateH = h(predicate);
        return map instanceof Cfinal ? m15429private((Cfinal) map, predicateH) : new Cthrows((Map) af1.m205continue(map), predicate, predicateH);
    }

    public static <K, V> void w(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m15444while(Map<?, ?> map, @b51 Object obj) {
        return s1.m16252while(f(map.entrySet().iterator()), obj);
    }

    public static <K, V> boolean x(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.remove(U((Map.Entry) obj));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @li0
    public static <E> NavigableSet<E> y(NavigableSet<E> navigableSet) {
        return new Cbreak(navigableSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> z(Set<E> set) {
        return new Cgoto(set);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Maps$goto, reason: invalid class name */
    public static class Cgoto<E> extends ce0<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Set f14016do;

        public Cgoto(Set set) {
            this.f14016do = set;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<E> delegate() {
            return this.f14016do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Maps$this, reason: invalid class name */
    public static class Cthis<E> extends ee0<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ SortedSet f14045do;

        public Cthis(SortedSet sortedSet) {
            this.f14045do = sortedSet;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return Maps.A(super.headSet(e));
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return Maps.A(super.subSet(e, e2));
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return Maps.A(super.tailSet(e));
        }

        @Override // android.support.v4.ee0, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public SortedSet<E> delegate() {
            return this.f14045do;
        }
    }
}
