.class Lcom/google/common/collect/package$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/package;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public final synthetic new:Lcom/google/common/collect/package;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/package;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/package$do;->new:Lcom/google/common/collect/package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/package;->access$000(Lcom/google/common/collect/package;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/package$do;->do:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/package;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/package$do;->if:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/common/collect/package$do;->for:I

    return-void
.end method

.method private do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/package$do;->new:Lcom/google/common/collect/package;

    invoke-static {v0}, Lcom/google/common/collect/package;->access$000(Lcom/google/common/collect/package;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/package$do;->do:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/package$do;->if:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/package$do;->do:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/package$do;->do:I

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/package$do;->do()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/package$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/google/common/collect/package$do;->if:I

    iput v0, p0, Lcom/google/common/collect/package$do;->for:I

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/package$do;->new:Lcom/google/common/collect/package;

    iget-object v2, v1, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/common/collect/package;->getSuccessor(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/package$do;->if:I

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/package$do;->do()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/package$do;->for:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/package$do;->if()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/package$do;->new:Lcom/google/common/collect/package;

    iget-object v1, v0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/package$do;->for:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/package;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/package$do;->new:Lcom/google/common/collect/package;

    iget v1, p0, Lcom/google/common/collect/package$do;->if:I

    iget v2, p0, Lcom/google/common/collect/package$do;->for:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/package;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/package$do;->if:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/common/collect/package$do;->for:I

    return-void
.end method
