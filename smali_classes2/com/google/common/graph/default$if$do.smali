.class Lcom/google/common/graph/default$if$do;
.super Lcom/google/common/graph/private;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/default$if;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
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
.field public final synthetic for:Lcom/google/common/graph/default$if;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/default$if;Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/default$if$do;->for:Lcom/google/common/graph/default$if;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/private;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/import<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/default$if$do;->for:Lcom/google/common/graph/default$if;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/graph/default$if;->case()Lcom/google/common/graph/Graph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/private;->do:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/Graph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/default$if$do$do;

    invoke-direct {v1, p0}, Lcom/google/common/graph/default$if$do$do;-><init>(Lcom/google/common/graph/default$if$do;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
