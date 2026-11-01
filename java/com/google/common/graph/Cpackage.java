package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.lf;
import android.support.v4.o8;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.x0;
import java.util.Set;

@fm0(containerOf = {"N", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@o8
/* renamed from: com.google.common.graph.package, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cpackage<N, V> extends Cclass<N, V> {

    /* renamed from: com.google.common.graph.package$do, reason: invalid class name */
    public static class Cdo implements Function<N, V> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ValueGraph f15089do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f15090if;

        public Cdo(ValueGraph valueGraph, Object obj) {
            this.f15089do = valueGraph;
            this.f15090if = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Function
        public V apply(N n) {
            return (V) this.f15089do.edgeValueOrDefault(this.f15090if, n, null);
        }
    }

    /* renamed from: com.google.common.graph.package$if, reason: invalid class name */
    public static class Cif<N, V> {

        /* renamed from: do, reason: not valid java name */
        private final MutableValueGraph<N, V> f15091do;

        public Cif(Cinstanceof<N, V> cinstanceof) {
            this.f15091do = (MutableValueGraph<N, V>) cinstanceof.m16783if();
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public Cif<N, V> m16808do(N n) {
            this.f15091do.addNode(n);
            return this;
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public Cif<N, V> m16809for(Cimport<N> cimport, V v) {
            this.f15091do.putEdgeValue(cimport, v);
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cpackage<N, V> m16810if() {
            return Cpackage.m16805class(this.f15091do);
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public Cif<N, V> m16811new(N n, N n2, V v) {
            this.f15091do.putEdgeValue(n, n2, v);
            return this;
        }
    }

    private Cpackage(ValueGraph<N, V> valueGraph) {
        super(Cinstanceof.m16776case(valueGraph), m16806const(valueGraph), valueGraph.edges().size());
    }

    /* renamed from: break, reason: not valid java name */
    private static <N, V> GraphConnections<N, V> m16803break(ValueGraph<N, V> valueGraph, N n) {
        Cdo cdo = new Cdo(valueGraph, n);
        return valueGraph.isDirected() ? Cconst.m16677break(n, valueGraph.incidentEdges(n), cdo) : Cprotected.m16813if(Maps.m15407break(valueGraph.adjacentNodes(n), cdo));
    }

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public static <N, V> Cpackage<N, V> m16804catch(Cpackage<N, V> cpackage) {
        return (Cpackage) af1.m205continue(cpackage);
    }

    /* renamed from: class, reason: not valid java name */
    public static <N, V> Cpackage<N, V> m16805class(ValueGraph<N, V> valueGraph) {
        return valueGraph instanceof Cpackage ? (Cpackage) valueGraph : new Cpackage<>(valueGraph);
    }

    /* renamed from: const, reason: not valid java name */
    private static <N, V> x0<N, GraphConnections<N, V>> m16806const(ValueGraph<N, V> valueGraph) {
        x0.Cif cifBuilder = x0.builder();
        for (N n : valueGraph.nodes()) {
            cifBuilder.mo15869new(n, m16803break(valueGraph, n));
        }
        return cifBuilder.mo15865do();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set adjacentNodes(Object obj) {
        return super.adjacentNodes(obj);
    }

    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.ValueGraph
    @b51
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(Cimport cimport, @b51 Object obj) {
        return super.edgeValueOrDefault(cimport, obj);
    }

    @Override // com.google.common.graph.Cclass, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Cimport cimport) {
        return super.hasEdgeConnecting(cimport);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set incidentEdges(Object obj) {
        return super.incidentEdges(obj);
    }

    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean isDirected() {
        return super.isDirected();
    }

    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Cwhile nodeOrder() {
        return super.nodeOrder();
    }

    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ Set nodes() {
        return super.nodes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Set predecessors(Object obj) {
        return super.predecessors((Cpackage<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Set successors(Object obj) {
        return super.successors((Cpackage<N, V>) obj);
    }

    @Override // com.google.common.graph.Celse, com.google.common.graph.ValueGraph
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cextends<N> asGraph() {
        return new Cextends<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.ValueGraph
    @b51
    public /* bridge */ /* synthetic */ Object edgeValueOrDefault(Object obj, Object obj2, @b51 Object obj3) {
        return super.edgeValueOrDefault(obj, obj2, obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cclass, com.google.common.graph.Celse, com.google.common.graph.Cdo, com.google.common.graph.BaseGraph
    public /* bridge */ /* synthetic */ boolean hasEdgeConnecting(Object obj, Object obj2) {
        return super.hasEdgeConnecting(obj, obj2);
    }
}
