package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.g1;
import com.google.common.collect.r1;
import com.google.common.collect.s1;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@o8
/* renamed from: com.google.common.graph.default, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdefault {

    /* renamed from: com.google.common.graph.default$do, reason: invalid class name */
    public enum Cdo {
        PENDING,
        COMPLETE
    }

    /* renamed from: com.google.common.graph.default$for, reason: invalid class name */
    public static class Cfor<N, E> extends Creturn<N, E> {

        /* renamed from: do, reason: not valid java name */
        private final Network<N, E> f15015do;

        public Cfor(Network<N, E> network) {
            this.f15015do = network;
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public E edgeConnectingOrNull(N n, N n2) {
            return mo16718try().edgeConnectingOrNull(n2, n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public Set<E> edgesConnecting(N n, N n2) {
            return mo16718try().edgesConnecting(n2, n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public boolean hasEdgeConnecting(N n, N n2) {
            return mo16718try().hasEdgeConnecting(n2, n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public int inDegree(N n) {
            return mo16718try().outDegree(n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Network
        public Set<E> inEdges(N n) {
            return mo16718try().outEdges(n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Network
        public Cimport<N> incidentNodes(E e) {
            Cimport<N> cimportIncidentNodes = mo16718try().incidentNodes(e);
            return Cimport.m16767else(this.f15015do, cimportIncidentNodes.m16775try(), cimportIncidentNodes.m16773new());
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public int outDegree(N n) {
            return mo16718try().inDegree(n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Network
        public Set<E> outEdges(N n) {
            return mo16718try().inEdges(n);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.Creturn, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((Cfor<N, E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.Creturn, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((Cfor<N, E>) obj);
        }

        @Override // com.google.common.graph.Creturn
        /* renamed from: try, reason: not valid java name */
        public Network<N, E> mo16718try() {
            return this.f15015do;
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public E edgeConnectingOrNull(Cimport<N> cimport) {
            return mo16718try().edgeConnectingOrNull(Cdefault.m16716while(cimport));
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public Set<E> edgesConnecting(Cimport<N> cimport) {
            return mo16718try().edgesConnecting(Cdefault.m16716while(cimport));
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Ctry, com.google.common.graph.Network
        public boolean hasEdgeConnecting(Cimport<N> cimport) {
            return mo16718try().hasEdgeConnecting(Cdefault.m16716while(cimport));
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return mo16718try().successors((Network<N, E>) n);
        }

        @Override // com.google.common.graph.Creturn, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return mo16718try().predecessors((Network<N, E>) n);
        }
    }

    /* renamed from: com.google.common.graph.default$if, reason: invalid class name */
    public static class Cif<N> extends Cpublic<N> {

        /* renamed from: do, reason: not valid java name */
        private final Graph<N> f15016do;

        /* renamed from: com.google.common.graph.default$if$do, reason: invalid class name */
        public class Cdo extends Cprivate<N> {

            /* renamed from: com.google.common.graph.default$if$do$do, reason: invalid class name and collision with other inner class name */
            public class C0117do implements Function<Cimport<N>, Cimport<N>> {
                public C0117do() {
                }

                @Override // com.google.common.base.Function
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Cimport<N> apply(Cimport<N> cimport) {
                    return Cimport.m16765case(Cif.this.mo16721new(), cimport.m16775try(), cimport.m16773new());
                }
            }

            public Cdo(BaseGraph baseGraph, Object obj) {
                super(baseGraph, obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Cimport<N>> iterator() {
                return s1.p(Cif.this.mo16721new().incidentEdges(this.f15092do).iterator(), new C0117do());
            }
        }

        public Cif(Graph<N> graph) {
            this.f15016do = graph;
        }

        @Override // com.google.common.graph.Cpublic
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Graph<N> mo16721new() {
            return this.f15016do;
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public boolean hasEdgeConnecting(N n, N n2) {
            return mo16721new().hasEdgeConnecting(n2, n);
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int inDegree(N n) {
            return mo16721new().outDegree(n);
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public Set<Cimport<N>> incidentEdges(N n) {
            return new Cdo(this, n);
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int outDegree(N n) {
            return mo16721new().inDegree(n);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.Cpublic, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((Cif<N>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.Cpublic, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((Cif<N>) obj);
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.Cfor, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public boolean hasEdgeConnecting(Cimport<N> cimport) {
            return mo16721new().hasEdgeConnecting(Cdefault.m16716while(cimport));
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return mo16721new().successors((Graph<N>) n);
        }

        @Override // com.google.common.graph.Cpublic, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return mo16721new().predecessors((Graph<N>) n);
        }
    }

    /* renamed from: com.google.common.graph.default$new, reason: invalid class name */
    public static class Cnew<N, V> extends Cstatic<N, V> {

        /* renamed from: do, reason: not valid java name */
        private final ValueGraph<N, V> f15019do;

        public Cnew(ValueGraph<N, V> valueGraph) {
            this.f15019do = valueGraph;
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.ValueGraph
        @b51
        public V edgeValueOrDefault(N n, N n2, @b51 V v) {
            return mo16724try().edgeValueOrDefault(n2, n, v);
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public boolean hasEdgeConnecting(N n, N n2) {
            return mo16724try().hasEdgeConnecting(n2, n);
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int inDegree(N n) {
            return mo16724try().outDegree(n);
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public int outDegree(N n) {
            return mo16724try().inDegree(n);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.Cstatic, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((Cnew<N, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.graph.Cstatic, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((Cnew<N, V>) obj);
        }

        @Override // com.google.common.graph.Cstatic
        /* renamed from: try, reason: not valid java name */
        public ValueGraph<N, V> mo16724try() {
            return this.f15019do;
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.ValueGraph
        @b51
        public V edgeValueOrDefault(Cimport<N> cimport, @b51 V v) {
            return mo16724try().edgeValueOrDefault(Cdefault.m16716while(cimport), v);
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
        public boolean hasEdgeConnecting(Cimport<N> cimport) {
            return mo16724try().hasEdgeConnecting(Cdefault.m16716while(cimport));
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return mo16724try().successors((ValueGraph<N, V>) n);
        }

        @Override // com.google.common.graph.Cstatic, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return mo16724try().predecessors((ValueGraph<N, V>) n);
        }
    }

    private Cdefault() {
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m16697break(Network<?, ?> network) {
        if (network.isDirected() || !network.allowsParallelEdges() || network.edges().size() <= network.asGraph().edges().size()) {
            return m16713this(network.asGraph());
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public static <N> MutableGraph<N> m16698case(Graph<N> graph) {
        MutableGraph<N> mutableGraph = (MutableGraph<N>) Cswitch.m16820else(graph).m16824case(graph.nodes().size()).m16827if();
        Iterator<N> it = graph.nodes().iterator();
        while (it.hasNext()) {
            mutableGraph.addNode(it.next());
        }
        for (Cimport<N> cimport : graph.edges()) {
            mutableGraph.putEdge(cimport.m16773new(), cimport.m16775try());
        }
        return mutableGraph;
    }

    /* renamed from: catch, reason: not valid java name */
    public static <N> MutableGraph<N> m16699catch(Graph<N> graph, Iterable<? extends N> iterable) {
        Cgoto cgoto = iterable instanceof Collection ? (MutableGraph<N>) Cswitch.m16820else(graph).m16824case(((Collection) iterable).size()).m16827if() : (MutableGraph<N>) Cswitch.m16820else(graph).m16827if();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            cgoto.addNode(it.next());
        }
        for (N n : cgoto.nodes()) {
            for (N n2 : graph.successors((Graph<N>) n)) {
                if (cgoto.nodes().contains(n2)) {
                    cgoto.putEdge(n, n2);
                }
            }
        }
        return cgoto;
    }

    /* renamed from: class, reason: not valid java name */
    public static <N, E> MutableNetwork<N, E> m16700class(Network<N, E> network, Iterable<? extends N> iterable) {
        Cthis cthis = iterable instanceof Collection ? (MutableNetwork<N, E>) Cvolatile.m16847this(network).m16855goto(((Collection) iterable).size()).m16854for() : (MutableNetwork<N, E>) Cvolatile.m16847this(network).m16854for();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            cthis.addNode(it.next());
        }
        for (E e : cthis.nodes()) {
            for (E e2 : network.outEdges(e)) {
                N nM16770do = network.incidentNodes(e2).m16770do(e);
                if (cthis.nodes().contains(nM16770do)) {
                    cthis.addEdge(e, nM16770do, e2);
                }
            }
        }
        return cthis;
    }

    /* renamed from: const, reason: not valid java name */
    public static <N, V> MutableValueGraph<N, V> m16701const(ValueGraph<N, V> valueGraph, Iterable<? extends N> iterable) {
        Cbreak cbreak = iterable instanceof Collection ? (MutableValueGraph<N, V>) Cinstanceof.m16776case(valueGraph).m16784try(((Collection) iterable).size()).m16783if() : (MutableValueGraph<N, V>) Cinstanceof.m16776case(valueGraph).m16783if();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            cbreak.addNode(it.next());
        }
        for (N n : cbreak.nodes()) {
            for (N n2 : valueGraph.successors((ValueGraph<N, V>) n)) {
                if (cbreak.nodes().contains(n2)) {
                    cbreak.putEdgeValue(n, n2, valueGraph.edgeValueOrDefault(n, n2, null));
                }
            }
        }
        return cbreak;
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m16702do(Graph<?> graph, Object obj, @b51 Object obj2) {
        return graph.isDirected() || !Cthrow.m15205do(obj2, obj);
    }

    /* renamed from: else, reason: not valid java name */
    public static <N, E> MutableNetwork<N, E> m16703else(Network<N, E> network) {
        MutableNetwork<N, E> mutableNetwork = (MutableNetwork<N, E>) Cvolatile.m16847this(network).m16855goto(network.nodes().size()).m16853else(network.edges().size()).m16854for();
        Iterator<N> it = network.nodes().iterator();
        while (it.hasNext()) {
            mutableNetwork.addNode(it.next());
        }
        for (E e : network.edges()) {
            Cimport<N> cimportIncidentNodes = network.incidentNodes(e);
            mutableNetwork.addEdge(cimportIncidentNodes.m16773new(), cimportIncidentNodes.m16775try(), e);
        }
        return mutableNetwork;
    }

    /* renamed from: final, reason: not valid java name */
    public static <N> Set<N> m16704final(Graph<N> graph, N n) {
        af1.m225return(graph.nodes().contains(n), Cthrows.f15104case, n);
        return g1.copyOf(Cinterface.m16785else(graph).mo16790if(n));
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public static long m16705for(long j) {
        af1.m232throw(j >= 0, "Not true that %s is non-negative.", j);
        return j;
    }

    /* renamed from: goto, reason: not valid java name */
    public static <N, V> MutableValueGraph<N, V> m16706goto(ValueGraph<N, V> valueGraph) {
        MutableValueGraph<N, V> mutableValueGraph = (MutableValueGraph<N, V>) Cinstanceof.m16776case(valueGraph).m16784try(valueGraph.nodes().size()).m16783if();
        Iterator<N> it = valueGraph.nodes().iterator();
        while (it.hasNext()) {
            mutableValueGraph.addNode(it.next());
        }
        for (Cimport<N> cimport : valueGraph.edges()) {
            mutableValueGraph.putEdgeValue(cimport.m16773new(), cimport.m16775try(), valueGraph.edgeValueOrDefault(cimport.m16773new(), cimport.m16775try(), null));
        }
        return mutableValueGraph;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static int m16707if(int i) {
        af1.m202catch(i >= 0, "Not true that %s is non-negative.", i);
        return i;
    }

    /* renamed from: import, reason: not valid java name */
    public static <N> Graph<N> m16708import(Graph<N> graph) {
        return !graph.isDirected() ? graph : graph instanceof Cif ? ((Cif) graph).f15016do : new Cif(graph);
    }

    /* renamed from: native, reason: not valid java name */
    public static <N, E> Network<N, E> m16709native(Network<N, E> network) {
        return !network.isDirected() ? network : network instanceof Cfor ? ((Cfor) network).f15015do : new Cfor(network);
    }

    @lf
    /* renamed from: new, reason: not valid java name */
    public static int m16710new(int i) {
        af1.m202catch(i > 0, "Not true that %s is positive.", i);
        return i;
    }

    /* renamed from: public, reason: not valid java name */
    public static <N, V> ValueGraph<N, V> m16711public(ValueGraph<N, V> valueGraph) {
        return !valueGraph.isDirected() ? valueGraph : valueGraph instanceof Cnew ? ((Cnew) valueGraph).f15019do : new Cnew(valueGraph);
    }

    /* renamed from: super, reason: not valid java name */
    private static <N> boolean m16712super(Graph<N> graph, Map<Object, Cdo> map, N n, @b51 N n2) {
        Cdo cdo = map.get(n);
        if (cdo == Cdo.COMPLETE) {
            return false;
        }
        Cdo cdo2 = Cdo.PENDING;
        if (cdo == cdo2) {
            return true;
        }
        map.put(n, cdo2);
        for (N n3 : graph.successors((Graph<N>) n)) {
            if (m16702do(graph, n3, n2) && m16712super(graph, map, n3, n)) {
                return true;
            }
        }
        map.put(n, Cdo.COMPLETE);
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    public static <N> boolean m16713this(Graph<N> graph) {
        int size = graph.edges().size();
        if (size == 0) {
            return false;
        }
        if (!graph.isDirected() && size >= graph.nodes().size()) {
            return true;
        }
        HashMap mapN = Maps.n(graph.nodes().size());
        Iterator<N> it = graph.nodes().iterator();
        while (it.hasNext()) {
            if (m16712super(graph, mapN, it.next(), null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: throw, reason: not valid java name */
    public static <N> Graph<N> m16714throw(Graph<N> graph) {
        Cgoto cgotoM16827if = Cswitch.m16820else(graph).m16825do(true).m16827if();
        if (graph.isDirected()) {
            for (N n : graph.nodes()) {
                Iterator it = m16704final(graph, n).iterator();
                while (it.hasNext()) {
                    cgotoM16827if.putEdge(n, it.next());
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            for (N n2 : graph.nodes()) {
                if (!hashSet.contains(n2)) {
                    Set setM16704final = m16704final(graph, n2);
                    hashSet.addAll(setM16704final);
                    int i = 1;
                    for (Object obj : setM16704final) {
                        int i2 = i + 1;
                        Iterator it2 = r1.m16174abstract(setM16704final, i).iterator();
                        while (it2.hasNext()) {
                            cgotoM16827if.putEdge(obj, it2.next());
                        }
                        i = i2;
                    }
                }
            }
        }
        return cgotoM16827if;
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public static long m16715try(long j) {
        af1.m232throw(j > 0, "Not true that %s is positive.", j);
        return j;
    }

    /* renamed from: while, reason: not valid java name */
    public static <N> Cimport<N> m16716while(Cimport<N> cimport) {
        return cimport.mo16772if() ? Cimport.m16768goto(cimport.mo16769break(), cimport.mo16774this()) : cimport;
    }
}
