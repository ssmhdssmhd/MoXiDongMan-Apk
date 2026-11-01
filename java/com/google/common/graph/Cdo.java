package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.base.Function;
import com.google.common.collect.c3;
import com.google.common.collect.g1;
import com.google.common.collect.s1;
import com.google.common.math.Cnew;
import com.google.common.primitives.Cthis;
import java.util.AbstractSet;
import java.util.Set;

/* renamed from: com.google.common.graph.do, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cdo<N> implements BaseGraph<N> {

    /* renamed from: com.google.common.graph.do$do, reason: invalid class name and collision with other inner class name */
    public class C0118do extends AbstractSet<Cimport<N>> {
        public C0118do() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Cimport)) {
                return false;
            }
            Cimport<?> cimport = (Cimport) obj;
            return Cdo.this.m16726if(cimport) && Cdo.this.nodes().contains(cimport.m16773new()) && Cdo.this.successors((Cdo) cimport.m16773new()).contains(cimport.m16775try());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<Cimport<N>> iterator() {
            return Cnative.m16799try(Cdo.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cthis.m17704throws(Cdo.this.mo16673do());
        }
    }

    /* renamed from: com.google.common.graph.do$if, reason: invalid class name */
    public class Cif extends Cprivate<N> {

        /* renamed from: com.google.common.graph.do$if$do, reason: invalid class name and collision with other inner class name */
        public class C0119do implements Function<N, Cimport<N>> {
            public C0119do() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cimport<N> apply(N n) {
                return Cimport.m16768goto(n, Cif.this.f15092do);
            }
        }

        /* renamed from: com.google.common.graph.do$if$for, reason: invalid class name */
        public class Cfor implements Function<N, Cimport<N>> {
            public Cfor() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cimport<N> apply(N n) {
                return Cimport.m16766catch(Cif.this.f15092do, n);
            }
        }

        /* renamed from: com.google.common.graph.do$if$if, reason: invalid class name and collision with other inner class name */
        public class C0120if implements Function<N, Cimport<N>> {
            public C0120if() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cimport<N> apply(N n) {
                return Cimport.m16768goto(Cif.this.f15092do, n);
            }
        }

        public Cif(BaseGraph baseGraph, Object obj) {
            super(baseGraph, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<Cimport<N>> iterator() {
            return this.f15093if.isDirected() ? s1.s(s1.m16215break(s1.p(this.f15093if.predecessors((BaseGraph<N>) this.f15092do).iterator(), new C0119do()), s1.p(c3.m15682case(this.f15093if.successors((BaseGraph<N>) this.f15092do), g1.of(this.f15092do)).iterator(), new C0120if()))) : s1.s(s1.p(this.f15093if.adjacentNodes(this.f15092do).iterator(), new Cfor()));
        }
    }

    @Override // com.google.common.graph.BaseGraph
    public int degree(N n) {
        if (isDirected()) {
            return Cnew.m17348public(predecessors((Cdo<N>) n).size(), successors((Cdo<N>) n).size());
        }
        Set<N> setAdjacentNodes = adjacentNodes(n);
        return Cnew.m17348public(setAdjacentNodes.size(), (allowsSelfLoops() && setAdjacentNodes.contains(n)) ? 1 : 0);
    }

    /* renamed from: do */
    public long mo16673do() {
        long jDegree = 0;
        while (nodes().iterator().hasNext()) {
            jDegree += degree(r0.next());
        }
        af1.t((1 & jDegree) == 0);
        return jDegree >>> 1;
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<Cimport<N>> edges() {
        return new C0118do();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m16725for(Cimport<?> cimport) {
        af1.m205continue(cimport);
        af1.m235try(m16726if(cimport), Cthrows.f15110final);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(N n, N n2) {
        af1.m205continue(n);
        af1.m205continue(n2);
        return nodes().contains(n) && successors((Cdo<N>) n).contains(n2);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m16726if(Cimport<?> cimport) {
        return cimport.mo16772if() || !isDirected();
    }

    @Override // com.google.common.graph.BaseGraph
    public int inDegree(N n) {
        return isDirected() ? predecessors((Cdo<N>) n).size() : degree(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<Cimport<N>> incidentEdges(N n) {
        af1.m205continue(n);
        af1.m225return(nodes().contains(n), Cthrows.f15104case, n);
        return new Cif(this, n);
    }

    @Override // com.google.common.graph.BaseGraph
    public int outDegree(N n) {
        return isDirected() ? successors((Cdo<N>) n).size() : degree(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(Cimport<N> cimport) {
        af1.m205continue(cimport);
        if (!m16726if(cimport)) {
            return false;
        }
        N nM16773new = cimport.m16773new();
        return nodes().contains(nM16773new) && successors((Cdo<N>) nM16773new).contains(cimport.m16775try());
    }
}
