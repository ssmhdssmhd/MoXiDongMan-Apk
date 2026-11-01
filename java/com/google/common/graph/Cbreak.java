package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.lf;
import freemarker.core.k;
import java.util.Iterator;
import org.mozilla.javascript.ES6Iterator;

/* renamed from: com.google.common.graph.break, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cbreak<N, V> extends Cclass<N, V> implements MutableValueGraph<N, V> {

    /* renamed from: case, reason: not valid java name */
    private final Cwhile<N> f14963case;

    public Cbreak(Cnew<? super N> cnew) {
        super(cnew);
        this.f14963case = (Cwhile<N>) cnew.f15087new.m16862do();
    }

    /* renamed from: break, reason: not valid java name */
    private GraphConnections<N, V> m16666break() {
        return isDirected() ? Cconst.m16685this(this.f14963case) : Cprotected.m16812do();
    }

    @lf
    /* renamed from: this, reason: not valid java name */
    private GraphConnections<N, V> m16667this(N n) {
        GraphConnections<N, V> graphConnectionsM16666break = m16666break();
        af1.t(this.f14975new.m16663this(n, graphConnectionsM16666break) == null);
        return graphConnectionsM16666break;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @lf
    public boolean addNode(N n) {
        af1.m227strictfp(n, k.f23935package);
        if (m16672case(n)) {
            return false;
        }
        m16667this(n);
        return true;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @lf
    public V putEdgeValue(N n, N n2, V v) {
        af1.m227strictfp(n, "nodeU");
        af1.m227strictfp(n2, "nodeV");
        af1.m227strictfp(v, ES6Iterator.VALUE_PROPERTY);
        if (!allowsSelfLoops()) {
            af1.m225return(!n.equals(n2), Cthrows.f15105catch, n);
        }
        GraphConnections<N, V> graphConnectionsMo16657case = this.f14975new.mo16657case(n);
        if (graphConnectionsMo16657case == null) {
            graphConnectionsMo16657case = m16667this(n);
        }
        V vAddSuccessor = graphConnectionsMo16657case.addSuccessor(n2, v);
        GraphConnections<N, V> graphConnectionsMo16657case2 = this.f14975new.mo16657case(n2);
        if (graphConnectionsMo16657case2 == null) {
            graphConnectionsMo16657case2 = m16667this(n2);
        }
        graphConnectionsMo16657case2.addPredecessor(n, v);
        if (vAddSuccessor == null) {
            long j = this.f14976try + 1;
            this.f14976try = j;
            Cdefault.m16715try(j);
        }
        return vAddSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @lf
    public V removeEdge(N n, N n2) {
        af1.m227strictfp(n, "nodeU");
        af1.m227strictfp(n2, "nodeV");
        GraphConnections<N, V> graphConnectionsMo16657case = this.f14975new.mo16657case(n);
        GraphConnections<N, V> graphConnectionsMo16657case2 = this.f14975new.mo16657case(n2);
        if (graphConnectionsMo16657case == null || graphConnectionsMo16657case2 == null) {
            return null;
        }
        V vRemoveSuccessor = graphConnectionsMo16657case.removeSuccessor(n2);
        if (vRemoveSuccessor != null) {
            graphConnectionsMo16657case2.removePredecessor(n);
            long j = this.f14976try - 1;
            this.f14976try = j;
            Cdefault.m16705for(j);
        }
        return vRemoveSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @lf
    public boolean removeNode(N n) {
        af1.m227strictfp(n, k.f23935package);
        GraphConnections<N, V> graphConnectionsMo16657case = this.f14975new.mo16657case(n);
        if (graphConnectionsMo16657case == null) {
            return false;
        }
        if (allowsSelfLoops() && graphConnectionsMo16657case.removeSuccessor(n) != null) {
            graphConnectionsMo16657case.removePredecessor(n);
            this.f14976try--;
        }
        Iterator<N> it = graphConnectionsMo16657case.successors().iterator();
        while (it.hasNext()) {
            this.f14975new.m16661goto(it.next()).removePredecessor(n);
            this.f14976try--;
        }
        if (isDirected()) {
            Iterator<N> it2 = graphConnectionsMo16657case.predecessors().iterator();
            while (it2.hasNext()) {
                af1.t(this.f14975new.m16661goto(it2.next()).removeSuccessor(n) != null);
                this.f14976try--;
            }
        }
        this.f14975new.m16656break(n);
        Cdefault.m16705for(this.f14976try);
        return true;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @lf
    public V removeEdge(Cimport<N> cimport) {
        m16725for(cimport);
        return removeEdge(cimport.m16773new(), cimport.m16775try());
    }

    @Override // com.google.common.graph.MutableValueGraph
    @lf
    public V putEdgeValue(Cimport<N> cimport, V v) {
        m16725for(cimport);
        return putEdgeValue(cimport.m16773new(), cimport.m16775try(), v);
    }
}
