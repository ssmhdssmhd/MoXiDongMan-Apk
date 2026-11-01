.class Lcom/google/common/graph/continue;
.super Lcom/google/common/graph/abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/continue$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/abstract<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile transient for:Lcom/google/common/graph/continue$do;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/continue$do<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient new:Lcom/google/common/graph/continue$do;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/continue$do<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/abstract;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private class(Lcom/google/common/graph/continue$do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/continue$do<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/continue;->for:Lcom/google/common/graph/continue$do;

    iput-object v0, p0, Lcom/google/common/graph/continue;->new:Lcom/google/common/graph/continue$do;

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/continue;->for:Lcom/google/common/graph/continue$do;

    return-void
.end method

.method private const(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/continue$do;

    invoke-direct {v0, p1, p2}, Lcom/google/common/graph/continue$do;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/continue;->class(Lcom/google/common/graph/continue$do;)V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/continue;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/abstract;->goto(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/continue;->const(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public else(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/abstract;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/continue;->for:Lcom/google/common/graph/continue$do;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lcom/google/common/graph/continue$do;->do:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Lcom/google/common/graph/continue$do;->if:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/continue;->new:Lcom/google/common/graph/continue$do;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, v0, Lcom/google/common/graph/continue$do;->do:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/google/common/graph/continue;->class(Lcom/google/common/graph/continue$do;)V

    .line 8
    iget-object p1, v0, Lcom/google/common/graph/continue$do;->if:Ljava/lang/Object;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public new()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/abstract;->new()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/graph/continue;->for:Lcom/google/common/graph/continue$do;

    .line 3
    iput-object v0, p0, Lcom/google/common/graph/continue;->new:Lcom/google/common/graph/continue$do;

    return-void
.end method
