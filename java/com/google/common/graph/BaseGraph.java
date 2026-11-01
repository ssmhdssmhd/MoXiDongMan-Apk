package com.google.common.graph;

import java.util.Set;

/* loaded from: classes2.dex */
interface BaseGraph<N> extends SuccessorsFunction<N>, PredecessorsFunction<N> {
    Set<N> adjacentNodes(N n);

    boolean allowsSelfLoops();

    int degree(N n);

    Set<Cimport<N>> edges();

    boolean hasEdgeConnecting(Cimport<N> cimport);

    boolean hasEdgeConnecting(N n, N n2);

    int inDegree(N n);

    Set<Cimport<N>> incidentEdges(N n);

    boolean isDirected();

    Cwhile<N> nodeOrder();

    Set<N> nodes();

    int outDegree(N n);

    @Override // com.google.common.graph.PredecessorsFunction
    Set<N> predecessors(N n);

    @Override // com.google.common.graph.SuccessorsFunction
    Set<N> successors(N n);
}
