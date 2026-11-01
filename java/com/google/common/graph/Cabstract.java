package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.abstract, reason: invalid class name */
/* loaded from: classes2.dex */
class Cabstract<K, V> {

    /* renamed from: do, reason: not valid java name */
    private final Map<K, V> f14958do;

    /* renamed from: if, reason: not valid java name */
    @b51
    private volatile transient Map.Entry<K, V> f14959if;

    /* renamed from: com.google.common.graph.abstract$do, reason: invalid class name */
    public class Cdo extends AbstractSet<K> {

        /* renamed from: com.google.common.graph.abstract$do$do, reason: invalid class name and collision with other inner class name */
        public class C0114do extends ac2<K> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterator f14961do;

            public C0114do(Iterator it) {
                this.f14961do = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14961do.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry entry = (Map.Entry) this.f14961do.next();
                Cabstract.this.f14959if = entry;
                return (K) entry.getKey();
            }
        }

        public Cdo() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return Cabstract.this.m16664try(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<K> iterator() {
            return new C0114do(Cabstract.this.f14958do.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cabstract.this.f14958do.size();
        }
    }

    public Cabstract(Map<K, V> map) {
        this.f14958do = (Map) af1.m205continue(map);
    }

    @lf
    /* renamed from: break, reason: not valid java name */
    public final V m16656break(@b51 Object obj) {
        mo16662new();
        return this.f14958do.remove(obj);
    }

    /* renamed from: case, reason: not valid java name */
    public V mo16657case(@b51 Object obj) {
        V vMo16659else = mo16659else(obj);
        return vMo16659else != null ? vMo16659else : m16661goto(obj);
    }

    /* renamed from: catch, reason: not valid java name */
    public final Set<K> m16658catch() {
        return new Cdo();
    }

    /* renamed from: else, reason: not valid java name */
    public V mo16659else(@b51 Object obj) {
        Map.Entry<K, V> entry = this.f14959if;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return entry.getValue();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m16660for() {
        mo16662new();
        this.f14958do.clear();
    }

    /* renamed from: goto, reason: not valid java name */
    public final V m16661goto(@b51 Object obj) {
        return this.f14958do.get(obj);
    }

    /* renamed from: new, reason: not valid java name */
    public void mo16662new() {
        this.f14959if = null;
    }

    @lf
    /* renamed from: this, reason: not valid java name */
    public final V m16663this(@b51 K k, @b51 V v) {
        mo16662new();
        return this.f14958do.put(k, v);
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m16664try(@b51 Object obj) {
        return mo16659else(obj) != null || this.f14958do.containsKey(obj);
    }
}
