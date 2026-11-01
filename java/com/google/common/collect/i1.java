package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.collect.r0;
import com.google.common.collect.x0;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class i1<K, V> extends j1<K, V> implements NavigableMap<K, V> {
    private static final long serialVersionUID = 0;

    /* renamed from: case, reason: not valid java name */
    private final transient v0<V> f14318case;

    /* renamed from: else, reason: not valid java name */
    private transient i1<K, V> f14319else;

    /* renamed from: try, reason: not valid java name */
    private final transient x2<K> f14320try;

    /* renamed from: goto, reason: not valid java name */
    private static final Comparator<Comparable> f14316goto = k2.natural();

    /* renamed from: this, reason: not valid java name */
    private static final i1<Comparable, Object> f14317this = new i1<>(m1.emptySet(k2.natural()), v0.of());

    /* renamed from: com.google.common.collect.i1$do, reason: invalid class name */
    public static class Cdo implements Comparator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f14321do;

        public Cdo(Comparator comparator) {
            this.f14321do = comparator;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Map.Entry<K, V> entry, Map.Entry<K, V> entry2) {
            return this.f14321do.compare(entry.getKey(), entry2.getKey());
        }
    }

    /* renamed from: com.google.common.collect.i1$for, reason: invalid class name */
    public static class Cfor<K, V> extends x0.Cif<K, V> {

        /* renamed from: case, reason: not valid java name */
        private transient Object[] f14322case;

        /* renamed from: else, reason: not valid java name */
        private final Comparator<? super K> f14323else;

        /* renamed from: try, reason: not valid java name */
        private transient Object[] f14324try;

        public Cfor(Comparator<? super K> comparator) {
            this(comparator, 4);
        }

        /* renamed from: if, reason: not valid java name */
        private void m15859if(int i) {
            Object[] objArr = this.f14324try;
            if (i > objArr.length) {
                int iM16173case = r0.Cif.m16173case(objArr.length, i);
                this.f14324try = Arrays.copyOf(this.f14324try, iM16173case);
                this.f14322case = Arrays.copyOf(this.f14322case, iM16173case);
            }
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        @o8
        @Deprecated
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor<K, V> mo15868for(Comparator<? super V> comparator) {
            throw new UnsupportedOperationException("Not available on ImmutableSortedMap.Builder");
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor<K, V> mo15869new(K k, V v) {
            m15859if(this.f14850for + 1);
            Cdefault.m15740do(k, v);
            Object[] objArr = this.f14324try;
            int i = this.f14850for;
            objArr[i] = k;
            this.f14322case[i] = v;
            this.f14850for = i + 1;
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor<K, V> mo15871try(Map.Entry<? extends K, ? extends V> entry) {
            super.mo15871try(entry);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        @o8
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor<K, V> mo15861case(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.mo15861case(iterable);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor<K, V> mo15866else(Map<? extends K, ? extends V> map) {
            super.mo15866else(map);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public i1<K, V> mo15865do() {
            int i = this.f14850for;
            if (i == 0) {
                return i1.emptyMap(this.f14323else);
            }
            if (i == 1) {
                return i1.m15857try(this.f14323else, this.f14324try[0], this.f14322case[0]);
            }
            Object[] objArrCopyOf = Arrays.copyOf(this.f14324try, i);
            Arrays.sort(objArrCopyOf, this.f14323else);
            Object[] objArr = new Object[this.f14850for];
            for (int i2 = 0; i2 < this.f14850for; i2++) {
                if (i2 > 0) {
                    int i3 = i2 - 1;
                    if (this.f14323else.compare(objArrCopyOf[i3], objArrCopyOf[i2]) == 0) {
                        throw new IllegalArgumentException("keys required to be distinct but compared as equal: " + objArrCopyOf[i3] + " and " + objArrCopyOf[i2]);
                    }
                }
                objArr[Arrays.binarySearch(objArrCopyOf, this.f14324try[i2], this.f14323else)] = this.f14322case[i2];
            }
            return new i1<>(new x2(v0.asImmutableList(objArrCopyOf), this.f14323else), v0.asImmutableList(objArr));
        }

        private Cfor(Comparator<? super K> comparator, int i) {
            this.f14323else = (Comparator) af1.m205continue(comparator);
            this.f14324try = new Object[i];
            this.f14322case = new Object[i];
        }
    }

    /* renamed from: com.google.common.collect.i1$if, reason: invalid class name */
    public class Cif extends y0<K, V> {

        /* renamed from: com.google.common.collect.i1$if$do, reason: invalid class name */
        public class Cdo extends v0<Map.Entry<K, V>> {
            public Cdo() {
            }

            @Override // com.google.common.collect.r0
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return i1.this.size();
            }

            @Override // java.util.List
            public Map.Entry<K, V> get(int i) {
                return new AbstractMap.SimpleImmutableEntry(i1.this.f14320try.asList().get(i), i1.this.f14318case.get(i));
            }
        }

        public Cif() {
        }

        @Override // com.google.common.collect.g1
        public v0<Map.Entry<K, V>> createAsList() {
            return new Cdo();
        }

        @Override // com.google.common.collect.y0
        public x0<K, V> map() {
            return i1.this;
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    /* renamed from: com.google.common.collect.i1$new, reason: invalid class name */
    public static class Cnew extends x0.Ctry {
        private static final long serialVersionUID = 0;
        private final Comparator<Object> comparator;

        public Cnew(i1<?, ?> i1Var) {
            super(i1Var);
            this.comparator = i1Var.comparator();
        }

        @Override // com.google.common.collect.x0.Ctry
        public Object readResolve() {
            return createMap(new Cfor(this.comparator));
        }
    }

    public i1(x2<K> x2Var, v0<V> v0Var) {
        this(x2Var, v0Var, null);
    }

    /* renamed from: case, reason: not valid java name */
    private static <K extends Comparable<? super K>, V> i1<K, V> m15852case(Map.Entry<K, V>... entryArr) {
        return m15854for(k2.natural(), false, entryArr, entryArr.length);
    }

    public static <K, V> i1<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return m15853do(map, (k2) f14316goto);
    }

    public static <K, V> i1<K, V> copyOfSorted(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = f14316goto;
        }
        if (sortedMap instanceof i1) {
            i1<K, V> i1Var = (i1) sortedMap;
            if (!i1Var.isPartialView()) {
                return i1Var;
            }
        }
        return m15855if(comparator, true, sortedMap.entrySet());
    }

    /* renamed from: do, reason: not valid java name */
    private static <K, V> i1<K, V> m15853do(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean zEquals = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 != null) {
                zEquals = comparator.equals(comparator2);
            } else if (comparator == f14316goto) {
                zEquals = true;
            }
        }
        if (zEquals && (map instanceof i1)) {
            i1<K, V> i1Var = (i1) map;
            if (!i1Var.isPartialView()) {
                return i1Var;
            }
        }
        return m15855if(comparator, zEquals, map.entrySet());
    }

    public static <K, V> i1<K, V> emptyMap(Comparator<? super K> comparator) {
        return k2.natural().equals(comparator) ? of() : new i1<>(m1.emptySet(comparator), v0.of());
    }

    /* renamed from: for, reason: not valid java name */
    private static <K, V> i1<K, V> m15854for(Comparator<? super K> comparator, boolean z, Map.Entry<K, V>[] entryArr, int i) {
        if (i == 0) {
            return emptyMap(comparator);
        }
        if (i == 1) {
            return m15857try(comparator, entryArr[0].getKey(), entryArr[0].getValue());
        }
        Object[] objArr = new Object[i];
        Object[] objArr2 = new Object[i];
        if (z) {
            for (int i2 = 0; i2 < i; i2++) {
                K key = entryArr[i2].getKey();
                V value = entryArr[i2].getValue();
                Cdefault.m15740do(key, value);
                objArr[i2] = key;
                objArr2[i2] = value;
            }
        } else {
            Arrays.sort(entryArr, 0, i, new Cdo(comparator));
            Object key2 = entryArr[0].getKey();
            objArr[0] = key2;
            objArr2[0] = entryArr[0].getValue();
            Cdefault.m15740do(objArr[0], objArr2[0]);
            int i3 = 1;
            while (i3 < i) {
                Object key3 = entryArr[i3].getKey();
                V value2 = entryArr[i3].getValue();
                Cdefault.m15740do(key3, value2);
                objArr[i3] = key3;
                objArr2[i3] = value2;
                x0.checkNoConflict(comparator.compare(key2, key3) != 0, "key", entryArr[i3 - 1], entryArr[i3]);
                i3++;
                key2 = key3;
            }
        }
        return new i1<>(new x2(v0.asImmutableList(objArr), comparator), v0.asImmutableList(objArr2));
    }

    /* renamed from: if, reason: not valid java name */
    private static <K, V> i1<K, V> m15855if(Comparator<? super K> comparator, boolean z, Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) r1.e(iterable, x0.EMPTY_ENTRY_ARRAY);
        return m15854for(comparator, z, entryArr, entryArr.length);
    }

    public static <K extends Comparable<?>, V> Cfor<K, V> naturalOrder() {
        return new Cfor<>(k2.natural());
    }

    /* renamed from: new, reason: not valid java name */
    private i1<K, V> m15856new(int i, int i2) {
        return (i == 0 && i2 == size()) ? this : i == i2 ? emptyMap(comparator()) : new i1<>(this.f14320try.getSubSet(i, i2), this.f14318case.subList(i, i2));
    }

    public static <K, V> i1<K, V> of() {
        return (i1<K, V>) f14317this;
    }

    public static <K, V> Cfor<K, V> orderedBy(Comparator<K> comparator) {
        return new Cfor<>(comparator);
    }

    public static <K extends Comparable<?>, V> Cfor<K, V> reverseOrder() {
        return new Cfor<>(k2.natural().reverse());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static <K, V> i1<K, V> m15857try(Comparator<? super K> comparator, K k, V v) {
        return new i1<>(new x2(v0.of(k), (Comparator) af1.m205continue(comparator)), v0.of(v));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k) {
        return tailMap((i1<K, V>) k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k) {
        return (K) Maps.g(ceilingEntry(k));
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    @Override // com.google.common.collect.x0
    public g1<Map.Entry<K, V>> createEntrySet() {
        return isEmpty() ? g1.of() : new Cif();
    }

    @Override // com.google.common.collect.x0
    public g1<K> createKeySet() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.x0
    public r0<V> createValues() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(0);
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return keySet().first();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k) {
        return headMap((i1<K, V>) k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k) {
        return (K) Maps.g(floorEntry(k));
    }

    @Override // com.google.common.collect.x0, java.util.Map
    public V get(@b51 Object obj) {
        int iIndexOf = this.f14320try.indexOf(obj);
        if (iIndexOf == -1) {
            return null;
        }
        return this.f14318case.get(iIndexOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z) {
        return headMap((i1<K, V>) obj, z);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k) {
        return tailMap((i1<K, V>) k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k) {
        return (K) Maps.g(higherEntry(k));
    }

    @Override // com.google.common.collect.x0
    public boolean isPartialView() {
        return this.f14320try.isPartialView() || this.f14318case.isPartialView();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(size() - 1);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return keySet().last();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k) {
        return headMap((i1<K, V>) k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k) {
        return (K) Maps.g(lowerEntry(k));
    }

    @Override // java.util.NavigableMap
    @lf
    @Deprecated
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @lf
    @Deprecated
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public int size() {
        return this.f14318case.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return subMap((boolean) obj, z, (boolean) obj2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z) {
        return tailMap((i1<K, V>) obj, z);
    }

    @Override // com.google.common.collect.x0
    public Object writeReplace() {
        return new Cnew(this);
    }

    public i1(x2<K> x2Var, v0<V> v0Var, i1<K, V> i1Var) {
        this.f14320try = x2Var;
        this.f14318case = v0Var;
        this.f14319else = i1Var;
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/i1<TK;TV;>; */
    public static i1 of(Comparable comparable, Object obj) {
        return m15857try(k2.natural(), comparable, obj);
    }

    @Override // java.util.NavigableMap
    public m1<K> descendingKeySet() {
        return this.f14320try.descendingSet();
    }

    @Override // java.util.NavigableMap
    public i1<K, V> descendingMap() {
        i1<K, V> i1Var = this.f14319else;
        return i1Var == null ? isEmpty() ? emptyMap(k2.from(comparator()).reverse()) : new i1<>((x2) this.f14320try.descendingSet(), this.f14318case.reverse(), this) : i1Var;
    }

    @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
    public g1<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap((i1<K, V>) obj);
    }

    @Override // java.util.NavigableMap
    public m1<K> navigableKeySet() {
        return this.f14320try;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap((i1<K, V>) obj);
    }

    @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
    public r0<V> values() {
        return this.f14318case;
    }

    public static <K, V> i1<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return m15853do(map, (Comparator) af1.m205continue(comparator));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/i1<TK;TV;>; */
    public static i1 of(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return m15852case(x0.entryOf(comparable, obj), x0.entryOf(comparable2, obj2));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public i1<K, V> headMap(K k) {
        return headMap((i1<K, V>) k, false);
    }

    @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
    public m1<K> keySet() {
        return this.f14320try;
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public i1<K, V> subMap(K k, K k2) {
        return subMap((boolean) k, true, (boolean) k2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public i1<K, V> tailMap(K k) {
        return tailMap((i1<K, V>) k, true);
    }

    @o8
    public static <K, V> i1<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return copyOf(iterable, (k2) f14316goto);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/i1<TK;TV;>; */
    public static i1 of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return m15852case(x0.entryOf(comparable, obj), x0.entryOf(comparable2, obj2), x0.entryOf(comparable3, obj3));
    }

    @Override // java.util.NavigableMap
    public i1<K, V> headMap(K k, boolean z) {
        return m15856new(0, this.f14320try.headIndex(af1.m205continue(k), z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public i1<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        af1.m205continue(k);
        af1.m205continue(k2);
        af1.m206default(comparator().compare(k, k2) <= 0, "expected fromKey <= toKey but %s > %s", k, k2);
        return headMap((i1<K, V>) k2, z2).tailMap((i1<K, V>) k, z);
    }

    @Override // java.util.NavigableMap
    public i1<K, V> tailMap(K k, boolean z) {
        return m15856new(this.f14320try.tailIndex(af1.m205continue(k), z), size());
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/i1<TK;TV;>; */
    public static i1 of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return m15852case(x0.entryOf(comparable, obj), x0.entryOf(comparable2, obj2), x0.entryOf(comparable3, obj3), x0.entryOf(comparable4, obj4));
    }

    @o8
    public static <K, V> i1<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        return m15855if((Comparator) af1.m205continue(comparator), false, iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/i1<TK;TV;>; */
    public static i1 of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return m15852case(x0.entryOf(comparable, obj), x0.entryOf(comparable2, obj2), x0.entryOf(comparable3, obj3), x0.entryOf(comparable4, obj4), x0.entryOf(comparable5, obj5));
    }
}
