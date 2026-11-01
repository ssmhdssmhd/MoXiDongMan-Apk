package com.google.common.graph;

import com.google.common.collect.BiMap;
import com.google.common.collect.j0;
import com.google.common.collect.p0;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.implements, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cimplements<N, E> extends Ccase<N, E> {
    public Cimplements(Map<E, N> map) {
        super(map);
    }

    /* renamed from: do, reason: not valid java name */
    public static <N, E> Cimplements<N, E> m16763do() {
        return new Cimplements<>(j0.create(2));
    }

    /* renamed from: if, reason: not valid java name */
    public static <N, E> Cimplements<N, E> m16764if(Map<E, N> map) {
        return new Cimplements<>(p0.copyOf((Map) map));
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(((BiMap) this.f14964do).values());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> edgesConnecting(N n) {
        return new Cthrow(((BiMap) this.f14964do).inverse(), n);
    }
}
