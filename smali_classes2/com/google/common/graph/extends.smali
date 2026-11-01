.class public Lcom/google/common/graph/extends;
.super Lcom/google/common/graph/public;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/fm0;
    containerOf = {
        "N"
    }
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/extends$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/public<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/BaseGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/public;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/extends;->do:Lcom/google/common/graph/BaseGraph;

    return-void
.end method

.method public static case(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/extends;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)",
            "Lcom/google/common/graph/extends<",
            "TN;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/graph/extends;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/graph/extends;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/extends;

    new-instance v1, Lcom/google/common/graph/class;

    .line 2
    invoke-static {p0}, Lcom/google/common/graph/switch;->else(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/switch;

    move-result-object v2

    invoke-static {p0}, Lcom/google/common/graph/extends;->goto(Lcom/google/common/graph/Graph;)Lcom/google/common/collect/x0;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/common/graph/class;-><init>(Lcom/google/common/graph/new;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, Lcom/google/common/graph/extends;-><init>(Lcom/google/common/graph/BaseGraph;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static else(Lcom/google/common/graph/extends;)Lcom/google/common/graph/extends;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/extends<",
            "TN;>;)",
            "Lcom/google/common/graph/extends<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/extends;

    return-object p0
.end method

.method private static goto(Lcom/google/common/graph/Graph;)Lcom/google/common/collect/x0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)",
            "Lcom/google/common/collect/x0<",
            "TN;",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;",
            "Lcom/google/common/graph/throws$do;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/x0;->builder()Lcom/google/common/collect/x0$if;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-static {p0, v2}, Lcom/google/common/graph/extends;->try(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/x0$if;->do()Lcom/google/common/collect/x0;

    move-result-object p0

    return-object p0
.end method

.method private static try(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;TN;)",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;",
            "Lcom/google/common/graph/throws$do;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/graph/throws$do;->EDGE_EXISTS:Lcom/google/common/graph/throws$do;

    .line 2
    invoke-static {v0}, Lcom/google/common/base/class;->if(Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/google/common/graph/const;->break(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/graph/const;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->break(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/common/graph/protected;->if(Ljava/util/Map;)Lcom/google/common/graph/protected;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/public;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->degree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic hasEdgeConnecting(Lcom/google/common/graph/import;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->hasEdgeConnecting(Lcom/google/common/graph/import;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/public;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->inDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/public;->isDirected()Z

    move-result v0

    return v0
.end method

.method public new()Lcom/google/common/graph/BaseGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/extends;->do:Lcom/google/common/graph/BaseGraph;

    return-object v0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/while;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/public;->nodeOrder()Lcom/google/common/graph/while;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/public;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->outDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/public;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
