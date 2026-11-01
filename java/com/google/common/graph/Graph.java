package com.google.common.graph;

import android.support.v4.b51;
import android.support.v4.o8;
import android.support.v4.v10;
import java.util.Set;

@v10("Use GraphBuilder to create a real instance")
@o8
/* loaded from: classes2.dex */
public interface Graph<N> extends BaseGraph<N> {
    @Override // com.google.common.graph.BaseGraph
    Set<N> adjacentNodes(N n);

    @Override // com.google.common.graph.BaseGraph
    boolean allowsSelfLoops();

    @Override // com.google.common.graph.BaseGraph
    int degree(N n);

    @Override // com.google.common.graph.BaseGraph
    Set<Cimport<N>> edges();

    boolean equals(@b51 Object obj);

    @Override // com.google.common.graph.BaseGraph
    boolean hasEdgeConnecting(Cimport<N> cimport);

    @Override // com.google.common.graph.BaseGraph
    boolean hasEdgeConnecting(N n, N n2);

    int hashCode();

    @Override // com.google.common.graph.BaseGraph
    int inDegree(N n);

    @Override // com.google.common.graph.BaseGraph
    Set<Cimport<N>> incidentEdges(N n);

    @Override // com.google.common.graph.BaseGraph
    boolean isDirected();

    @Override // com.google.common.graph.BaseGraph
    Cwhile<N> nodeOrder();

    @Override // com.google.common.graph.BaseGraph
    Set<N> nodes();

    @Override // com.google.common.graph.BaseGraph
    int outDegree(N n);

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    Set<N> predecessors(N n);

    @Override // com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    Set<N> successors(N n);
}
