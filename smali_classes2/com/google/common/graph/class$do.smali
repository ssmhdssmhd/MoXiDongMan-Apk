.class Lcom/google/common/graph/class$do;
.super Lcom/google/common/graph/private;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/class;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
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
.field public final synthetic for:Lcom/google/common/graph/GraphConnections;

.field public final synthetic new:Lcom/google/common/graph/class;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/class;Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/GraphConnections;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/class$do;->new:Lcom/google/common/graph/class;

    iput-object p4, p0, Lcom/google/common/graph/class$do;->for:Lcom/google/common/graph/GraphConnections;

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
    iget-object v0, p0, Lcom/google/common/graph/class$do;->for:Lcom/google/common/graph/GraphConnections;

    iget-object v1, p0, Lcom/google/common/graph/private;->do:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/GraphConnections;->incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
