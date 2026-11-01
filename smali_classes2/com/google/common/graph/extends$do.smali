.class public Lcom/google/common/graph/extends$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/extends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/graph/MutableGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/switch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/switch<",
            "TN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/switch;->new()Lcom/google/common/graph/switch;

    move-result-object p1

    invoke-static {}, Lcom/google/common/graph/while;->else()Lcom/google/common/graph/while;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/graph/switch;->this(Lcom/google/common/graph/while;)Lcom/google/common/graph/switch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/graph/switch;->if()Lcom/google/common/graph/MutableGraph;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/extends$do;->do:Lcom/google/common/graph/MutableGraph;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Lcom/google/common/graph/extends$do;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/extends$do<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/extends$do;->do:Lcom/google/common/graph/MutableGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public for(Lcom/google/common/graph/import;)Lcom/google/common/graph/extends$do;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/import<",
            "TN;>;)",
            "Lcom/google/common/graph/extends$do<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/extends$do;->do:Lcom/google/common/graph/MutableGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableGraph;->putEdge(Lcom/google/common/graph/import;)Z

    return-object p0
.end method

.method public if()Lcom/google/common/graph/extends;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/extends<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/extends$do;->do:Lcom/google/common/graph/MutableGraph;

    invoke-static {v0}, Lcom/google/common/graph/extends;->case(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/extends;

    move-result-object v0

    return-object v0
.end method

.method public new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/extends$do;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lcom/google/common/graph/extends$do<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/extends$do;->do:Lcom/google/common/graph/MutableGraph;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method
