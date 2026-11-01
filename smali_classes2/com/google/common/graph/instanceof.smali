.class public final Lcom/google/common/graph/instanceof;
.super Lcom/google/common/graph/new;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/new<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/new;-><init>(Z)V

    return-void
.end method

.method public static case(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/instanceof;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/instanceof<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/instanceof;

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/instanceof;-><init>(Z)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/instanceof;->do(Z)Lcom/google/common/graph/instanceof;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/common/graph/while;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/instanceof;->goto(Lcom/google/common/graph/while;)Lcom/google/common/graph/instanceof;

    move-result-object p0

    return-object p0
.end method

.method private for()Lcom/google/common/graph/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/instanceof<",
            "TN1;TV1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static new()Lcom/google/common/graph/instanceof;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/instanceof<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/instanceof;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/instanceof;-><init>(Z)V

    return-object v0
.end method

.method public static this()Lcom/google/common/graph/instanceof;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/instanceof<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/instanceof;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/instanceof;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public do(Z)Lcom/google/common/graph/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/instanceof<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/common/graph/new;->if:Z

    return-object p0
.end method

.method public else()Lcom/google/common/graph/package$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/package$if<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/instanceof;->for()Lcom/google/common/graph/instanceof;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/graph/package$if;

    invoke-direct {v1, v0}, Lcom/google/common/graph/package$if;-><init>(Lcom/google/common/graph/instanceof;)V

    return-object v1
.end method

.method public goto(Lcom/google/common/graph/while;)Lcom/google/common/graph/instanceof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/while<",
            "TN1;>;)",
            "Lcom/google/common/graph/instanceof<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/instanceof;->for()Lcom/google/common/graph/instanceof;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/while;

    iput-object p1, v0, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public if()Lcom/google/common/graph/MutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/MutableValueGraph<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/break;

    invoke-direct {v0, p0}, Lcom/google/common/graph/break;-><init>(Lcom/google/common/graph/new;)V

    return-object v0
.end method

.method public try(I)Lcom/google/common/graph/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/instanceof<",
            "TN;TV;>;"
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
