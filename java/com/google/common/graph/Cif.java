package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.collect.c3;
import com.google.common.collect.r1;
import com.google.common.collect.s1;
import com.google.common.math.Cnew;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.if, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cif<N, E> implements NetworkConnections<N, E> {

    /* renamed from: do, reason: not valid java name */
    public final Map<E, N> f15039do;

    /* renamed from: for, reason: not valid java name */
    private int f15040for;

    /* renamed from: if, reason: not valid java name */
    public final Map<E, N> f15041if;

    /* renamed from: com.google.common.graph.if$do, reason: invalid class name */
    public class Cdo extends AbstractSet<E> {
        public Cdo() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return Cif.this.f15039do.containsKey(obj) || Cif.this.f15041if.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<E> iterator() {
            return s1.s((Cif.this.f15040for == 0 ? r1.m16176case(Cif.this.f15039do.keySet(), Cif.this.f15041if.keySet()) : c3.a(Cif.this.f15039do.keySet(), Cif.this.f15041if.keySet())).iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cnew.m17348public(Cif.this.f15039do.size(), Cif.this.f15041if.size() - Cif.this.f15040for);
        }
    }

    public Cif(Map<E, N> map, Map<E, N> map2, int i) {
        this.f15039do = (Map) af1.m205continue(map);
        this.f15041if = (Map) af1.m205continue(map2);
        this.f15040for = Cdefault.m16707if(i);
        af1.t(i <= map.size() && i <= map2.size());
    }

    @Override // com.google.common.graph.NetworkConnections
    public void addInEdge(E e, N n, boolean z) {
        if (z) {
            int i = this.f15040for + 1;
            this.f15040for = i;
            Cdefault.m16710new(i);
        }
        af1.t(this.f15039do.put(e, n) == null);
    }

    @Override // com.google.common.graph.NetworkConnections
    public void addOutEdge(E e, N n) {
        af1.t(this.f15041if.put(e, n) == null);
    }

    @Override // com.google.common.graph.NetworkConnections
    public N adjacentNode(E e) {
        return (N) af1.m205continue(this.f15041if.get(e));
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> adjacentNodes() {
        return c3.a(predecessors(), successors());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> inEdges() {
        return Collections.unmodifiableSet(this.f15039do.keySet());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> incidentEdges() {
        return new Cdo();
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> outEdges() {
        return Collections.unmodifiableSet(this.f15041if.keySet());
    }

    @Override // com.google.common.graph.NetworkConnections
    public N removeInEdge(E e, boolean z) {
        if (z) {
            int i = this.f15040for - 1;
            this.f15040for = i;
            Cdefault.m16707if(i);
        }
        return (N) af1.m205continue(this.f15039do.remove(e));
    }

    @Override // com.google.common.graph.NetworkConnections
    public N removeOutEdge(E e) {
        return (N) af1.m205continue(this.f15041if.remove(e));
    }
}
