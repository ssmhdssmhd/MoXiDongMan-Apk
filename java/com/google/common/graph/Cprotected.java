package com.google.common.graph;

import android.support.v4.af1;
import com.google.common.base.Function;
import com.google.common.collect.s1;
import com.google.common.collect.x0;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.protected, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cprotected<N, V> implements GraphConnections<N, V> {

    /* renamed from: do, reason: not valid java name */
    private final Map<N, V> f15094do;

    /* renamed from: com.google.common.graph.protected$do, reason: invalid class name */
    public class Cdo implements Function<N, Cimport<N>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f15095do;

        public Cdo(Object obj) {
            this.f15095do = obj;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> apply(N n) {
            return Cimport.m16766catch(this.f15095do, n);
        }
    }

    private Cprotected(Map<N, V> map) {
        this.f15094do = (Map) af1.m205continue(map);
    }

    /* renamed from: do, reason: not valid java name */
    public static <N, V> Cprotected<N, V> m16812do() {
        return new Cprotected<>(new HashMap(2, 1.0f));
    }

    /* renamed from: if, reason: not valid java name */
    public static <N, V> Cprotected<N, V> m16813if(Map<N, V> map) {
        return new Cprotected<>(x0.copyOf((Map) map));
    }

    @Override // com.google.common.graph.GraphConnections
    public void addPredecessor(N n, V v) {
        addSuccessor(n, v);
    }

    @Override // com.google.common.graph.GraphConnections
    public V addSuccessor(N n, V v) {
        return this.f15094do.put(n, v);
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(this.f15094do.keySet());
    }

    @Override // com.google.common.graph.GraphConnections
    public Iterator<Cimport<N>> incidentEdgeIterator(N n) {
        return s1.p(this.f15094do.keySet().iterator(), new Cdo(n));
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> predecessors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.GraphConnections
    public void removePredecessor(N n) {
        removeSuccessor(n);
    }

    @Override // com.google.common.graph.GraphConnections
    public V removeSuccessor(N n) {
        return this.f15094do.remove(n);
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> successors() {
        return adjacentNodes();
    }

    @Override // com.google.common.graph.GraphConnections
    public V value(N n) {
        return this.f15094do.get(n);
    }
}
