package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import com.google.common.collect.Multiset;
import com.google.common.collect.b3;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public abstract class b1<K, V> extends Creturn<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    public final transient x0<K, ? extends r0<V>> map;
    public final transient int size;

    /* renamed from: com.google.common.collect.b1$case, reason: invalid class name */
    public class Ccase extends c1<K> {
        public Ccase() {
        }

        @Override // com.google.common.collect.c1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return b1.this.containsKey(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@b51 Object obj) {
            r0<V> r0Var = b1.this.map.get(obj);
            if (r0Var == null) {
                return 0;
            }
            return r0Var.size();
        }

        @Override // com.google.common.collect.c1
        public Multiset.Entry<K> getEntry(int i) {
            Map.Entry<K, ? extends r0<V>> entry = b1.this.map.entrySet().asList().get(i);
            return c2.m15645catch(entry.getKey(), entry.getValue().size());
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return b1.this.size();
        }

        @Override // com.google.common.collect.c1, com.google.common.collect.r0
        @li0
        public Object writeReplace() {
            return new Celse(b1.this);
        }

        @Override // com.google.common.collect.c1, com.google.common.collect.Multiset
        public g1<K> elementSet() {
            return b1.this.keySet();
        }
    }

    /* renamed from: com.google.common.collect.b1$do, reason: invalid class name */
    public class Cdo extends ac2<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final Iterator<? extends Map.Entry<K, ? extends r0<V>>> f14086do;

        /* renamed from: if, reason: not valid java name */
        public K f14088if = null;

        /* renamed from: for, reason: not valid java name */
        public Iterator<V> f14087for = s1.m16240return();

        public Cdo() {
            this.f14086do = b1.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!this.f14087for.hasNext()) {
                Map.Entry<K, ? extends r0<V>> next = this.f14086do.next();
                this.f14088if = next.getKey();
                this.f14087for = next.getValue().iterator();
            }
            return Maps.b(this.f14088if, this.f14087for.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14087for.hasNext() || this.f14086do.hasNext();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.b1$else, reason: invalid class name */
    public static final class Celse implements Serializable {
        public final b1<?, ?> multimap;

        public Celse(b1<?, ?> b1Var) {
            this.multimap = b1Var;
        }

        public Object readResolve() {
            return this.multimap.keys();
        }
    }

    @v10
    /* renamed from: com.google.common.collect.b1$for, reason: invalid class name */
    public static class Cfor<K, V> {

        /* renamed from: do, reason: not valid java name */
        public Map<K, Collection<V>> f14090do = l2.m15996this();

        /* renamed from: for, reason: not valid java name */
        @l01
        public Comparator<? super V> f14091for;

        /* renamed from: if, reason: not valid java name */
        @l01
        public Comparator<? super K> f14092if;

        @lf
        /* renamed from: break, reason: not valid java name */
        public Cfor<K, V> mo15543break(K k, Iterable<? extends V> iterable) {
            if (k == null) {
                throw new NullPointerException("null key in entry: null=" + r1.g(iterable));
            }
            Collection<V> collection = this.f14090do.get(k);
            if (collection != null) {
                for (V v : iterable) {
                    Cdefault.m15740do(k, v);
                    collection.add(v);
                }
                return this;
            }
            Iterator<? extends V> it = iterable.iterator();
            if (!it.hasNext()) {
                return this;
            }
            Collection<V> collectionMo15548for = mo15548for();
            while (it.hasNext()) {
                V next = it.next();
                Cdefault.m15740do(k, next);
                collectionMo15548for.add(next);
            }
            this.f14090do.put(k, collectionMo15548for);
            return this;
        }

        @lf
        /* renamed from: case, reason: not valid java name */
        public Cfor<K, V> mo15544case(K k, V v) {
            Cdefault.m15740do(k, v);
            Collection<V> collection = this.f14090do.get(k);
            if (collection == null) {
                Map<K, Collection<V>> map = this.f14090do;
                Collection<V> collectionMo15548for = mo15548for();
                map.put(k, collectionMo15548for);
                collection = collectionMo15548for;
            }
            collection.add(v);
            return this;
        }

        @lf
        /* renamed from: catch, reason: not valid java name */
        public Cfor<K, V> mo15545catch(K k, V... vArr) {
            return mo15543break(k, Arrays.asList(vArr));
        }

        /* renamed from: do, reason: not valid java name */
        public b1<K, V> mo15546do() {
            Collection collectionEntrySet = this.f14090do.entrySet();
            Comparator<? super K> comparator = this.f14092if;
            if (comparator != null) {
                collectionEntrySet = k2.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return w0.fromMapEntries(collectionEntrySet, this.f14091for);
        }

        @lf
        /* renamed from: else, reason: not valid java name */
        public Cfor<K, V> mo15547else(Map.Entry<? extends K, ? extends V> entry) {
            return mo15544case(entry.getKey(), entry.getValue());
        }

        /* renamed from: for, reason: not valid java name */
        public Collection<V> mo15548for() {
            return new ArrayList();
        }

        @lf
        /* renamed from: goto, reason: not valid java name */
        public Cfor<K, V> mo15549goto(Multimap<? extends K, ? extends V> multimap) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : multimap.asMap().entrySet()) {
                mo15543break(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cfor<K, V> m15550if(Cfor<K, V> cfor) {
            for (Map.Entry<K, Collection<V>> entry : cfor.f14090do.entrySet()) {
                mo15543break(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public Cfor<K, V> mo15551new(Comparator<? super K> comparator) {
            this.f14092if = (Comparator) af1.m205continue(comparator);
            return this;
        }

        @lf
        @o8
        /* renamed from: this, reason: not valid java name */
        public Cfor<K, V> mo15552this(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                mo15547else(it.next());
            }
            return this;
        }

        @lf
        /* renamed from: try, reason: not valid java name */
        public Cfor<K, V> mo15553try(Comparator<? super V> comparator) {
            this.f14091for = (Comparator) af1.m205continue(comparator);
            return this;
        }
    }

    /* renamed from: com.google.common.collect.b1$goto, reason: invalid class name */
    public static final class Cgoto<K, V> extends r0<V> {
        private static final long serialVersionUID = 0;

        /* renamed from: if, reason: not valid java name */
        @hf2
        private final transient b1<K, V> f14093if;

        public Cgoto(b1<K, V> b1Var) {
            this.f14093if = b1Var;
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return this.f14093if.containsValue(obj);
        }

        @Override // com.google.common.collect.r0
        @li0
        public int copyIntoArray(Object[] objArr, int i) {
            ac2<? extends r0<V>> it = this.f14093if.map.values().iterator();
            while (it.hasNext()) {
                i = it.next().copyIntoArray(objArr, i);
            }
            return i;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f14093if.size();
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<V> iterator() {
            return this.f14093if.valueIterator();
        }
    }

    /* renamed from: com.google.common.collect.b1$if, reason: invalid class name */
    public class Cif extends ac2<V> {

        /* renamed from: do, reason: not valid java name */
        public Iterator<? extends r0<V>> f14094do;

        /* renamed from: if, reason: not valid java name */
        public Iterator<V> f14096if = s1.m16240return();

        public Cif() {
            this.f14094do = b1.this.map.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14096if.hasNext() || this.f14094do.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            if (!this.f14096if.hasNext()) {
                this.f14096if = this.f14094do.next().iterator();
            }
            return this.f14096if.next();
        }
    }

    /* renamed from: com.google.common.collect.b1$new, reason: invalid class name */
    public static class Cnew<K, V> extends r0<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;

        @hf2
        public final b1<K, V> multimap;

        public Cnew(b1<K, V> b1Var) {
            this.multimap = b1Var;
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<Map.Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.b1$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final b3.Cif<b1> f14097do = b3.m15607do(b1.class, "map");

        /* renamed from: if, reason: not valid java name */
        public static final b3.Cif<b1> f14098if = b3.m15607do(b1.class, "size");
    }

    public b1(x0<K, ? extends r0<V>> x0Var, int i) {
        this.map = x0Var;
        this.size = i;
    }

    public static <K, V> Cfor<K, V> builder() {
        return new Cfor<>();
    }

    public static <K, V> b1<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        if (multimap instanceof b1) {
            b1<K, V> b1Var = (b1) multimap;
            if (!b1Var.isPartialView()) {
                return b1Var;
            }
        }
        return w0.copyOf((Multimap) multimap);
    }

    public static <K, V> b1<K, V> of() {
        return w0.of();
    }

    @Override // com.google.common.collect.Multimap
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@b51 Object obj, @b51 Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@b51 Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public boolean containsValue(@b51 Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.Cgoto
    public Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Cgoto
    public Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.Multimap
    public abstract r0<V> get(K k);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((b1<K, V>) obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public abstract b1<V, K> inverse();

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((b1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.Cgoto
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> b1<K, V> of(K k, V v) {
        return w0.of((Object) k, (Object) v);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public x0<K, Collection<V>> asMap() {
        return this.map;
    }

    @Override // com.google.common.collect.Cgoto
    public r0<Map.Entry<K, V>> createEntries() {
        return new Cnew(this);
    }

    @Override // com.google.common.collect.Cgoto
    public c1<K> createKeys() {
        return new Ccase();
    }

    @Override // com.google.common.collect.Cgoto
    public r0<V> createValues() {
        return new Cgoto(this);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public r0<Map.Entry<K, V>> entries() {
        return (r0) super.entries();
    }

    @Override // com.google.common.collect.Cgoto
    public ac2<Map.Entry<K, V>> entryIterator() {
        return new Cdo();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public g1<K> keySet() {
        return this.map.keySet();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public c1<K> keys() {
        return (c1) super.keys();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap
    @lf
    @Deprecated
    public r0<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    @Deprecated
    public r0<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cgoto
    public ac2<V> valueIterator() {
        return new Cif();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public r0<V> values() {
        return (r0) super.values();
    }

    public static <K, V> b1<K, V> of(K k, V v, K k2, V v2) {
        return w0.of((Object) k, (Object) v, (Object) k2, (Object) v2);
    }

    public static <K, V> b1<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return w0.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    @o8
    public static <K, V> b1<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return w0.copyOf((Iterable) iterable);
    }

    public static <K, V> b1<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return w0.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    public static <K, V> b1<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return w0.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }
}
