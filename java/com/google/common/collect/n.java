package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Cpublic;
import com.google.common.base.Csuper;
import com.google.common.base.Predicate;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.common.collect.b2;
import com.google.common.collect.c2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
class n<K, V> extends Cgoto<K, V> implements FilteredMultimap<K, V> {

    /* renamed from: case, reason: not valid java name */
    public final Multimap<K, V> f14463case;

    /* renamed from: else, reason: not valid java name */
    public final Predicate<? super Map.Entry<K, V>> f14464else;

    /* renamed from: com.google.common.collect.n$do, reason: invalid class name */
    public class Cdo extends Maps.d<K, Collection<V>> {

        /* renamed from: com.google.common.collect.n$do$do, reason: invalid class name and collision with other inner class name */
        public class C0103do extends Maps.Cnative<K, Collection<V>> {

            /* renamed from: com.google.common.collect.n$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0104do extends com.google.common.collect.Cfor<Map.Entry<K, Collection<V>>> {

                /* renamed from: for, reason: not valid java name */
                public final Iterator<Map.Entry<K, Collection<V>>> f14467for;

                public C0104do() {
                    this.f14467for = n.this.f14463case.asMap().entrySet().iterator();
                }

                @Override // com.google.common.collect.Cfor
                /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
                public Map.Entry<K, Collection<V>> mo15521do() {
                    while (this.f14467for.hasNext()) {
                        Map.Entry<K, Collection<V>> next = this.f14467for.next();
                        K key = next.getKey();
                        Collection collectionM16074if = n.m16074if(next.getValue(), new Cfor(key));
                        if (!collectionM16074if.isEmpty()) {
                            return Maps.b(key, collectionM16074if);
                        }
                    }
                    return m15805if();
                }
            }

            public C0103do() {
            }

            @Override // com.google.common.collect.Maps.Cnative
            /* renamed from: do */
            public Map<K, Collection<V>> mo15461do() {
                return Cdo.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C0104do();
            }

            @Override // com.google.common.collect.Maps.Cnative, com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return n.this.m16076for(Cpublic.m15167final(collection));
            }

