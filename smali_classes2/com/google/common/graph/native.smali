.class abstract Lcom/google/common/graph/native;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/native$for;,
        Lcom/google/common/graph/native$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/for<",
        "Lcom/google/common/graph/import<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public case:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final for:Lcom/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final new:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field public try:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/BaseGraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/graph/native;->try:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/native;->case:Ljava/util/Iterator;

    .line 5
    iput-object p1, p0, Lcom/google/common/graph/native;->for:Lcom/google/common/graph/BaseGraph;

    .line 6
    invoke-interface {p1}, Lcom/google/common/graph/BaseGraph;->nodes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/native;->new:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/native$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/native;-><init>(Lcom/google/common/graph/BaseGraph;)V

    return-void
.end method

.method public static try(Lcom/google/common/graph/BaseGraph;)Lcom/google/common/graph/native;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;)",
            "Lcom/google/common/graph/native<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/graph/native$if;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/native$if;-><init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/native$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/native$for;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/native$for;-><init>(Lcom/google/common/graph/BaseGraph;Lcom/google/common/graph/native$do;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final new()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/native;->case:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/native;->new:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/native;->new:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/native;->try:Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/google/common/graph/native;->for:Lcom/google/common/graph/BaseGraph;

    invoke-interface {v2, v0}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/native;->case:Ljava/util/Iterator;

    return v1
.end method
