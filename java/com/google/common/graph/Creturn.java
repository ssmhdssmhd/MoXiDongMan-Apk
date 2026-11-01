package com.google.common.graph;

import java.util.Set;

/* renamed from: com.google.common.graph.return, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Creturn<N, E> extends Ctry<N, E> {
    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public Set<E> adjacentEdges(E e) {
        return mo16718try().adjacentEdges(e);
    }

    @Override // com.google.common.graph.Network
    public Set<N> adjacentNodes(N n) {
        return mo16718try().adjacentNodes(n);
    }

    @Override // com.google.common.graph.Network
    public boolean allowsParallelEdges() {
        return mo16718try().allowsParallelEdges();
    }

    @Override // com.google.common.graph.Network
    public boolean allowsSelfLoops() {
        return mo16718try().allowsSelfLoops();
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public int degree(N n) {
        return mo16718try().degree(n);
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public E edgeConnectingOrNull(N n, N n2) {
        return mo16718try().edgeConnectingOrNull(n, n2);
    }

    @Override // com.google.common.graph.Network
    public Cwhile<E> edgeOrder() {
        return mo16718try().edgeOrder();
    }

    @Override // com.google.common.graph.Network
    public Set<E> edges() {
        return mo16718try().edges();
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        return mo16718try().edgesConnecting(n, n2);
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public boolean hasEdgeConnecting(N n, N n2) {
        return mo16718try().hasEdgeConnecting(n, n2);
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public int inDegree(N n) {
        return mo16718try().inDegree(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> inEdges(N n) {
        return mo16718try().inEdges(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> incidentEdges(N n) {
        return mo16718try().incidentEdges(n);
    }

    @Override // com.google.common.graph.Network
    public Cimport<N> incidentNodes(E e) {
        return mo16718try().incidentNodes(e);
    }

    @Override // com.google.common.graph.Network
    public boolean isDirected() {
        return mo16718try().isDirected();
    }

    @Override // com.google.common.graph.Network
    public Cwhile<N> nodeOrder() {
        return mo16718try().nodeOrder();
    }

    @Override // com.google.common.graph.Network
    public Set<N> nodes() {
        return mo16718try().nodes();
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public int outDegree(N n) {
        return mo16718try().outDegree(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> outEdges(N n) {
        return mo16718try().outEdges(n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((Creturn<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((Creturn<N, E>) obj);
    }

    /* renamed from: try */
    public abstract Network<N, E> mo16718try();

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public E edgeConnectingOrNull(Cimport<N> cimport) {
        return mo16718try().edgeConnectingOrNull(cimport);
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public Set<E> edgesConnecting(Cimport<N> cimport) {
        return mo16718try().edgesConnecting(cimport);
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public boolean hasEdgeConnecting(Cimport<N> cimport) {
        return mo16718try().hasEdgeConnecting(cimport);
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return mo16718try().predecessors((Network<N, E>) n);
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return mo16718try().successors((Network<N, E>) n);
    }
}
