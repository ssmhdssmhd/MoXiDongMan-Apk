package com.google.common.graph;

import android.support.v4.b51;
import android.support.v4.lf;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
interface GraphConnections<N, V> {
    void addPredecessor(N n, V v);

    @lf
    V addSuccessor(N n, V v);

    Set<N> adjacentNodes();

    Iterator<Cimport<N>> incidentEdgeIterator(N n);

    Set<N> predecessors();

    void removePredecessor(N n);

    @lf
    V removeSuccessor(N n);

    Set<N> successors();

    @b51
    V value(N n);
}
