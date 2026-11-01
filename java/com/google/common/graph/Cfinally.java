package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.fm0;
import android.support.v4.lf;
import android.support.v4.o8;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.x0;
import java.util.Map;
import java.util.Set;

@fm0(containerOf = {"N", ExifInterface.LONGITUDE_EAST})
@o8
/* renamed from: com.google.common.graph.finally, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfinally<N, E> extends Ccatch<N, E> {

    /* renamed from: com.google.common.graph.finally$do, reason: invalid class name */
    public static class Cdo implements Function<E, N> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Network f15033do;

        public Cdo(Network network) {
            this.f15033do = network;
        }

        @Override // com.google.common.base.Function
        public N apply(E e) {
            return this.f15033do.incidentNodes(e).mo16774this();
        }
    }

    /* renamed from: com.google.common.graph.finally$for, reason: invalid class name */
    public static class Cfor implements Function<E, N> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Network f15034do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f15035if;

        public Cfor(Network network, Object obj) {
            this.f15034do = network;
            this.f15035if = obj;
        }

        @Override // com.google.common.base.Function
        public N apply(E e) {
            return this.f15034do.incidentNodes(e).m16770do(this.f15035if);
        }
    }

    /* renamed from: com.google.common.graph.finally$if, reason: invalid class name */
    public static class Cif implements Function<E, N> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Network f15036do;

        public Cif(Network network) {
            this.f15036do = network;
        }

        @Override // com.google.common.base.Function
        public N apply(E e) {
            return this.f15036do.incidentNodes(e).mo16769break();
        }
    }

    /* renamed from: com.google.common.graph.finally$new, reason: invalid class name */
    public static class Cnew<N, E> {

        /* renamed from: do, reason: not valid java name */
        private final MutableNetwork<N, E> f15037do;

        public Cnew(Cvolatile<N, E> cvolatile) {
            this.f15037do = (MutableNetwork<N, E>) cvolatile.m16854for();
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public Cnew<N, E> m16757do(Cimport<N> cimport, E e) {
            this.f15037do.addEdge(cimport, e);
            return this;
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public Cnew<N, E> m16758for(N n) {
            this.f15037do.addNode(n);
            return this;
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cnew<N, E> m16759if(N n, N n2, E e) {
            this.f15037do.addEdge(n, n2, e);
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cfinally<N, E> m16760new() {
            return Cfinally.m16750const(this.f15037do);
        }
    }

    private Cfinally(Network<N, E> network) {
        super(Cvolatile.m16847this(network), m16752super(network), m16751final(network));
    }

    /* renamed from: catch, reason: not valid java name */
    private static <N, E> NetworkConnections<N, E> m16748catch(Network<N, E> network, N n) {
        if (!network.isDirected()) {
            Map mapM15407break = Maps.m15407break(network.incidentEdges(n), m16753this(network, n));
            return network.allowsParallelEdges() ? Ctransient.m16838try(mapM15407break) : Cimplements.m16764if(mapM15407break);
        }
        Map mapM15407break2 = Maps.m15407break(network.inEdges(n), m16754throw(network));
        Map mapM15407break3 = Maps.m15407break(network.outEdges(n), m16755while(network));
        int size = network.edgesConnecting(n, n).size();
        return network.allowsParallelEdges() ? Cfinal.m16747try(mapM15407break2, mapM15407break3, size) : Csuper.m16817for(mapM15407break2, mapM15407break3, size);
    }

    @Deprecated
    /* renamed from: class, reason: not valid java name */
    public static <N, E> Cfinally<N, E> m16749class(Cfinally<N, E> cfinally) {
        return (Cfinally) af1.m205continue(cfinally);
    }

    /* renamed from: const, reason: not valid java name */
    public static <N, E> Cfinally<N, E> m16750const(Network<N, E> network) {
        return network instanceof Cfinally ? (Cfinally) network : new Cfinally<>(network);
    }

    /* renamed from: final, reason: not valid java name */
    private static <N, E> Map<E, N> m16751final(Network<N, E> network) {
        x0.Cif cifBuilder = x0.builder();
        for (E e : network.edges()) {
            cifBuilder.mo15869new(e, network.incidentNodes(e).m16773new());
        }
        return cifBuilder.mo15865do();
    }

    /* renamed from: super, reason: not valid java name */
    private static <N, E> Map<N, NetworkConnections<N, E>> m16752super(Network<N, E> network) {
        x0.Cif cifBuilder = x0.builder();
        for (N n : network.nodes()) {
            cifBuilder.mo15869new(n, m16748catch(network, n));
        }
        return cifBuilder.mo15865do();
    }

    /* renamed from: this, reason: not valid java name */
    private static <N, E> Function<E, N> m16753this(Network<N, E> network, N n) {
        return new Cfor(network, n);
    }

    /* renamed from: throw, reason: not valid java name */
    private static <N, E> Function<E, N> m16754throw(Network<N, E> network) {
        return new Cdo(network);
    }

    /* renamed from: while, reason: not valid java name */
    private static <N, E> Function<E, N> m16755while(Network<N, E> network) {
        return new Cif(network);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean allowsParallelEdges() {
        return super.allowsParallelEdges();
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    @Override // com.google.common.graph.Ctry, com.google.common.graph.Network
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cextends<N> asGraph() {
        return new Cextends<>(super.asGraph());
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Cwhile edgeOrder() {
        return super.edgeOrder();
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set edges() {
        return super.edges();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Ctry, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set edgesConnecting(Object obj, Object obj2) {
        return super.edgesConnecting(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set inEdges(Object obj) {
        return super.inEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Cimport incidentNodes(Object obj) {
        return super.incidentNodes(obj);
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Cwhile nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network
    public /* bridge */ /* synthetic */ Set outEdges(Object obj) {
        return super.outEdges(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((Cfinally<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Ccatch, com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((Cfinally<N, E>) obj);
    }
}
