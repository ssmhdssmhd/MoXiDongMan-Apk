package com.google.common.graph;

import android.support.v4.b51;
import java.util.Set;

/* renamed from: com.google.common.graph.static, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cstatic<N, V> extends Celse<N, V> {
    @Override // com.google.common.graph.BaseGraph
    public Set<N> adjacentNodes(N n) {
        return mo16724try().adjacentNodes(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean allowsSelfLoops() {
        return mo16724try().allowsSelfLoops();
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public int degree(N n) {
        return mo16724try().degree(n);
    }

    @Override // com.google.common.graph.Cdo
    /* renamed from: do */
    public long mo16673do() {
        return mo16724try().edges().size();
    }

    @b51
    public V edgeValueOrDefault(N n, N n2, @b51 V v) {
        return mo16724try().edgeValueOrDefault(n, n2, v);
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(N n, N n2) {
        return mo16724try().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public int inDegree(N n) {
        return mo16724try().inDegree(n);
    }

    @Override // com.google.common.graph.BaseGraph
    public boolean isDirected() {
        return mo16724try().isDirected();
    }

    @Override // com.google.common.graph.BaseGraph
    public Cwhile<N> nodeOrder() {
        return mo16724try().nodeOrder();
    }

    @Override // com.google.common.graph.BaseGraph
    public Set<N> nodes() {
        return mo16724try().nodes();
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public int outDegree(N n) {
        return mo16724try().outDegree(n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((Cstatic<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((Cstatic<N, V>) obj);
    }

    /* renamed from: try */
    public abstract ValueGraph<N, V> mo16724try();

    @b51
    public V edgeValueOrDefault(Cimport<N> cimport, @b51 V v) {
        return mo16724try().edgeValueOrDefault(cimport, v);
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public boolean hasEdgeConnecting(Cimport<N> cimport) {
        return mo16724try().hasEdgeConnecting(cimport);
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return mo16724try().predecessors((ValueGraph<N, V>) n);
    }

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return mo16724try().successors((ValueGraph<N, V>) n);
    }
}
