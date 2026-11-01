package com.google.common.graph;

/* renamed from: com.google.common.graph.throws, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthrows {

    /* renamed from: break, reason: not valid java name */
    public static final String f15103break = "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder.";

    /* renamed from: case, reason: not valid java name */
    public static final String f15104case = "Node %s is not an element of this graph.";

    /* renamed from: catch, reason: not valid java name */
    public static final String f15105catch = "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.";

    /* renamed from: class, reason: not valid java name */
    public static final String f15106class = "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.";

    /* renamed from: const, reason: not valid java name */
    public static final String f15107const = "Edge %s already exists in the graph.";

    /* renamed from: do, reason: not valid java name */
    public static final int f15108do = 2;

    /* renamed from: else, reason: not valid java name */
    public static final String f15109else = "Edge %s is not an element of this graph.";

    /* renamed from: final, reason: not valid java name */
    public static final String f15110final = "Mismatch: unordered endpoints cannot be used with directed graphs";

    /* renamed from: for, reason: not valid java name */
    public static final int f15111for = 20;

    /* renamed from: goto, reason: not valid java name */
    public static final String f15112goto = "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s.";

    /* renamed from: if, reason: not valid java name */
    public static final int f15113if = 10;

    /* renamed from: new, reason: not valid java name */
    public static final float f15114new = 1.0f;

    /* renamed from: this, reason: not valid java name */
    public static final String f15115this = "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.";

    /* renamed from: try, reason: not valid java name */
    public static final int f15116try = 2;

    /* renamed from: com.google.common.graph.throws$do, reason: invalid class name */
    public enum Cdo {
        EDGE_EXISTS
    }

    private Cthrows() {
    }
}
