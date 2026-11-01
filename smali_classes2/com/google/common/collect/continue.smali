.class Lcom/google/common/collect/continue;
.super Lcom/google/common/collect/package;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/package<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final this:I = -0x2


# instance fields
.field private transient case:[I
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field private transient else:I

.field private transient goto:I

.field private transient try:[I
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/package;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/package;-><init>(I)V

    return-void
.end method

.method private case(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/continue;->try:[I

    add-int/lit8 p2, p2, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public static create()Lcom/google/common/collect/continue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/continue<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/continue;

    invoke-direct {v0}, Lcom/google/common/collect/continue;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/continue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/continue<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/continue;->createWithExpectedSize(I)Lcom/google/common/collect/continue;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/continue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/continue<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/continue;->createWithExpectedSize(I)Lcom/google/common/collect/continue;

    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/continue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/continue<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/continue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/continue;-><init>(I)V

    return-object v0
.end method

.method private else(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/continue;->else:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/continue;->goto(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/continue;->goto:I

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/continue;->case(II)V

    :goto_1
    return-void
.end method

.method private goto(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/continue;->case:[I

    add-int/lit8 p2, p2, 0x1

    aput p2, v0, p1

    return-void
.end method

.method private try(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/continue;->try:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public adjustAfterRemove(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public allocArrays()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/package;->allocArrays()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/continue;->try:[I

    .line 3
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/continue;->case:[I

    return v0
.end method

.method public clear()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/continue;->else:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/continue;->goto:I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/continue;->try:[I

    invoke-virtual {p0}, Lcom/google/common/collect/package;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/continue;->case:[I

    invoke-virtual {p0}, Lcom/google/common/collect/package;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 6
    invoke-super {p0}, Lcom/google/common/collect/package;->clear()V

    return-void
.end method

.method public firstEntryIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/continue;->else:I

    return v0
.end method

.method public getSuccessor(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/continue;->case:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public init(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/package;->init(I)V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/google/common/collect/continue;->else:I

    .line 3
    iput p1, p0, Lcom/google/common/collect/continue;->goto:I

    return-void
.end method

.method public insertEntry(ILjava/lang/Object;II)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/package;->insertEntry(ILjava/lang/Object;II)V

    .line 2
    iget p2, p0, Lcom/google/common/collect/continue;->goto:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/continue;->else(II)V

    const/4 p2, -0x2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/continue;->else(II)V

    return-void
.end method

.method public moveLastEntry(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/package;->moveLastEntry(II)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/continue;->try(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/continue;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/continue;->else(II)V

    if-ge p1, v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/continue;->try(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/continue;->else(II)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/continue;->getSuccessor(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/continue;->else(II)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/continue;->try:[I

    const/4 p2, 0x0

    aput p2, p1, v0

    .line 7
    iget-object p1, p0, Lcom/google/common/collect/continue;->case:[I

    aput p2, p1, v0

    return-void
.end method

.method public resizeEntries(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/package;->resizeEntries(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/continue;->try:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/continue;->try:[I

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/continue;->case:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/continue;->case:[I

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/h2;->class(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/collect/h2;->const(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
