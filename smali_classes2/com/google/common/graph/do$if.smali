.class Lcom/google/common/graph/do$if;
.super Lcom/google/common/graph/private;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/do;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/private<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/graph/do;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/do;Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/do$if;->for:Lcom/google/common/graph/do;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/private;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/ac2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "Lcom/google/common/graph/import<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/private;->if:Lcom/google/common/graph/BaseGraph;

    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/private;->if:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/private;->do:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/do$if$do;

    invoke-direct {v1, p0}, Lcom/google/common/graph/do$if$do;-><init>(Lcom/google/common/graph/do$if;)V

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/private;->if:Lcom/google/common/graph/BaseGraph;

    iget-object v2, p0, Lcom/google/common/graph/private;->do:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/private;->do:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/g1;->of(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/c3;->case(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/c3$const;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/c3$const;->for()Landroid/support/v4/ac2;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/do$if$if;

    invoke-direct {v2, p0}, Lcom/google/common/graph/do$if$if;-><init>(Lcom/google/common/graph/do$if;)V

    .line 6
    invoke-static {v1, v2}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->break(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/common/collect/s1;->s(Ljava/util/Iterator;)Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/private;->if:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/private;->do:Ljava/lang/Object;

    .line 10
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/do$if$for;

    invoke-direct {v1, p0}, Lcom/google/common/graph/do$if$for;-><init>(Lcom/google/common/graph/do$if;)V

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/google/common/collect/s1;->s(Ljava/util/Iterator;)Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/do$if;->do()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method
