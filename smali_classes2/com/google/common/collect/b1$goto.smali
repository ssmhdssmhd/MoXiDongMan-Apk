.class final Lcom/google/common/collect/b1$goto;
.super Lcom/google/common/collect/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient if:Lcom/google/common/collect/b1;
    .annotation build Landroid/support/v4/hf2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b1<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b1<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/r0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/b1$goto;->if:Lcom/google/common/collect/b1;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$goto;->if:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyIntoArray([Ljava/lang/Object;I)I
    .locals 2
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$goto;->if:Lcom/google/common/collect/b1;

    iget-object v0, v0, Lcom/google/common/collect/b1;->map:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->values()Lcom/google/common/collect/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/r0;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/r0;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b1$goto;->if:Lcom/google/common/collect/b1;

    invoke-virtual {v0}, Lcom/google/common/collect/b1;->valueIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b1$goto;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b1$goto;->if:Lcom/google/common/collect/b1;

    invoke-virtual {v0}, Lcom/google/common/collect/b1;->size()I

    move-result v0

    return v0
.end method
