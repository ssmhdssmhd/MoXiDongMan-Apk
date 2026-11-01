package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.o8;
import android.support.v4.v10;
import com.google.common.collect.r0;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;

@v10("Use ImmutableMap.of or another implementation")
@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class x0<K, V> implements Map<K, V>, Serializable {
    public static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];

    /* renamed from: do, reason: not valid java name */
    @bo1
    @fs0
    private transient g1<Map.Entry<K, V>> f14843do;

    /* renamed from: for, reason: not valid java name */
    @bo1
    @fs0
    private transient r0<V> f14844for;

    /* renamed from: if, reason: not valid java name */
    @bo1
    @fs0
    private transient g1<K> f14845if;

    /* renamed from: new, reason: not valid java name */
    @fs0
    private transient h1<K, V> f14846new;

    /* renamed from: com.google.common.collect.x0$do, reason: invalid class name */
    public class Cdo extends ac2<K> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ac2 f14847do;

        public Cdo(ac2 ac2Var) {
            this.f14847do = ac2Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14847do.hasNext();
        }

        @Override // java.util.Iterator
        public K next() {
            return (K) ((Map.Entry) this.f14847do.next()).getKey();
        }
    }

    /* renamed from: com.google.common.collect.x0$for, reason: invalid class name */
    public static abstract class Cfor<K, V> extends x0<K, V> {

        /* renamed from: com.google.common.collect.x0$for$do, reason: invalid class name */
        public class Cdo extends y0<K, V> {
            public Cdo() {
            }

            @Override // com.google.common.collect.y0
            public x0<K, V> map() {
                return Cfor.this;
            }

            @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public ac2<Map.Entry<K, V>> iterator() {
                return Cfor.this.entryIterator();
            }
        }

        @Override // com.google.common.collect.x0
        public g1<Map.Entry<K, V>> createEntrySet() {
            return new Cdo();
        }

        @Override // com.google.common.collect.x0
        public g1<K> createKeySet() {
            return new z0(this);
        }

        @Override // com.google.common.collect.x0
        public r0<V> createValues() {
            return new a1(this);
        }

        public abstract ac2<Map.Entry<K, V>> entryIterator();

        @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    @v10
    /* renamed from: com.google.common.collect.x0$if, reason: invalid class name */
    public static class Cif<K, V> {

        /* renamed from: do, reason: not valid java name */
        @l01
        public Comparator<? super V> f14849do;

        /* renamed from: for, reason: not valid java name */
        public int f14850for;

        /* renamed from: if, reason: not valid java name */
        public Object[] f14851if;

        /* renamed from: new, reason: not valid java name */
        public boolean f14852new;

        public Cif() {
            this(4);
        }

        /* renamed from: if, reason: not valid java name */
        private void m16487if(int i) {
            int i2 = i * 2;
            Object[] objArr = this.f14851if;
            if (i2 > objArr.length) {
                this.f14851if = Arrays.copyOf(objArr, r0.Cif.m16173case(objArr.length, i2));
                this.f14852new = false;
            }
        }

        @lf
        @o8
        /* renamed from: case */
        public Cif<K, V> mo15861case(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                m16487if(this.f14850for + ((Collection) iterable).size());
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                mo15871try(it.next());
            }
            return this;
        }

        /* renamed from: do */
        public x0<K, V> mo15865do() {
            m16488goto();
            this.f14852new = true;
            return t2.create(this.f14850for, this.f14851if);
        }

        @lf
        /* renamed from: else */
        public Cif<K, V> mo15866else(Map<? extends K, ? extends V> map) {
            return mo15861case(map.entrySet());
        }

        @lf
        @o8
        /* renamed from: for */
        public Cif<K, V> mo15868for(Comparator<? super V> comparator) {
            af1.u(this.f14849do == null, "valueComparator was already set");
            this.f14849do = (Comparator) af1.m227strictfp(comparator, "valueComparator");
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public void m16488goto() {
            int i;
            if (this.f14849do != null) {
                if (this.f14852new) {
                    this.f14851if = Arrays.copyOf(this.f14851if, this.f14850for * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f14850for];
                int i2 = 0;
                while (true) {
                    i = this.f14850for;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f14851if;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, k2.from(this.f14849do).onResultOf(Maps.a0()));
                for (int i4 = 0; i4 < this.f14850for; i4++) {
                    int i5 = i4 * 2;
                    this.f14851if[i5] = entryArr[i4].getKey();
                    this.f14851if[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }

        @lf
        /* renamed from: new */
        public Cif<K, V> mo15869new(K k, V v) {
            m16487if(this.f14850for + 1);
            Cdefault.m15740do(k, v);
            Object[] objArr = this.f14851if;
            int i = this.f14850for;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.f14850for = i + 1;
            return this;
        }

        @lf
        /* renamed from: try */
        public Cif<K, V> mo15871try(Map.Entry<? extends K, ? extends V> entry) {
            return mo15869new(entry.getKey(), entry.getValue());
        }

        public Cif(int i) {
            this.f14851if = new Object[i * 2];
            this.f14850for = 0;
            this.f14852new = false;
        }
    }

    /* renamed from: com.google.common.collect.x0$new, reason: invalid class name */
    public final class Cnew extends Cfor<K, g1<V>> {

        /* renamed from: com.google.common.collect.x0$new$do, reason: invalid class name */
        public class Cdo extends ac2<Map.Entry<K, g1<V>>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterator f14853do;

            /* renamed from: com.google.common.collect.x0$new$do$do, reason: invalid class name and collision with other inner class name */
            public class C0111do extends Celse<K, g1<V>> {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Map.Entry f14855do;

                public C0111do(Map.Entry entry) {
                    this.f14855do = entry;
                }

                @Override // com.google.common.collect.Celse, java.util.Map.Entry
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public g1<V> getValue() {
                    return g1.of(this.f14855do.getValue());
                }

                @Override // com.google.common.collect.Celse, java.util.Map.Entry
                public K getKey() {
                    return (K) this.f14855do.getKey();
                }
            }

            public Cdo(Iterator it) {
                this.f14853do = it;
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, g1<V>> next() {
                return new C0111do((Map.Entry) this.f14853do.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14853do.hasNext();
            }
        }

        private Cnew() {
        }

        @Override // com.google.common.collect.x0, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return x0.this.containsKey(obj);
        }

        @Override // com.google.common.collect.x0.Cfor, com.google.common.collect.x0
        public g1<K> createKeySet() {
            return x0.this.keySet();
        }

        @Override // com.google.common.collect.x0.Cfor
        public ac2<Map.Entry<K, g1<V>>> entryIterator() {
            return new Cdo(x0.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.x0, java.util.Map
        public int hashCode() {
            return x0.this.hashCode();
        }

        @Override // com.google.common.collect.x0
        public boolean isHashCodeFast() {
            return x0.this.isHashCodeFast();
        }

        @Override // com.google.common.collect.x0
        public boolean isPartialView() {
            return x0.this.isPartialView();
        }

        @Override // java.util.Map
        public int size() {
            return x0.this.size();
        }

        public /* synthetic */ Cnew(x0 x0Var, Cdo cdo) {
            this();
        }

        @Override // com.google.common.collect.x0, java.util.Map
        public g1<V> get(@b51 Object obj) {
            Object obj2 = x0.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return g1.of(obj2);
        }
    }

    /* renamed from: com.google.common.collect.x0$try, reason: invalid class name */
    public static class Ctry implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object[] keys;
        private final Object[] values;

        public Ctry(x0<?, ?> x0Var) {
            this.keys = new Object[x0Var.size()];
            this.values = new Object[x0Var.size()];
            ac2<Map.Entry<?, ?>> it = x0Var.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                this.keys[i] = next.getKey();
                this.values[i] = next.getValue();
                i++;
            }
        }

        public Object createMap(Cif<Object, Object> cif) {
            int i = 0;
            while (true) {
                Object[] objArr = this.keys;
                if (i >= objArr.length) {
                    return cif.mo15865do();
                }
                cif.mo15869new(objArr[i], this.values[i]);
                i++;
            }
        }

        public Object readResolve() {
            return createMap(new Cif<>(this.keys.length));
        }
    }

    public static <K, V> Cif<K, V> builder() {
        return new Cif<>();
    }

    @o8
    public static <K, V> Cif<K, V> builderWithExpectedSize(int i) {
        Cdefault.m15742if(i, "expectedSize");
        return new Cif<>(i);
    }

    public static void checkNoConflict(boolean z, String str, Map.Entry<?, ?> entry, Map.Entry<?, ?> entry2) {
        if (!z) {
            throw conflictException(str, entry, entry2);
        }
    }

    public static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static <K, V> x0<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof x0) && !(map instanceof SortedMap)) {
            x0<K, V> x0Var = (x0) map;
            if (!x0Var.isPartialView()) {
                return x0Var;
            }
        }
        return copyOf(map.entrySet());
    }

    public static <K, V> Map.Entry<K, V> entryOf(K k, V v) {
        Cdefault.m15740do(k, v);
        return new AbstractMap.SimpleImmutableEntry(k, v);
    }

    public static <K, V> x0<K, V> of() {
        return (x0<K, V>) t2.EMPTY;
    }

    public h1<K, V> asMultimap() {
        if (isEmpty()) {
            return h1.of();
        }
        h1<K, V> h1Var = this.f14846new;
        if (h1Var != null) {
            return h1Var;
        }
        h1<K, V> h1Var2 = new h1<>(new Cnew(this, null), size(), null);
        this.f14846new = h1Var2;
        return h1Var2;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@b51 Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@b51 Object obj) {
        return values().contains(obj);
    }

    public abstract g1<Map.Entry<K, V>> createEntrySet();

    public abstract g1<K> createKeySet();

    public abstract r0<V> createValues();

    @Override // java.util.Map
    public boolean equals(@b51 Object obj) {
        return Maps.m15436switch(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(@b51 Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@b51 Object obj, @b51 V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return c3.m15683catch(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isHashCodeFast() {
        return false;
    }

    public abstract boolean isPartialView();

    public ac2<K> keyIterator() {
        return new Cdo(entrySet().iterator());
    }

    @Override // java.util.Map
    @lf
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @lf
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return Maps.J(this);
    }

    Object writeReplace() {
        return new Ctry(this);
    }

    public static <K, V> x0<K, V> of(K k, V v) {
        Cdefault.m15740do(k, v);
        return t2.create(1, new Object[]{k, v});
    }

    @Override // java.util.Map, java.util.SortedMap
    public g1<Map.Entry<K, V>> entrySet() {
        g1<Map.Entry<K, V>> g1Var = this.f14843do;
        if (g1Var != null) {
            return g1Var;
        }
        g1<Map.Entry<K, V>> g1VarCreateEntrySet = createEntrySet();
        this.f14843do = g1VarCreateEntrySet;
        return g1VarCreateEntrySet;
    }

    @Override // java.util.Map, java.util.SortedMap
    public g1<K> keySet() {
        g1<K> g1Var = this.f14845if;
        if (g1Var != null) {
            return g1Var;
        }
        g1<K> g1VarCreateKeySet = createKeySet();
        this.f14845if = g1VarCreateKeySet;
        return g1VarCreateKeySet;
    }

    @Override // java.util.Map, java.util.SortedMap
    public r0<V> values() {
        r0<V> r0Var = this.f14844for;
        if (r0Var != null) {
            return r0Var;
        }
        r0<V> r0VarCreateValues = createValues();
        this.f14844for = r0VarCreateValues;
        return r0VarCreateValues;
    }

    public static <K, V> x0<K, V> of(K k, V v, K k2, V v2) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        return t2.create(2, new Object[]{k, v, k2, v2});
    }

    @o8
    public static <K, V> x0<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Cif cif = new Cif(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        cif.mo15861case(iterable);
        return cif.mo15865do();
    }

    public static <K, V> x0<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        Cdefault.m15740do(k3, v3);
        return t2.create(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    public static <K, V> x0<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        Cdefault.m15740do(k3, v3);
        Cdefault.m15740do(k4, v4);
        return t2.create(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

    public static <K, V> x0<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        Cdefault.m15740do(k3, v3);
        Cdefault.m15740do(k4, v4);
        Cdefault.m15740do(k5, v5);
        return t2.create(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }
}
