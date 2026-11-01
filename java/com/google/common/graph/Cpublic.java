package com.google.common.graph;

import java.util.Set;

/* renamed from: com.google.common.graph.public, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cpublic<N> extends Cfor<N> {
    @Override // com.google.common.graph.BaseGraph
    public Set<N> adjacentNodes(N n) {
        return mo16721new().adjacentNodes(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean allowsSelfLoops() {
        return mo16721new().allowsSelfLoops();
    }

    @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public int degree(N n) {
        return mo16721new().degree(n);
    }

    @Override // com.google.common.graph.Cdo
    /* renamed from: do */
    public long mo16673do() {
        return mo16721new().edges().size();
    }

    @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(N n, N n2) {
        return mo16721new().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public int inDegree(N n) {
        return mo16721new().inDegree(n);
    }

    @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public Set<Cimport<N>> incidentEdges(N n) {
        return mo16721new().incidentEdges(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean isDirected() {
        return mo16721new().isDirected();
    }

    /* renamed from: new */
    public abstract BaseGraph<N> mo16721new();

    @Override // com.google.common.graph.BaseGraph
    public Cwhile<N> nodeOrder() {
        return mo16721new().nodeOrder();
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<N> nodes() {
        return mo16721new().nodes();
    }

    @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public int outDegree(N n) {
        return mo16721new().outDegree(n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((Cpublic<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((Cpublic<N>) obj);
    }

    @Override // com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(Cimport<N> cimport) {
        return mo16721new().hasEdgeConnecting(cimport);
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return mo16721new().predecessors((BaseGraph<N>) n);
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return mo16721new().successors((BaseGraph<N>) n);
    }
}
