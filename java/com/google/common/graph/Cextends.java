package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.fm0;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Cclass;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.x0;
import com.google.common.graph.Cthrows;
import java.util.Set;

@fm0(containerOf = {"N"})
@o8
/* renamed from: com.google.common.graph.extends, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cextends<N> extends Cpublic<N> {

    /* renamed from: do, reason: not valid java name */
    private final BaseGraph<N> f15027do;

    /* renamed from: com.google.common.graph.extends$do, reason: invalid class name */
    public static class Cdo<N> {

        /* renamed from: do, reason: not valid java name */
        private final MutableGraph<N> f15028do;

        public Cdo(Cswitch<N> cswitch) {
            this.f15028do = cswitch.m16828new().m16829this(Cwhile.m16858else()).m16827if();
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public Cdo<N> m16738do(N n) {
            this.f15028do.addNode(n);
            return this;
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public Cdo<N> m16739for(Cimport<N> cimport) {
            this.f15028do.putEdge(cimport);
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cextends<N> m16740if() {
            return Cextends.m16734case(this.f15028do);
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public Cdo<N> m16741new(N n, N n2) {
            this.f15028do.putEdge(n, n2);
            return this;
        }
    }

    public Cextends(BaseGraph<N> baseGraph) {
        this.f15027do = baseGraph;
    }

    /* renamed from: case, reason: not valid java name */
    public static <N> Cextends<N> m16734case(Graph<N> graph) {
        return graph instanceof Cextends ? (Cextends) graph : new Cextends<>(new Cclass(Cswitch.m16820else(graph), m16736goto(graph), graph.edges().size()));
    }

    @Deprecated
    /* renamed from: else, reason: not valid java name */
    public static <N> Cextends<N> m16735else(Cextends<N> cextends) {
        return (Cextends) af1.m205continue(cextends);
    }

    /* renamed from: goto, reason: not valid java name */
    private static <N> x0<N, GraphConnections<N, Cthrows.Cdo>> m16736goto(Graph<N> graph) {
        x0.Cif cifBuilder = x0.builder();
        for (N n : graph.nodes()) {
            cifBuilder.mo15869new(n, m16737try(graph, n));
        }
        return cifBuilder.mo15865do();
    }

    /* renamed from: try, reason: not valid java name */
    private static <N> GraphConnections<N, Cthrows.Cdo> m16737try(Graph<N> graph, N n) {
        Function functionM15024if = Cclass.m15024if(Cthrows.Cdo.EDGE_EXISTS);
        return graph.isDirected() ? Cconst.m16677break(n, graph.incidentEdges(n), functionM15024if) : Cprotected.m16813if(Maps.m15407break(graph.adjacentNodes(n), functionM15024if));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ int degree(Object obj) {
        return super.degree(obj);
    }

    @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Cimport cimport) {
        return super.hasEdgeConnecting(cimport);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ int inDegree(Object obj) {
        return super.inDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.Cpublic
    /* renamed from: new */
    public BaseGraph<N> mo16721new() {
        return this.f15027do;
    }

    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Cwhile nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ int outDegree(Object obj) {
        return super.outDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((Cextends<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((Cextends<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }
}
