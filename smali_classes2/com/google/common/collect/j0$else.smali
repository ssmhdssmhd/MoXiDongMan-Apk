.class final Lcom/google/common/collect/j0$else;
.super Lcom/google/common/collect/j0$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j0$goto<",
        "TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/j0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j0$else;->if:Lcom/google/common/collect/j0;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/j0$goto;-><init>(Lcom/google/common/collect/j0;)V

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
    iget-object v0, p0, Lcom/google/common/collect/j0$else;->if:Lcom/google/common/collect/j0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j0;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public do(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j0$else;->if:Lcom/google/common/collect/j0;

    iget-object v0, v0, Lcom/google/common/collect/j0;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/n0;->new(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/j0$else;->if:Lcom/google/common/collect/j0;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/j0;->findEntryByValue(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/j0$else;->if:Lcom/google/common/collect/j0;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/j0;->removeEntryValueHashKnown(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
