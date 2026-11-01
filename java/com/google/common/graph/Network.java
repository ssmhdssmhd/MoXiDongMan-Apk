package com.google.common.graph;

import android.support.v4.b51;
import android.support.v4.o8;
import android.support.v4.v10;
import java.util.Set;

@v10("Use NetworkBuilder to create a real instance")
@o8
/* loaded from: classes2.dex */
public interface Network<N, E> extends SuccessorsFunction<N>, PredecessorsFunction<N> {
    Set<E> adjacentEdges(E e);

    Set<N> adjacentNodes(N n);

    boolean allowsParallelEdges();

    boolean allowsSelfLoops();

    Graph<N> asGraph();

    int degree(N n);

    @b51
    E edgeConnectingOrNull(Cimport<N> cimport);

    @b51
    E edgeConnectingOrNull(N n, N n2);

    Cwhile<E> edgeOrder();

    Set<E> edges();

    Set<E> edgesConnecting(Cimport<N> cimport);

    Set<E> edgesConnecting(N n, N n2);

    boolean equals(@b51 Object obj);

    boolean hasEdgeConnecting(Cimport<N> cimport);

    boolean hasEdgeConnecting(N n, N n2);

    int hashCode();

    int inDegree(N n);

    Set<E> inEdges(N n);

    Set<E> incidentEdges(N n);

    Cimport<N> incidentNodes(E e);

    boolean isDirected();

    Cwhile<N> nodeOrder();

    Set<N> nodes();

    int outDegree(N n);

    Set<E> outEdges(N n);

    @Override // com.google.common.graph.PredecessorsFunction
    Set<N> predecessors(N n);

    @Override // com.google.common.graph.SuccessorsFunction
    Set<N> successors(N n);
}
