package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.base.Cwhile;
import com.google.common.collect.g1;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* renamed from: com.google.common.graph.catch, reason: invalid class name */
/* loaded from: classes2.dex */
class Ccatch<N, E> extends Ctry<N, E> {

    /* renamed from: case, reason: not valid java name */
    public final Cabstract<N, NetworkConnections<N, E>> f14965case;

    /* renamed from: do, reason: not valid java name */
    private final boolean f14966do;

    /* renamed from: else, reason: not valid java name */
    public final Cabstract<E, N> f14967else;

    /* renamed from: for, reason: not valid java name */
    private final boolean f14968for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f14969if;

    /* renamed from: new, reason: not valid java name */
    private final Cwhile<N> f14970new;

    /* renamed from: try, reason: not valid java name */
    private final Cwhile<E> f14971try;

    public Ccatch(Cvolatile<? super N, ? super E> cvolatile) {
        this(cvolatile, cvolatile.f15085for.m16863for(cvolatile.f15088try.or((Cwhile<Integer>) 10).intValue()), cvolatile.f15129else.m16863for(cvolatile.f15130goto.or((Cwhile<Integer>) 20).intValue()));
    }

    @Override // com.google.common.graph.Network
    public Set<N> adjacentNodes(N n) {
        return m16671try(n).adjacentNodes();
    }

    @Override // com.google.common.graph.Network
    public boolean allowsParallelEdges() {
        return this.f14969if;
    }

    @Override // com.google.common.graph.Network
    public boolean allowsSelfLoops() {
        return this.f14968for;
    }

    /* renamed from: case, reason: not valid java name */
    public final N m16668case(E e) {
        N nMo16657case = this.f14967else.mo16657case(e);
        if (nMo16657case != null) {
            return nMo16657case;
        }
        af1.m205continue(e);
        throw new IllegalArgumentException(String.format(Cthrows.f15109else, e));
    }

    @Override // com.google.common.graph.Network
    public Cwhile<E> edgeOrder() {
        return this.f14971try;
    }

    @Override // com.google.common.graph.Network
    public Set<E> edges() {
        return this.f14967else.m16658catch();
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        NetworkConnections<N, E> networkConnectionsM16671try = m16671try(n);
        if (!this.f14968for && n == n2) {
            return g1.of();
        }
        af1.m225return(m16670goto(n2), Cthrows.f15104case, n2);
        return networkConnectionsM16671try.edgesConnecting(n2);
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m16669else(@b51 E e) {
        return this.f14967else.m16664try(e);
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m16670goto(@b51 N n) {
        return this.f14965case.m16664try(n);
    }

    @Override // com.google.common.graph.Network
    public Set<E> inEdges(N n) {
        return m16671try(n).inEdges();
    }

    @Override // com.google.common.graph.Network
    public Set<E> incidentEdges(N n) {
        return m16671try(n).incidentEdges();
    }

    @Override // com.google.common.graph.Network
    public Cimport<N> incidentNodes(E e) {
        N nM16668case = m16668case(e);
        return Cimport.m16767else(this, nM16668case, this.f14965case.mo16657case(nM16668case).adjacentNode(e));
    }

    @Override // com.google.common.graph.Network
    public boolean isDirected() {
        return this.f14966do;
    }

    @Override // com.google.common.graph.Network
    public Cwhile<N> nodeOrder() {
        return this.f14970new;
    }

    @Override // com.google.common.graph.Network
    public Set<N> nodes() {
        return this.f14965case.m16658catch();
    }

    @Override // com.google.common.graph.Network
    public Set<E> outEdges(N n) {
        return m16671try(n).outEdges();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        return predecessors((Ccatch<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        return successors((Ccatch<N, E>) obj);
    }

    /* renamed from: try, reason: not valid java name */
    public final NetworkConnections<N, E> m16671try(N n) {
        NetworkConnections<N, E> networkConnectionsMo16657case = this.f14965case.mo16657case(n);
        if (networkConnectionsMo16657case != null) {
            return networkConnectionsMo16657case;
        }
        af1.m205continue(n);
        throw new IllegalArgumentException(String.format(Cthrows.f15104case, n));
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
    public Set<N> predecessors(N n) {
        return m16671try(n).predecessors();
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
    public Set<N> successors(N n) {
        return m16671try(n).successors();
    }

    public Ccatch(Cvolatile<? super N, ? super E> cvolatile, Map<N, NetworkConnections<N, E>> map, Map<E, N> map2) {
        this.f14966do = cvolatile.f15084do;
        this.f14969if = cvolatile.f15128case;
        this.f14968for = cvolatile.f15086if;
        this.f14970new = (Cwhile<N>) cvolatile.f15085for.m16862do();
        this.f14971try = (Cwhile<E>) cvolatile.f15129else.m16862do();
        this.f14965case = map instanceof TreeMap ? new Ccontinue<>(map) : new Cabstract<>(map);
        this.f14967else = new Cabstract<>(map2);
    }
}
