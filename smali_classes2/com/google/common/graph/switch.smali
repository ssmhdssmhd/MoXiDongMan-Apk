.class public final Lcom/google/common/graph/switch;
.super Lcom/google/common/graph/new;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation runtime Landroid/support/v4/v10;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
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

.method public static catch()Lcom/google/common/graph/switch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/switch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/switch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/switch;-><init>(Z)V

    return-object v0
.end method

.method public static else(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/switch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph<",
            "TN;>;)",
            "Lcom/google/common/graph/switch<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/switch;

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/switch;-><init>(Z)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/switch;->do(Z)Lcom/google/common/graph/switch;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodeOrder()Lcom/google/common/graph/while;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/switch;->break(Lcom/google/common/graph/while;)Lcom/google/common/graph/switch;

    move-result-object p0

    return-object p0
.end method

.method private for()Lcom/google/common/graph/switch;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/switch<",
            "TN1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static try()Lcom/google/common/graph/switch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/switch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/switch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/switch;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public break(Lcom/google/common/graph/while;)Lcom/google/common/graph/switch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/while<",
            "TN1;>;)",
            "Lcom/google/common/graph/switch<",
            "TN1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/switch;->for()Lcom/google/common/graph/switch;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/while;

    iput-object p1, v0, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public case(I)Lcom/google/common/graph/switch;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/switch<",
            "TN;>;"
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

.method public do(Z)Lcom/google/common/graph/switch;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/switch<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/common/graph/new;->if:Z

    return-object p0
.end method

.method public goto()Lcom/google/common/graph/extends$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/extends$do<",
            "TN1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/switch;->for()Lcom/google/common/graph/switch;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/graph/extends$do;

    invoke-direct {v1, v0}, Lcom/google/common/graph/extends$do;-><init>(Lcom/google/common/graph/switch;)V

    return-object v1
.end method

.method public if()Lcom/google/common/graph/MutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/MutableGraph<",
            "TN1;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/goto;

    invoke-direct {v0, p0}, Lcom/google/common/graph/goto;-><init>(Lcom/google/common/graph/new;)V

    return-object v0
.end method

.method public new()Lcom/google/common/graph/switch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/switch<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/switch;

    iget-boolean v1, p0, Lcom/google/common/graph/new;->do:Z

    invoke-direct {v0, v1}, Lcom/google/common/graph/switch;-><init>(Z)V

    .line 2
    iget-boolean v1, p0, Lcom/google/common/graph/new;->if:Z

    iput-boolean v1, v0, Lcom/google/common/graph/new;->if:Z

    .line 3
    iget-object v1, p0, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    iput-object v1, v0, Lcom/google/common/graph/new;->for:Lcom/google/common/graph/while;

    .line 4
    iget-object v1, p0, Lcom/google/common/graph/new;->try:Lcom/google/common/base/while;

    iput-object v1, v0, Lcom/google/common/graph/new;->try:Lcom/google/common/base/while;

    .line 5
    iget-object v1, p0, Lcom/google/common/graph/new;->new:Lcom/google/common/graph/while;

    iput-object v1, v0, Lcom/google/common/graph/new;->new:Lcom/google/common/graph/while;

    return-object v0
.end method

.method public this(Lcom/google/common/graph/while;)Lcom/google/common/graph/switch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/while<",
            "TN1;>;)",
            "Lcom/google/common/graph/switch<",
            "TN1;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/graph/while;->goto()Lcom/google/common/graph/while$if;

    move-result-object v0

    sget-object v1, Lcom/google/common/graph/while$if;->UNORDERED:Lcom/google/common/graph/while$if;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/while;->goto()Lcom/google/common/graph/while$if;

    move-result-object v0

    sget-object v1, Lcom/google/common/graph/while$if;->STABLE:Lcom/google/common/graph/while$if;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable()."

    .line 3
    invoke-static {v0, v1, p1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/google/common/graph/switch;->for()Lcom/google/common/graph/switch;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/while;

    iput-object p1, v0, Lcom/google/common/graph/new;->new:Lcom/google/common/graph/while;

    return-object v0
.end method