            @Override // com.google.common.collect.Maps.Cnative, com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return n.this.m16076for(Cpublic.m15182while(Cpublic.m15167final(collection)));
            }

            @Override // com.google.common.collect.Maps.Cnative, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return s1.m(iterator());
            }
        }

        /* renamed from: com.google.common.collect.n$do$for, reason: invalid class name */
        public class Cfor extends Maps.c<K, Collection<V>> {
            public Cfor() {
                super(Cdo.this);
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean remove(@b51 Object obj) {
                if (!(obj instanceof Collection)) {
                    return false;
                }
                Collection collection = (Collection) obj;
                Iterator<Map.Entry<K, Collection<V>>> it = n.this.f14463case.asMap().entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<K, Collection<V>> next = it.next();
                    Collection collectionM16074if = n.m16074if(next.getValue(), new Cfor(next.getKey()));
                    if (!collectionM16074if.isEmpty() && collection.equals(collectionM16074if)) {
                        if (collectionM16074if.size() == next.getValue().size()) {
                            it.remove();
                            return true;
                        }
                        collectionM16074if.clear();
                        return true;
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return n.this.m16076for(Maps.d0(Cpublic.m15167final(collection)));
            }

            @Override // com.google.common.collect.Maps.c, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return n.this.m16076for(Maps.d0(Cpublic.m15182while(Cpublic.m15167final(collection))));
            }
        }

        /* renamed from: com.google.common.collect.n$do$if, reason: invalid class name */
        public class Cif extends Maps.Cfinally<K, Collection<V>> {
            public Cif() {
                super(Cdo.this);
            }

            @Override // com.google.common.collect.Maps.Cfinally, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@b51 Object obj) {
                return Cdo.this.remove(obj) != null;
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return n.this.m16076for(Maps.h(Cpublic.m15167final(collection)));
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return n.this.m16076for(Maps.h(Cpublic.m15182while(Cpublic.m15167final(collection))));
            }
        }

        public Cdo() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            n.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: do */
        public Set<Map.Entry<K, Collection<V>>> mo15456do() {
            return new C0103do();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: for */
        public Collection<Collection<V>> mo15457for() {
            return new Cfor();
        }

        @Override // com.google.common.collect.Maps.d
        /* renamed from: if */
        public Set<K> mo15458if() {
            return new Cif();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> get(@b51 Object obj) {
            Collection<V> collection = n.this.f14463case.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionM16074if = n.m16074if(collection, new Cfor(obj));
            if (collectionM16074if.isEmpty()) {
                return null;
            }
            return collectionM16074if;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Collection<V> remove(@b51 Object obj) {
            Collection<V> collection = n.this.f14463case.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList arrayListM16520while = x1.m16520while();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (n.this.m16075new(obj, next)) {
                    it.remove();
                    arrayListM16520while.add(next);
                }
            }
            if (arrayListM16520while.isEmpty()) {
                return null;
            }
            return n.this.f14463case instanceof SetMultimap ? Collections.unmodifiableSet(c3.m15702package(arrayListM16520while)) : Collections.unmodifiableList(arrayListM16520while);
        }
    }

    /* renamed from: com.google.common.collect.n$for, reason: invalid class name */
    public final class Cfor implements Predicate<V> {

        /* renamed from: do, reason: not valid java name */
        private final K f14471do;

        public Cfor(K k) {
            this.f14471do = k;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 V v) {
            return n.this.m16075new(this.f14471do, v);
        }
    }

    /* renamed from: com.google.common.collect.n$if, reason: invalid class name */
    public class Cif extends b2.Celse<K, V> {

        /* renamed from: com.google.common.collect.n$if$do, reason: invalid class name */
        public class Cdo extends c2.Cthis<K> {

            /* renamed from: com.google.common.collect.n$if$do$do, reason: invalid class name and collision with other inner class name */
            public class C0105do implements Predicate<Map.Entry<K, Collection<V>>> {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Predicate f14475do;

                public C0105do(Predicate predicate) {
                    this.f14475do = predicate;
                }

                @Override // com.google.common.base.Predicate
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public boolean apply(Map.Entry<K, Collection<V>> entry) {
                    return this.f14475do.apply(c2.m15645catch(entry.getKey(), entry.getValue().size()));
                }
            }

            public Cdo() {
            }

            /* renamed from: if, reason: not valid java name */
            private boolean m16081if(Predicate<? super Multiset.Entry<K>> predicate) {
                return n.this.m16076for(new C0105do(predicate));
            }

            @Override // com.google.common.collect.c2.Cthis
            /* renamed from: do */
            public Multiset<K> mo15678do() {
                return Cif.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Multiset.Entry<K>> iterator() {
                return Cif.this.entryIterator();
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return m16081if(Cpublic.m15167final(collection));
            }

            @Override // com.google.common.collect.c3.Ccatch, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return m16081if(Cpublic.m15182while(Cpublic.m15167final(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return n.this.keySet().size();
            }
        }

        public Cif() {
            super(n.this);
        }

        @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
        public Set<Multiset.Entry<K>> entrySet() {
            return new Cdo();
        }

        @Override // com.google.common.collect.b2.Celse, com.google.common.collect.Cthis, com.google.common.collect.Multiset
        public int remove(@b51 Object obj, int i) {
            Cdefault.m15742if(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection<V> collection = n.this.f14463case.asMap().get(obj);
            int i2 = 0;
            if (collection == null) {
                return 0;
            }
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                if (n.this.m16075new(obj, it.next()) && (i2 = i2 + 1) <= i) {
                    it.remove();
                }
            }
            return i2;
        }
    }

    public n(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        this.f14463case = (Multimap) af1.m205continue(multimap);
        this.f14464else = (Predicate) af1.m205continue(predicate);
    }

    /* renamed from: if, reason: not valid java name */
    public static <E> Collection<E> m16074if(Collection<E> collection, Predicate<? super E> predicate) {
        return collection instanceof Set ? c3.m15712this((Set) collection, predicate) : Cextends.m15774try(collection, predicate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public boolean m16075new(K k, V v) {
        return this.f14464else.apply(Maps.b(k, v));
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        entries().clear();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@b51 Object obj) {
        return asMap().get(obj) != null;
    }

    @Override // com.google.common.collect.Cgoto
    public Map<K, Collection<V>> createAsMap() {
        return new Cdo();
    }

    @Override // com.google.common.collect.Cgoto
    public Collection<Map.Entry<K, V>> createEntries() {
        return m16074if(this.f14463case.entries(), this.f14464else);
    }

    @Override // com.google.common.collect.Cgoto
    public Set<K> createKeySet() {
        return asMap().keySet();
    }

    @Override // com.google.common.collect.Cgoto
    public Multiset<K> createKeys() {
        return new Cif();
    }

    @Override // com.google.common.collect.Cgoto
    public Collection<V> createValues() {
        return new s(this);
    }

    @Override // com.google.common.collect.Cgoto
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.FilteredMultimap
    public Predicate<? super Map.Entry<K, V>> entryPredicate() {
        return this.f14464else;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m16076for(Predicate<? super Map.Entry<K, Collection<V>>> predicate) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.f14463case.asMap().entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry<K, Collection<V>> next = it.next();
            K key = next.getKey();
            Collection collectionM16074if = m16074if(next.getValue(), new Cfor(key));
            if (!collectionM16074if.isEmpty() && predicate.apply(Maps.b(key, collectionM16074if))) {
                if (collectionM16074if.size() == next.getValue().size()) {
                    it.remove();
                } else {
                    collectionM16074if.clear();
                }
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> get(K k) {
        return m16074if(this.f14463case.get(k), new Cfor(k));
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> removeAll(@b51 Object obj) {
        return (Collection) Csuper.m15183do(asMap().remove(obj), m16077try());
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return entries().size();
    }

    /* renamed from: try, reason: not valid java name */
    public Collection<V> m16077try() {
        return this.f14463case instanceof SetMultimap ? Collections.emptySet() : Collections.emptyList();
    }

    @Override // com.google.common.collect.FilteredMultimap
    public Multimap<K, V> unfiltered() {
        return this.f14463case;
    }
}
