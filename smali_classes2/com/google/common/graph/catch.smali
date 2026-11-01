.class Lcom/google/common/graph/catch;
.super Lcom/google/common/graph/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/try<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public final case:Lcom/google/common/graph/abstract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/abstract<",
            "TN;",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;>;"
        }
    .end annotation
.end field

.field private final do:Z

.field public final else:Lcom/google/common/graph/abstract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/abstract<",
            "TE;TN;>;"
        }
    .end annotation
.end field

.field private final for:Z

.field private final if:Z

.field private final new:Lcom/google/common/graph/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/while<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final try:Lcom/google/common/graph/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/while<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/volatile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/volatile<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    iget-object v1, p1, Lcom/google/common/graph/new;->try:Lcom/google/common/base/while;

    const/16 v2, 0xa

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/while;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/graph/while;->for(I)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/graph/volatile;->else:Lcom/google/common/graph/while;

    iget-object v2, p1, Lcom/google/common/graph/volatile;->goto:Lcom/google/common/base/while;

    const/16 v3, 0x14

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/while;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/graph/while;->for(I)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/graph/catch;-><init>(Lcom/google/common/graph/volatile;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/graph/volatile;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/volatile<",
            "-TN;-TE;>;",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;>;",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/common/graph/try;-><init>()V

    .line 7
    iget-boolean v0, p1, Lcom/google/common/graph/new;->do:Z

    iput-boolean v0, p0, Lcom/google/common/graph/catch;->do:Z

    .line 8
    iget-boolean v0, p1, Lcom/google/common/graph/volatile;->case:Z

    iput-boolean v0, p0, Lcom/google/common/graph/catch;->if:Z

    .line 9
    iget-boolean v0, p1, Lcom/google/common/graph/new;->if:Z

    iput-boolean v0, p0, Lcom/google/common/graph/catch;->for:Z

    .line 10
    iget-object v0, p1, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    invoke-virtual {v0}, Lcom/google/common/graph/while;->do()Lcom/google/common/graph/while;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/catch;->new:Lcom/google/common/graph/while;

    .line 11
    iget-object p1, p1, Lcom/google/common/graph/volatile;->else:Lcom/google/common/graph/while;

    invoke-virtual {p1}, Lcom/google/common/graph/while;->do()Lcom/google/common/graph/while;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/catch;->try:Lcom/google/common/graph/while;

    .line 12
    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/common/graph/continue;

    invoke-direct {p1, p2}, Lcom/google/common/graph/continue;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/graph/abstract;

    invoke-direct {p1, p2}, Lcom/google/common/graph/abstract;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/google/common/graph/catch;->case:Lcom/google/common/graph/abstract;

    .line 13
    new-instance p1, Lcom/google/common/graph/abstract;

    invoke-direct {p1, p3}, Lcom/google/common/graph/abstract;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/common/graph/catch;->else:Lcom/google/common/graph/abstract;

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/NetworkConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public allowsParallelEdges()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/graph/catch;->if:Z

    return v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/graph/catch;->for:Z

    return v0
.end method

.method public final case(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->else:Lcom/google/common/graph/abstract;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/abstract;->case(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Edge %s is not an element of this graph."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public edgeOrder()Lcom/google/common/graph/while;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/while<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->try:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->else:Lcom/google/common/graph/abstract;

    invoke-virtual {v0}, Lcom/google/common/graph/abstract;->catch()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/google/common/graph/catch;->for:Z

    if-nez v1, :cond_0

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/common/graph/catch;->goto(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {p1, v1, p2}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, p2}, Lcom/google/common/graph/NetworkConnections;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final else(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->else:Lcom/google/common/graph/abstract;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/abstract;->try(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final goto(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->case:Lcom/google/common/graph/abstract;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/abstract;->try(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/NetworkConnections;->inEdges()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/import;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/import<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->case(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/graph/catch;->case:Lcom/google/common/graph/abstract;

    invoke-virtual {v1, v0}, Lcom/google/common/graph/abstract;->case(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/NetworkConnections;

    invoke-interface {v1, p1}, Lcom/google/common/graph/NetworkConnections;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p0, v0, p1}, Lcom/google/common/graph/import;->else(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method

.method public isDirected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/graph/catch;->do:Z

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/while;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/while<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->new:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->case:Lcom/google/common/graph/abstract;

    invoke-virtual {v0}, Lcom/google/common/graph/abstract;->catch()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/NetworkConnections;->outEdges()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/NetworkConnections;->predecessors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/graph/catch;->try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final try(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/catch;->case:Lcom/google/common/graph/abstract;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/abstract;->case(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Node %s is not an element of this graph."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
