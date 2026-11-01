package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.o8;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.collect.Maps;
import com.google.common.collect.c3;
import com.google.common.collect.g1;
import com.google.common.collect.s1;
import com.google.common.math.Cnew;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@o8
/* renamed from: com.google.common.graph.try, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ctry<N, E> implements Network<N, E> {

    /* renamed from: com.google.common.graph.try$do, reason: invalid class name */
    public class Cdo extends com.google.common.graph.Cfor<N> {

        /* renamed from: com.google.common.graph.try$do$do, reason: invalid class name and collision with other inner class name */
        public class C0123do extends AbstractSet<Cimport<N>> {

            /* renamed from: com.google.common.graph.try$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0124do implements Function<E, Cimport<N>> {
                public C0124do() {
                }

                @Override // com.google.common.base.Function
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cimport<N> apply(E e) {
                    return Ctry.this.incidentNodes(e);
                }
            }

            public C0123do() {
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
            public Iterator<Cimport<N>> iterator() {
                return s1.p(Ctry.this.edges().iterator(), new C0124do());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Ctry.this.edges().size();
            }
        }

        public Cdo() {
        }

        @Override // com.google.common.graph.BaseGraph
        public Set<N> adjacentNodes(N n) {
            return Ctry.this.adjacentNodes(n);
        }

        @Override // com.google.common.graph.BaseGraph
        public boolean allowsSelfLoops() {
            return Ctry.this.allowsSelfLoops();
        }

        @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public Set<Cimport<N>> edges() {
            return Ctry.this.allowsParallelEdges() ? super.edges() : new C0123do();
        }

        @Override // com.google.common.graph.BaseGraph
        public boolean isDirected() {
            return Ctry.this.isDirected();
        }

        @Override // com.google.common.graph.BaseGraph
        public Cwhile<N> nodeOrder() {
            return Ctry.this.nodeOrder();
        }

        @Override // com.google.common.graph.BaseGraph
        public Set<N> nodes() {
            return Ctry.this.nodes();
        }

        @Override // com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((Cdo) obj);
        }

        @Override // com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((Cdo) obj);
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return Ctry.this.predecessors((Ctry) n);
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return Ctry.this.successors((Ctry) n);
        }
    }

    /* renamed from: com.google.common.graph.try$for, reason: invalid class name */
    public static class Cfor implements Function<E, Cimport<N>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Network f15124do;

        public Cfor(Network network) {
            this.f15124do = network;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> apply(E e) {
            return this.f15124do.incidentNodes(e);
        }
    }

    /* renamed from: com.google.common.graph.try$if, reason: invalid class name */
    public class Cif implements Predicate<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f15125do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f15127if;

        public Cif(Object obj, Object obj2) {
            this.f15125do = obj;
            this.f15127if = obj2;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(E e) {
            return Ctry.this.incidentNodes(e).m16770do(this.f15125do).equals(this.f15127if);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private Predicate<E> m16839do(N n, N n2) {
        return new Cif(n, n2);
    }

    /* renamed from: if, reason: not valid java name */
    private static <N, E> Map<E, Cimport<N>> m16840if(Network<N, E> network) {
        return Maps.m15407break(network.edges(), new Cfor(network));
    }

    @Override // com.google.common.graph.Network
    public Set<E> adjacentEdges(E e) {
        Cimport<N> cimportIncidentNodes = incidentNodes(e);
        return c3.m15682case(c3.a(incidentEdges(cimportIncidentNodes.m16773new()), incidentEdges(cimportIncidentNodes.m16775try())), g1.of((Object) e));
    }

    @Override // com.google.common.graph.Network
    public Graph<N> asGraph() {
        return new Cdo();
    }

    @Override // com.google.common.graph.Network
    public int degree(N n) {
        return isDirected() ? Cnew.m17348public(inEdges(n).size(), outEdges(n).size()) : Cnew.m17348public(incidentEdges(n).size(), edgesConnecting(n, n).size());
    }

    @Override // com.google.common.graph.Network
    @b51
    public E edgeConnectingOrNull(N n, N n2) {
        Set<E> setEdgesConnecting = edgesConnecting(n, n2);
        int size = setEdgesConnecting.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return setEdgesConnecting.iterator().next();
        }
        throw new IllegalArgumentException(String.format(Cthrows.f15115this, n, n2));
    }

    @Override // com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        Set<E> setOutEdges = outEdges(n);
        Set<E> setInEdges = inEdges(n2);
        return setOutEdges.size() <= setInEdges.size() ? Collections.unmodifiableSet(c3.m15712this(setOutEdges, m16839do(n, n2))) : Collections.unmodifiableSet(c3.m15712this(setInEdges, m16839do(n2, n)));
    }

    @Override // com.google.common.graph.Network
    public final boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Network)) {
            return false;
        }
        Network network = (Network) obj;
        return isDirected() == network.isDirected() && nodes().equals(network.nodes()) && m16840if(this).equals(m16840if(network));
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m16841for(Cimport<?> cimport) {
        return cimport.mo16772if() || !isDirected();
    }

    @Override // com.google.common.graph.Network
    public boolean hasEdgeConnecting(N n, N n2) {
        af1.m205continue(n);
        af1.m205continue(n2);
        return nodes().contains(n) && successors((Ctry<N, E>) n).contains(n2);
    }

    @Override // com.google.common.graph.Network
    public final int hashCode() {
        return m16840if(this).hashCode();
    }

    @Override // com.google.common.graph.Network
    public int inDegree(N n) {
        return isDirected() ? inEdges(n).size() : degree(n);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m16842new(Cimport<?> cimport) {
        af1.m205continue(cimport);
        af1.m235try(m16841for(cimport), Cthrows.f15110final);
    }

    @Override // com.google.common.graph.Network
    public int outDegree(N n) {
        return isDirected() ? outEdges(n).size() : degree(n);
    }

    public String toString() {
        return "isDirected: " + isDirected() + ", allowsParallelEdges: " + allowsParallelEdges() + ", allowsSelfLoops: " + allowsSelfLoops() + ", nodes: " + nodes() + ", edges: " + m16840if(this);
    }

    @Override // com.google.common.graph.Network
    public boolean hasEdgeConnecting(Cimport<N> cimport) {
        af1.m205continue(cimport);
        if (m16841for(cimport)) {
            return hasEdgeConnecting(cimport.m16773new(), cimport.m16775try());
        }
        return false;
    }

    @Override // com.google.common.graph.Network
    @b51
    public E edgeConnectingOrNull(Cimport<N> cimport) {
        m16842new(cimport);
        return edgeConnectingOrNull(cimport.m16773new(), cimport.m16775try());
    }

    @Override // com.google.common.graph.Network
    public Set<E> edgesConnecting(Cimport<N> cimport) {
        m16842new(cimport);
        return edgesConnecting(cimport.m16773new(), cimport.m16775try());
    }
}
