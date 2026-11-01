package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.lf;
import com.google.common.collect.v0;
import freemarker.core.k;
import java.util.Collection;

/* renamed from: com.google.common.graph.this, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthis<N, E> extends Ccatch<N, E> implements MutableNetwork<N, E> {
    public Cthis(Cvolatile<? super N, ? super E> cvolatile) {
        super(cvolatile);
    }

    /* renamed from: break, reason: not valid java name */
    private NetworkConnections<N, E> m16830break() {
        return isDirected() ? allowsParallelEdges() ? Cfinal.m16746new() : Csuper.m16818if() : allowsParallelEdges() ? Ctransient.m16837new() : Cimplements.m16763do();
    }

    @lf
    /* renamed from: this, reason: not valid java name */
    private NetworkConnections<N, E> m16831this(N n) {
        NetworkConnections<N, E> networkConnectionsM16830break = m16830break();
        af1.t(this.f14965case.m16663this(n, networkConnectionsM16830break) == null);
        return networkConnectionsM16830break;
    }

    @Override // com.google.common.graph.MutableNetwork
    @lf
    public boolean addEdge(N n, N n2, E e) {
        af1.m227strictfp(n, "nodeU");
        af1.m227strictfp(n2, "nodeV");
        af1.m227strictfp(e, "edge");
        if (m16669else(e)) {
            Cimport<N> cimportIncidentNodes = incidentNodes(e);
            Cimport cimportM16767else = Cimport.m16767else(this, n, n2);
            af1.m209extends(cimportIncidentNodes.equals(cimportM16767else), Cthrows.f15112goto, e, cimportIncidentNodes, cimportM16767else);
            return false;
        }
        NetworkConnections<N, E> networkConnectionsMo16657case = this.f14965case.mo16657case(n);
        if (!allowsParallelEdges()) {
            af1.m206default(networkConnectionsMo16657case == null || !networkConnectionsMo16657case.successors().contains(n2), Cthrows.f15103break, n, n2);
        }
        boolean zEquals = n.equals(n2);
        if (!allowsSelfLoops()) {
            af1.m225return(!zEquals, Cthrows.f15105catch, n);
        }
        if (networkConnectionsMo16657case == null) {
            networkConnectionsMo16657case = m16831this(n);
        }
        networkConnectionsMo16657case.addOutEdge(e, n2);
        NetworkConnections<N, E> networkConnectionsMo16657case2 = this.f14965case.mo16657case(n2);
        if (networkConnectionsMo16657case2 == null) {
            networkConnectionsMo16657case2 = m16831this(n2);
        }
        networkConnectionsMo16657case2.addInEdge(e, n, zEquals);
        this.f14967else.m16663this(e, n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @lf
    public boolean addNode(N n) {
        af1.m227strictfp(n, k.f23935package);
        if (m16670goto(n)) {
            return false;
        }
        m16831this(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @lf
    public boolean removeEdge(E e) {
        af1.m227strictfp(e, "edge");
        N nMo16657case = this.f14967else.mo16657case(e);
        boolean z = false;
        if (nMo16657case == null) {
            return false;
        }
        NetworkConnections<N, E> networkConnectionsMo16657case = this.f14965case.mo16657case(nMo16657case);
        N nAdjacentNode = networkConnectionsMo16657case.adjacentNode(e);
        NetworkConnections<N, E> networkConnectionsMo16657case2 = this.f14965case.mo16657case(nAdjacentNode);
        networkConnectionsMo16657case.removeOutEdge(e);
        if (allowsSelfLoops() && nMo16657case.equals(nAdjacentNode)) {
            z = true;
        }
        networkConnectionsMo16657case2.removeInEdge(e, z);
        this.f14967else.m16656break(e);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @lf
    public boolean removeNode(N n) {
        af1.m227strictfp(n, k.f23935package);
        NetworkConnections<N, E> networkConnectionsMo16657case = this.f14965case.mo16657case(n);
        if (networkConnectionsMo16657case == null) {
            return false;
        }
        ac2<E> it = v0.copyOf((Collection) networkConnectionsMo16657case.incidentEdges()).iterator();
        while (it.hasNext()) {
            removeEdge(it.next());
        }
        this.f14965case.m16656break(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @lf
    public boolean addEdge(Cimport<N> cimport, E e) {
        m16842new(cimport);
        return addEdge(cimport.m16773new(), cimport.m16775try(), e);
    }
}
