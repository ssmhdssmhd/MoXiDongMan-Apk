package com.google.common.graph;

import android.support.v4.b51;
import java.util.AbstractSet;
import java.util.Set;

/* renamed from: com.google.common.graph.private, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cprivate<N> extends AbstractSet<Cimport<N>> {

    /* renamed from: do, reason: not valid java name */
    public final N f15092do;

    /* renamed from: if, reason: not valid java name */
    public final BaseGraph<N> f15093if;

    public Cprivate(BaseGraph<N> baseGraph, N n) {
        this.f15093if = baseGraph;
        this.f15092do = n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@b51 Object obj) {
        if (!(obj instanceof Cimport)) {
            return false;
        }
        Cimport cimport = (Cimport) obj;
        if (this.f15093if.isDirected()) {
            if (!cimport.mo16772if()) {
                return false;
            }
            Object objMo16774this = cimport.mo16774this();
            Object objMo16769break = cimport.mo16769break();
            return (this.f15092do.equals(objMo16774this) && this.f15093if.successors((BaseGraph<N>) this.f15092do).contains(objMo16769break)) || (this.f15092do.equals(objMo16769break) && this.f15093if.predecessors((BaseGraph<N>) this.f15092do).contains(objMo16774this));
        }
        if (cimport.mo16772if()) {
            return false;
        }
        Set<N> setAdjacentNodes = this.f15093if.adjacentNodes(this.f15092do);
        Object objM16773new = cimport.m16773new();
        Object objM16775try = cimport.m16775try();
        return (this.f15092do.equals(objM16775try) && setAdjacentNodes.contains(objM16773new)) || (this.f15092do.equals(objM16773new) && setAdjacentNodes.contains(objM16775try));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f15093if.isDirected() ? (this.f15093if.inDegree(this.f15092do) + this.f15093if.outDegree(this.f15092do)) - (this.f15093if.successors((BaseGraph<N>) this.f15092do).contains(this.f15092do) ? 1 : 0) : this.f15093if.adjacentNodes(this.f15092do).size();
    }
}
