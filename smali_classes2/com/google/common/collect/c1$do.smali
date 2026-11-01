.class Lcom/google/common/collect/c1$do;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c1;->iterator()Landroid/support/v4/ac2;
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
.field public do:I

.field public final synthetic for:Ljava/util/Iterator;

.field public if:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/collect/c1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c1;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c1$do;->new:Lcom/google/common/collect/c1;

    iput-object p2, p0, Lcom/google/common/collect/c1$do;->for:Ljava/util/Iterator;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/c1$do;->do:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/c1$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/c1$do;->do:I

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c1$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/c1$do;->if:Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/c1$do;->do:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/common/collect/c1$do;->do:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/c1$do;->do:I

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/c1$do;->if:Ljava/lang/Object;

    return-object v0
.end method
