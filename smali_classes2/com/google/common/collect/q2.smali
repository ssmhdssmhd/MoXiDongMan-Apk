.class Lcom/google/common/collect/q2;
.super Lcom/google/common/collect/o0;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/collect/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final delegateList:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/r0;Lcom/google/common/collect/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TE;>;",
            "Lcom/google/common/collect/v0<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/o0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/q2;->delegate:Lcom/google/common/collect/r0;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r0;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lcom/google/common/collect/v0;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/q2;-><init>(Lcom/google/common/collect/r0;Lcom/google/common/collect/v0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r0;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 5
    invoke-static {p2, p3}, Lcom/google/common/collect/v0;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/v0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/q2;-><init>(Lcom/google/common/collect/r0;Lcom/google/common/collect/v0;)V

    return-void
.end method


# virtual methods
.method public copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v0;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public delegateCollection()Lcom/google/common/collect/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegate:Lcom/google/common/collect/r0;

    return-object v0
.end method

.method public delegateList()Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "+TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public internalArrayEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->internalArrayEnd()I

    move-result v0

    return v0
.end method

.method public internalArrayStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->internalArrayStart()I

    move-result v0

    return v0
.end method

.method public listIterator(I)Landroid/support/v4/bc2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/bc2<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/q2;->delegateList:Lcom/google/common/collect/v0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v0;->listIterator(I)Landroid/support/v4/bc2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/q2;->listIterator(I)Landroid/support/v4/bc2;

    move-result-object p1

    return-object p1
.end method
