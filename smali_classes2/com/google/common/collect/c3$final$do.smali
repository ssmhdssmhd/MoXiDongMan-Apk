.class Lcom/google/common/collect/c3$final$do;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c3$final;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ac2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/google/common/collect/c3$final;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3$final;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c3$final$do;->for:Lcom/google/common/collect/c3$final;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/c3$final;->do(Lcom/google/common/collect/c3$final;)Lcom/google/common/collect/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->keySet()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->asList()Lcom/google/common/collect/v0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c3$final$do;->do:Lcom/google/common/collect/v0;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/c3$final;->if(Lcom/google/common/collect/c3$final;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/c3$final$do;->if:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/c3$final$do;->if:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/c3$final$do;->if:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2
    iget v1, p0, Lcom/google/common/collect/c3$final$do;->if:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/c3$final$do;->if:I

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/c3$final$do;->do:Lcom/google/common/collect/v0;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
