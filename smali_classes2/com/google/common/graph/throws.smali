.class final Lcom/google/common/graph/throws;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/throws$do;
    }
.end annotation


# static fields
.field public static final break:Ljava/lang/String; = "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

.field public static final case:Ljava/lang/String; = "Node %s is not an element of this graph."

.field public static final catch:Ljava/lang/String; = "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

.field public static final class:Ljava/lang/String; = "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don\'t."

.field public static final const:Ljava/lang/String; = "Edge %s already exists in the graph."

.field public static final do:I = 0x2

.field public static final else:Ljava/lang/String; = "Edge %s is not an element of this graph."

.field public static final final:Ljava/lang/String; = "Mismatch: unordered endpoints cannot be used with directed graphs"

.field public static final for:I = 0x14

.field public static final goto:Ljava/lang/String; = "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

.field public static final if:I = 0xa

.field public static final new:F = 1.0f

.field public static final this:Ljava/lang/String; = "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead."

.field public static final try:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
