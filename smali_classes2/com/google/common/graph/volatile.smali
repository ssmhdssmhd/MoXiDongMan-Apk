.class public final Lcom/google/common/graph/volatile;
.super Lcom/google/common/graph/new;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/new<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public case:Z

.field public else:Lcom/google/common/graph/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/while<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public goto:Lcom/google/common/base/while;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/while<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/new;-><init>(Z)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/common/graph/volatile;->case:Z

    .line 3
    invoke-static {}, Lcom/google/common/graph/while;->new()Lcom/google/common/graph/while;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/volatile;->else:Lcom/google/common/graph/while;

    .line 4
    invoke-static {}, Lcom/google/common/base/while;->absent()Lcom/google/common/base/while;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/volatile;->goto:Lcom/google/common/base/while;

    return-void
.end method

.method public static class()Lcom/google/common/graph/volatile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/volatile<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/volatile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/volatile;-><init>(Z)V

    return-object v0
.end method

.method private new()Lcom/google/common/graph/volatile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/volatile<",
            "TN1;TE1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static this(Lcom/google/common/graph/Network;)Lcom/google/common/graph/volatile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/volatile<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/volatile;

    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/volatile;-><init>(Z)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/volatile;->do(Z)Lcom/google/common/graph/volatile;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/volatile;->if(Z)Lcom/google/common/graph/volatile;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodeOrder()Lcom/google/common/graph/while;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/volatile;->catch(Lcom/google/common/graph/while;)Lcom/google/common/graph/volatile;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edgeOrder()Lcom/google/common/graph/while;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/volatile;->case(Lcom/google/common/graph/while;)Lcom/google/common/graph/volatile;

    move-result-object p0

    return-object p0
.end method

.method public static try()Lcom/google/common/graph/volatile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/volatile<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/volatile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/volatile;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public break()Lcom/google/common/graph/finally$new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/finally$new<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/volatile;->new()Lcom/google/common/graph/volatile;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/graph/finally$new;

    invoke-direct {v1, v0}, Lcom/google/common/graph/finally$new;-><init>(Lcom/google/common/graph/volatile;)V

    return-object v1
.end method

.method public case(Lcom/google/common/graph/while;)Lcom/google/common/graph/volatile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "Lcom/google/common/graph/while<",
            "TE1;>;)",
            "Lcom/google/common/graph/volatile<",
            "TN;TE1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/volatile;->new()Lcom/google/common/graph/volatile;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/while;

    iput-object p1, v0, Lcom/google/common/graph/volatile;->else:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public catch(Lcom/google/common/graph/while;)Lcom/google/common/graph/volatile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/while<",
            "TN1;>;)",
            "Lcom/google/common/graph/volatile<",
            "TN1;TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/volatile;->new()Lcom/google/common/graph/volatile;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/while;

    iput-object p1, v0, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public do(Z)Lcom/google/common/graph/volatile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/volatile<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/common/graph/volatile;->case:Z

    return-object p0
.end method

.method public else(I)Lcom/google/common/graph/volatile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/volatile<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/graph/default;->if(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/while;->of(Ljava/lang/Object;)Lcom/google/common/base/while;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/volatile;->goto:Lcom/google/common/base/while;

    return-object p0
.end method

.method public for()Lcom/google/common/graph/MutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/MutableNetwork<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/this;

    invoke-direct {v0, p0}, Lcom/google/common/graph/this;-><init>(Lcom/google/common/graph/volatile;)V

    return-object v0
.end method

.method public goto(I)Lcom/google/common/graph/volatile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/volatile<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/graph/default;->if(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/while;->of(Ljava/lang/Object;)Lcom/google/common/base/while;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/new;->try:Lcom/google/common/base/while;

    return-object p0
.end method

.method public if(Z)Lcom/google/common/graph/volatile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/volatile<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/common/graph/new;->if:Z

    return-object p0
.end method
