package com.google.common.graph;

import com.google.common.graph.Cthrows;

/* renamed from: com.google.common.graph.goto, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cgoto<N> extends Cpublic<N> implements MutableGraph<N> {

    /* renamed from: do, reason: not valid java name */
    private final MutableValueGraph<N, Cthrows.Cdo> f15038do;

    public Cgoto(Cnew<? super N> cnew) {
        this.f15038do = new Cbreak(cnew);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean addNode(N n) {
        return this.f15038do.addNode(n);
    }

    @Override // com.google.common.graph.Cpublic
    /* renamed from: new */
    public BaseGraph<N> mo16721new() {
        return this.f15038do;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(N n, N n2) {
        return this.f15038do.putEdgeValue(n, n2, Cthrows.Cdo.EDGE_EXISTS) == null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(N n, N n2) {
        return this.f15038do.removeEdge(n, n2) != null;
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeNode(N n) {
        return this.f15038do.removeNode(n);
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean putEdge(Cimport<N> cimport) {
        m16725for(cimport);
        return putEdge(cimport.m16773new(), cimport.m16775try());
    }

    @Override // com.google.common.graph.MutableGraph
    public boolean removeEdge(Cimport<N> cimport) {
        m16725for(cimport);
        return removeEdge(cimport.m16773new(), cimport.m16775try());
    }
}
