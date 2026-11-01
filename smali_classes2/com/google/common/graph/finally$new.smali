.class public Lcom/google/common/graph/finally$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/graph/MutableNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/volatile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/volatile<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/volatile;->for()Lcom/google/common/graph/MutableNetwork;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/finally$new;->do:Lcom/google/common/graph/MutableNetwork;

    return-void
.end method


# virtual methods
.method public do(Lcom/google/common/graph/import;Ljava/lang/Object;)Lcom/google/common/graph/finally$new;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/import<",
            "TN;>;TE;)",
            "Lcom/google/common/graph/finally$new<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/finally$new;->do:Lcom/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/MutableNetwork;->addEdge(Lcom/google/common/graph/import;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public for(Ljava/lang/Object;)Lcom/google/common/graph/finally$new;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/finally$new<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/finally$new;->do:Lcom/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public if(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/finally$new;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)",
            "Lcom/google/common/graph/finally$new<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/finally$new;->do:Lcom/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public new()Lcom/google/common/graph/finally;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/finally<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/finally$new;->do:Lcom/google/common/graph/MutableNetwork;

    invoke-static {v0}, Lcom/google/common/graph/finally;->const(Lcom/google/common/graph/Network;)Lcom/google/common/graph/finally;

    move-result-object v0

    return-object v0
.end method
