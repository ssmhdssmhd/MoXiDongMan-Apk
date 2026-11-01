package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ce0;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.qd0;
import android.support.v4.ud0;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
class q<K, V> extends Cgoto<K, V> implements FilteredMultimap<K, V> {

    /* renamed from: case, reason: not valid java name */
    public final Multimap<K, V> f14534case;

    /* renamed from: else, reason: not valid java name */
    public final Predicate<? super K> f14535else;

    /* renamed from: com.google.common.collect.q$do, reason: invalid class name */
    public static class Cdo<K, V> extends ud0<V> {

        /* renamed from: do, reason: not valid java name */
        public final K f14536do;

        public Cdo(K k) {
            this.f14536do = k;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            add(0, v);
            return true;
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override // android.support.v4.ud0, android.support.v4.qd0, android.support.v4.ae0
        /* renamed from: do */
        public List<V> delegate() {
            return Collections.emptyList();
        }

        @Override // android.support.v4.ud0, java.util.List
        public void add(int i, V v) {
            af1.q(i, 0);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f14536do);
        }

        @Override // android.support.v4.ud0, java.util.List
        @lf
        public boolean addAll(int i, Collection<? extends V> collection) {
            af1.m205continue(collection);
            af1.q(i, 0);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f14536do);
        }
    }

    /* renamed from: com.google.common.collect.q$for, reason: invalid class name */
    public class Cfor extends qd0<Map.Entry<K, V>> {
        public Cfor() {
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean remove(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (q.this.f14534case.containsKey(entry.getKey()) && q.this.f14535else.apply((Object) entry.getKey())) {
                return q.this.f14534case.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // android.support.v4.qd0, android.support.v4.ae0
        public Collection<Map.Entry<K, V>> delegate() {
            return Cextends.m15774try(q.this.f14534case.entries(), q.this.entryPredicate());
        }
    }

    public q(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        this.f14534case = (Multimap) af1.m205continue(multimap);
        this.f14535else = (Predicate) af1.m205continue(predicate);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@b51 Object obj) {
        if (this.f14534case.containsKey(obj)) {
            return this.f14535else.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.Cgoto
    public Map<K, Collection<V>> createAsMap() {
        return Maps.m15443volatile(this.f14534case.asMap(), this.f14535else);
    }

    @Override // com.google.common.collect.Cgoto
    public Collection<Map.Entry<K, V>> createEntries() {
        return new Cfor();
    }

    @Override // com.google.common.collect.Cgoto
    public Set<K> createKeySet() {
        return c3.m15712this(this.f14534case.keySet(), this.f14535else);
    }

    @Override // com.google.common.collect.Cgoto
    public Multiset<K> createKeys() {
        return c2.m15643break(this.f14534case.keys(), this.f14535else);
    }

    @Override // com.google.common.collect.Cgoto
    public Collection<V> createValues() {
        return new s(this);
    }

    /* renamed from: do, reason: not valid java name */
    public Collection<V> m16151do() {
        return this.f14534case instanceof SetMultimap ? g1.of() : v0.of();
    }

    @Override // com.google.common.collect.Cgoto
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.FilteredMultimap
    public Predicate<? super Map.Entry<K, V>> entryPredicate() {
        return Maps.h(this.f14535else);
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> get(K k) {
        return this.f14535else.apply(k) ? this.f14534case.get(k) : this.f14534case instanceof SetMultimap ? new Cif(k) : new Cdo(k);
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> removeAll(Object obj) {
        return containsKey(obj) ? this.f14534case.removeAll(obj) : m16151do();
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        Iterator<Collection<V>> it = asMap().values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    public Multimap<K, V> unfiltered() {
        return this.f14534case;
    }

    /* renamed from: com.google.common.collect.q$if, reason: invalid class name */
    public static class Cif<K, V> extends ce0<V> {

        /* renamed from: do, reason: not valid java name */
        public final K f14538do;

        public Cif(K k) {
            this.f14538do = k;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f14538do);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            af1.m205continue(collection);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f14538do);
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<V> delegate() {
            return Collections.emptySet();
        }
    }
}
