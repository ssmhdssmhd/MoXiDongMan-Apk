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

/* renamed from: com.google.common.graph.transient, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctransient<N, E> extends Ccase<N, E> {

    /* renamed from: if, reason: not valid java name */
    @fs0
    private transient Reference<Multiset<N>> f15118if;

    /* renamed from: com.google.common.graph.transient$do, reason: invalid class name */
    public class Cdo extends Cstrictfp<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f15119for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f15119for = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Ctransient.this.m16836if().count(this.f15119for);
        }
    }

    private Ctransient(Map<E, N> map) {
        super(map);
    }

    @b51
    /* renamed from: for, reason: not valid java name */
    private static <T> T m16835for(@b51 Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public Multiset<N> m16836if() {
        Multiset<N> multiset = (Multiset) m16835for(this.f15118if);
        if (multiset != null) {
            return multiset;
        }
        m0 m0VarCreate = m0.create(this.f14964do.values());
        this.f15118if = new SoftReference(m0VarCreate);
        return m0VarCreate;
    }

    /* renamed from: new, reason: not valid java name */
    public static <N, E> Ctransient<N, E> m16837new() {
        return new Ctransient<>(new HashMap(2, 1.0f));
    }

    /* renamed from: try, reason: not valid java name */
    public static <N, E> Ctransient<N, E> m16838try(Map<E, N> map) {
        return new Ctransient<>(x0.copyOf((Map) map));
    }

    @Override // com.google.common.graph.Ccase, com.google.common.graph.NetworkConnections
    public void addInEdge(E e, N n, boolean z) {
        if (z) {
            return;
        }
        addOutEdge(e, n);
    }

    @Override // com.google.common.graph.Ccase, com.google.common.graph.NetworkConnections
    public void addOutEdge(E e, N n) {
        super.addOutEdge(e, n);
        Multiset multiset = (Multiset) m16835for(this.f15118if);
        if (multiset != null) {
            af1.t(multiset.add(n));
        }
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(m16836if().elementSet());
    }

    @Override // com.google.common.graph.NetworkConnections
    public Set<E> edgesConnecting(N n) {
        return new Cdo(this.f14964do, n, n);
    }

    @Override // com.google.common.graph.Ccase, com.google.common.graph.NetworkConnections
    public N removeInEdge(E e, boolean z) {
        if (z) {
            return null;
        }
        return removeOutEdge(e);
    }

    @Override // com.google.common.graph.Ccase, com.google.common.graph.NetworkConnections
    public N removeOutEdge(E e) {
        N n = (N) super.removeOutEdge(e);
        Multiset multiset = (Multiset) m16835for(this.f15118if);
        if (multiset != null) {
            af1.t(multiset.remove(n));
        }
        return n;
    }
}
