package com.google.common.graph;

import android.support.v4.af1;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.case, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ccase<N, E> implements NetworkConnections<N, E> {

    /* renamed from: do, reason: not valid java name */
    public final Map<E, N> f14964do;

    public Ccase(Map<E, N> map) {
        this.f14964do = (Map) af1.m205continue(map);
    }

    @Override // com.google.common.graph.NetworkConnections
    public void addInEdge(E e, N n, boolean z) {
        if (z) {
            return;
        }
        addOutEdge(e, n);
    }

    @Override // com.google.common.graph.NetworkConnections
    public void addOutEdge(E e, N n) {
        af1.t(this.f14964do.put(e, n) == null);
    }

    @Override // com.google.common.graph.NetworkConnections
    public N adjacentNode(E e) {
        return (N) af1.m205continue(this.f14964do.get(e));
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> inEdges() {
        return incidentEdges();
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> incidentEdges() {
        return Collections.unmodifiableSet(this.f14964do.keySet());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> outEdges() {
        return incidentEdges();
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> predecessors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.NetworkConnections
    public N removeInEdge(E e, boolean z) {
        if (z) {
            return null;
        }
        return removeOutEdge(e);
    }

    @Override // com.google.common.graph.NetworkConnections
    public N removeOutEdge(E e) {
        return (N) af1.m205continue(this.f14964do.remove(e));
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> successors() {
        return adjacentNodes();
    }
}
