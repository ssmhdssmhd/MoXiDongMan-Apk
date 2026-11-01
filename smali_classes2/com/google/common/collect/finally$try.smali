.class abstract Lcom/google/common/collect/finally$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public final synthetic new:Lcom/google/common/collect/finally;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/finally;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$try;->new:Lcom/google/common/collect/finally;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/finally;->access$000(Lcom/google/common/collect/finally;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/finally$try;->do:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/finally;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/finally$try;->if:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/common/collect/finally$try;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/finally;Lcom/google/common/collect/finally$do;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/finally$try;-><init>(Lcom/google/common/collect/finally;)V

    return-void
.end method

.method private do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$try;->new:Lcom/google/common/collect/finally;

    invoke-static {v0}, Lcom/google/common/collect/finally;->access$000(Lcom/google/common/collect/finally;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/finally$try;->do:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public for()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/finally$try;->do:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/finally$try;->do:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/finally$try;->if:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract if(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/finally$try;->do()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/finally$try;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/google/common/collect/finally$try;->if:I

    iput v0, p0, Lcom/google/common/collect/finally$try;->for:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/finally$try;->if(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/finally$try;->new:Lcom/google/common/collect/finally;

    iget v2, p0, Lcom/google/common/collect/finally$try;->if:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/finally;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/finally$try;->if:I

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/finally$try;->do()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/finally$try;->for:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/finally$try;->for()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/finally$try;->new:Lcom/google/common/collect/finally;

    iget-object v1, v0, Lcom/google/common/collect/finally;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/finally$try;->for:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/finally;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/finally$try;->new:Lcom/google/common/collect/finally;

    iget v1, p0, Lcom/google/common/collect/finally$try;->if:I

    iget v2, p0, Lcom/google/common/collect/finally$try;->for:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/finally;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/finally$try;->if:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/common/collect/finally$try;->for:I

    return-void
.end method
