package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.base.Cwhile;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* renamed from: com.google.common.graph.class, reason: invalid class name */
/* loaded from: classes2.dex */
class Cclass<N, V> extends Celse<N, V> {

    /* renamed from: do, reason: not valid java name */
    private final boolean f14972do;

    /* renamed from: for, reason: not valid java name */
    private final Cwhile<N> f14973for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f14974if;

    /* renamed from: new, reason: not valid java name */
    public final Cabstract<N, GraphConnections<N, V>> f14975new;

    /* renamed from: try, reason: not valid java name */
    public long f14976try;

    /* renamed from: com.google.common.graph.class$do, reason: invalid class name */
    public class Cdo extends Cprivate<N> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ GraphConnections f14977for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(BaseGraph baseGraph, Object obj, GraphConnections graphConnections) {
            super(baseGraph, obj);
            this.f14977for = graphConnections;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Cimport<N>> iterator() {
            return this.f14977for.incidentEdgeIterator(this.f15092do);
        }
    }

    public Cclass(Cnew<? super N> cnew) {
        this(cnew, cnew.f15085for.m16863for(cnew.f15088try.or((Cwhile<Integer>) 10).intValue()), 0L);
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<N> adjacentNodes(N n) {
        return m16676try(n).adjacentNodes();
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean allowsSelfLoops() {
        return this.f14974if;
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m16672case(@b51 N n) {
        return this.f14975new.m16664try(n);
    }

    @Override // com.google.common.graph.Cdo
    /* renamed from: do, reason: not valid java name */
    public long mo16673do() {
        return this.f14976try;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.ValueGraph
    @b51
    public V edgeValueOrDefault(N n, N n2, @b51 V v) {
        return (V) m16674else(af1.m205continue(n), af1.m205continue(n2), v);
    }

    /* renamed from: else, reason: not valid java name */
    public final V m16674else(N n, N n2, V v) {
        GraphConnections<N, V> graphConnectionsMo16657case = this.f14975new.mo16657case(n);
        V vValue = graphConnectionsMo16657case == null ? null : graphConnectionsMo16657case.value(n2);
        return vValue == null ? v : vValue;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m16675goto(N n, N n2) {
        GraphConnections<N, V> graphConnectionsMo16657case = this.f14975new.mo16657case(n);
        return graphConnectionsMo16657case != null && graphConnectionsMo16657case.successors().contains(n2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(N n, N n2) {
        return m16675goto(af1.m205continue(n), af1.m205continue(n2));
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public Set<Cimport<N>> incidentEdges(N n) {
        return new Cdo(this, n, m16676try(n));
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean isDirected() {
        return this.f14972do;
    }

    @Override // com.google.common.graph.BaseGraph
    public Cwhile<N> nodeOrder() {
        return this.f14973for;
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<N> nodes() {
        return this.f14975new.m16658catch();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((Cclass<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((Cclass<N, V>) obj);
    }

    /* renamed from: try, reason: not valid java name */
    public final GraphConnections<N, V> m16676try(N n) {
        GraphConnections<N, V> graphConnectionsMo16657case = this.f14975new.mo16657case(n);
        if (graphConnectionsMo16657case != null) {
            return graphConnectionsMo16657case;
        }
        af1.m205continue(n);
        throw new IllegalArgumentException("Node " + n + " is not an element of this graph.");
    }

    @Override // com.google.common.graph.ValueGraph
    @b51
    public V edgeValueOrDefault(Cimport<N> cimport, @b51 V v) {
        m16725for(cimport);
        return m16674else(cimport.m16773new(), cimport.m16775try(), v);
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(Cimport<N> cimport) {
        af1.m205continue(cimport);
        return m16726if(cimport) && m16675goto(cimport.m16773new(), cimport.m16775try());
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return m16676try(n).predecessors();
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return m16676try(n).successors();
    }

    public Cclass(Cnew<? super N> cnew, Map<N, GraphConnections<N, V>> map, long j) {
        this.f14972do = cnew.f15084do;
        this.f14974if = cnew.f15086if;
        this.f14973for = (Cwhile<N>) cnew.f15085for.m16862do();
        this.f14975new = map instanceof TreeMap ? new Ccontinue<>(map) : new Cabstract<>(map);
        this.f14976try = Cdefault.m16705for(j);
    }
}
