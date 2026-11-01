.class public Lcom/google/common/collect/m0;
.super Lcom/google/common/collect/case;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/case<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/case;-><init>(I)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/m0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/m0;->create(I)Lcom/google/common/collect/m0;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/m0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/m0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m0;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/m0<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/c2;->class(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/m0;->create(I)Lcom/google/common/collect/m0;

    move-result-object v0

    .line 4
    invoke-static {v0, p0}, Lcom/google/common/collect/r1;->do(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/this;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/this;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/this;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public init(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/i2;

    invoke-direct {v0, p1}, Lcom/google/common/collect/i2;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/case;->backingMap:Lcom/google/common/collect/i2;

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/this;->isEmpty()Z

    move-result v0

    return v0
.end method
