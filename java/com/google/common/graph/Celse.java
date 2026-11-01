package com.google.common.graph;

import android.support.v4.b51;
import android.support.v4.o8;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import java.util.Map;
import java.util.Set;

@o8
/* renamed from: com.google.common.graph.else, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Celse<N, V> extends com.google.common.graph.Cdo<N> implements ValueGraph<N, V> {

    /* renamed from: com.google.common.graph.else$do, reason: invalid class name */
    public class Cdo extends Cfor<N> {
        public Cdo() {
        }

        @Override // com.google.common.graph.BaseGraph
        public Set<N> adjacentNodes(N n) {
            return Celse.this.adjacentNodes(n);
        }

        @Override // com.google.common.graph.BaseGraph
        public boolean allowsSelfLoops() {
            return Celse.this.allowsSelfLoops();
        }

        @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int degree(N n) {
            return Celse.this.degree(n);
        }

        @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public Set<Cimport<N>> edges() {
            return Celse.this.edges();
        }

        @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int inDegree(N n) {
            return Celse.this.inDegree(n);
        }

        @Override // com.google.common.graph.BaseGraph
        public boolean isDirected() {
            return Celse.this.isDirected();
        }

        @Override // com.google.common.graph.BaseGraph
        public Cwhile<N> nodeOrder() {
            return Celse.this.nodeOrder();
        }

        @Override // com.google.common.graph.BaseGraph
        public Set<N> nodes() {
            return Celse.this.nodes();
        }

        @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int outDegree(N n) {
            return Celse.this.outDegree(n);
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
            return Celse.this.predecessors((Celse) n);
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return Celse.this.successors((Celse) n);
        }
    }

    /* renamed from: com.google.common.graph.else$if, reason: invalid class name */
    public static class Cif implements Function<Cimport<N>, V> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ValueGraph f15026do;

        public Cif(ValueGraph valueGraph) {
            this.f15026do = valueGraph;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public V apply(Cimport<N> cimport) {
            return (V) this.f15026do.edgeValueOrDefault(cimport.m16773new(), cimport.m16775try(), null);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static <N, V> Map<Cimport<N>, V> m16732new(ValueGraph<N, V> valueGraph) {
        return Maps.m15407break(valueGraph.edges(), new Cif(valueGraph));
    }

    @Override // com.google.common.graph.ValueGraph
    public Graph<N> asGraph() {
        return new Cdo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ int degree(Object obj) {
        return super.degree(obj);
    }

    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set edges() {
        return super.edges();
    }

    @Override // com.google.common.graph.ValueGraph
    public final boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueGraph)) {
            return false;
        }
        ValueGraph valueGraph = (ValueGraph) obj;
        return isDirected() == valueGraph.isDirected() && nodes().equals(valueGraph.nodes()) && m16732new(this).equals(m16732new(valueGraph));
    }

    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Cimport cimport) {
        return super.hasEdgeConnecting(cimport);
    }

    @Override // com.google.common.graph.ValueGraph
    public final int hashCode() {
        return m16732new(this).hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ int inDegree(Object obj) {
        return super.inDegree(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ int outDegree(Object obj) {
        return super.outDegree(obj);
    }

    public String toString() {
        return "isDirected: " + isDirected() + ", allowsSelfLoops: " + allowsSelfLoops() + ", nodes: " + nodes() + ", edges: " + m16732new(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }
}
