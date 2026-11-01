package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fs0;
import com.google.common.collect.Multiset;
import com.google.common.collect.m0;
import com.google.common.collect.x0;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.common.graph.final, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfinal<N, E> extends Cif<N, E> {

    /* renamed from: new, reason: not valid java name */
    @fs0
    private transient Reference<Multiset<N>> f15029new;

    /* renamed from: try, reason: not valid java name */
    @fs0
    private transient Reference<Multiset<N>> f15030try;

    /* renamed from: com.google.common.graph.final$do, reason: invalid class name */
    public class Cdo extends Cstrictfp<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f15031for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f15031for = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cfinal.this.m16743else().count(this.f15031for);
        }
    }

    private Cfinal(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    /* renamed from: case, reason: not valid java name */
    private Multiset<N> m16742case() {
        Multiset<N> multiset = (Multiset) m16744for(this.f15029new);
        if (multiset != null) {
            return multiset;
        }
        m0 m0VarCreate = m0.create(this.f15039do.values());
        this.f15029new = new SoftReference(m0VarCreate);
        return m0VarCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public Multiset<N> m16743else() {
        Multiset<N> multiset = (Multiset) m16744for(this.f15030try);
        if (multiset != null) {
            return multiset;
        }
        m0 m0VarCreate = m0.create(this.f15041if.values());
        this.f15030try = new SoftReference(m0VarCreate);
        return m0VarCreate;
    }

    @b51
    /* renamed from: for, reason: not valid java name */
    private static <T> T m16744for(@b51 Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    /* renamed from: new, reason: not valid java name */
    public static <N, E> Cfinal<N, E> m16746new() {
        return new Cfinal<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0);
    }

    /* renamed from: try, reason: not valid java name */
    public static <N, E> Cfinal<N, E> m16747try(Map<E, N> map, Map<E, N> map2, int i) {
        return new Cfinal<>(x0.copyOf((Map) map), x0.copyOf((Map) map2), i);
    }

    @Override // com.google.common.graph.Cif, com.google.common.graph.NetworkConnections
    public void addInEdge(E e, N n, boolean z) {
        super.addInEdge(e, n, z);
        Multiset multiset = (Multiset) m16744for(this.f15029new);
        if (multiset != null) {
            af1.t(multiset.add(n));
        }
    }

    @Override // com.google.common.graph.Cif, com.google.common.graph.NetworkConnections
    public void addOutEdge(E e, N n) {
        super.addOutEdge(e, n);
        Multiset multiset = (Multiset) m16744for(this.f15030try);
        if (multiset != null) {
            af1.t(multiset.add(n));
        }
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> edgesConnecting(N n) {
        return new Cdo(this.f15041if, n, n);
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> predecessors() {
        return Collections.unmodifiableSet(m16742case().elementSet());
    }

    @Override // com.google.common.graph.Cif, com.google.common.graph.NetworkConnections
    public N removeInEdge(E e, boolean z) {
        N n = (N) super.removeInEdge(e, z);
        Multiset multiset = (Multiset) m16744for(this.f15029new);
        if (multiset != null) {
            af1.t(multiset.remove(n));
        }
        return n;
    }

    @Override // com.google.common.graph.Cif, com.google.common.graph.NetworkConnections
    public N removeOutEdge(E e) {
        N n = (N) super.removeOutEdge(e);
        Multiset multiset = (Multiset) m16744for(this.f15030try);
        if (multiset != null) {
            af1.t(multiset.remove(n));
        }
        return n;
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> successors() {
        return Collections.unmodifiableSet(m16743else().elementSet());
    }
}
