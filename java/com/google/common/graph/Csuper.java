package com.google.common.graph;

import com.google.common.collect.BiMap;
import com.google.common.collect.j0;
import com.google.common.collect.p0;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.super, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csuper<N, E> extends Cif<N, E> {
    public Csuper(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    /* renamed from: for, reason: not valid java name */
    public static <N, E> Csuper<N, E> m16817for(Map<E, N> map, Map<E, N> map2, int i) {
        return new Csuper<>(p0.copyOf((Map) map), p0.copyOf((Map) map2), i);
    }

    /* renamed from: if, reason: not valid java name */
    public static <N, E> Csuper<N, E> m16818if() {
        return new Csuper<>(j0.create(2), j0.create(2), 0);
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> edgesConnecting(N n) {
        return new Cthrow(((BiMap) this.f15041if).inverse(), n);
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> predecessors() {
        return Collections.unmodifiableSet(((BiMap) this.f15039do).values());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> successors() {
        return Collections.unmodifiableSet(((BiMap) this.f15041if).values());
    }
}
