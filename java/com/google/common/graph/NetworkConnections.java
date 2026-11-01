package com.google.common.graph;

import android.support.v4.lf;
import java.util.Set;

/* loaded from: classes2.dex */
interface NetworkConnections<N, E> {
    void addInEdge(E e, N n, boolean z);

    void addOutEdge(E e, N n);

    N adjacentNode(E e);

    Set<N> adjacentNodes();

    Set<E> edgesConnecting(N n);

    Set<E> inEdges();

    Set<E> incidentEdges();

    Set<E> outEdges();

    Set<N> predecessors();

    @lf
    N removeInEdge(E e, boolean z);

    @lf
    N removeOutEdge(E e);

    Set<N> successors();
}
