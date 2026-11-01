.class Lcom/google/common/collect/package;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient do:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public transient elements:[Ljava/lang/Object;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field private transient for:I

.field private transient if:[I
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field private transient new:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/package;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/package;->init(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/collect/package;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/package;->for:I

    return p0
.end method

.method public static create()Lcom/google/common/collect/package;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/package<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/package;

    invoke-direct {v0}, Lcom/google/common/collect/package;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/package;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/package<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/package;->createWithExpectedSize(I)Lcom/google/common/collect/package;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/package;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/package<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/package;->createWithExpectedSize(I)Lcom/google/common/collect/package;

    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/package;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/package<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/package;

    invoke-direct {v0, p0}, Lcom/google/common/collect/package;-><init>(I)V

    return-object v0
.end method

.method private do()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/package;->for:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private for(IIII)I
    .locals 8
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/private;->do(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {v0, p3, p4}, Lcom/google/common/collect/private;->this(Ljava/lang/Object;II)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    .line 4
    iget-object p4, p0, Lcom/google/common/collect/package;->if:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 5
    invoke-static {p3, v1}, Lcom/google/common/collect/private;->goto(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget v4, p4, v3

    .line 7
    invoke-static {v4, p1}, Lcom/google/common/collect/private;->if(II)I

    move-result v5

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 8
    invoke-static {v0, v6}, Lcom/google/common/collect/private;->goto(Ljava/lang/Object;I)I

    move-result v7

    .line 9
    invoke-static {v0, v6, v2}, Lcom/google/common/collect/private;->this(Ljava/lang/Object;II)V

    .line 10
    invoke-static {v5, v7, p2}, Lcom/google/common/collect/private;->new(III)I

    move-result v2

    aput v2, p4, v3

    .line 11
    invoke-static {v4, p1}, Lcom/google/common/collect/private;->for(II)I

    move-result v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p2}, Lcom/google/common/collect/package;->new(I)V

    return p2
.end method

.method private if(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/package;->if:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    const p1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    or-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/package;->resizeEntries(I)V

    :cond_0
    return-void
.end method

.method private new(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 2
    iget v0, p0, Lcom/google/common/collect/package;->for:I

    const/16 v1, 0x1f

    .line 3
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/private;->new(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/package;->for:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/package;->init(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/common/collect/package;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/package;->new:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/package;->firstEntryIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/package;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/package;->allocArrays()I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/package;->if:[I

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    .line 5
    iget v2, p0, Lcom/google/common/collect/package;->new:I

    add-int/lit8 v3, v2, 0x1

    .line 6
    invoke-static {p1}, Lcom/google/common/collect/n0;->new(Ljava/lang/Object;)I

    move-result v4

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/package;->do()I

    move-result v5

    and-int v6, v4, v5

    .line 8
    iget-object v7, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/google/common/collect/private;->goto(Ljava/lang/Object;I)I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    if-le v3, v5, :cond_1

    .line 9
    invoke-static {v5}, Lcom/google/common/collect/private;->try(I)I

    move-result v0

    invoke-direct {p0, v5, v0, v4, v2}, Lcom/google/common/collect/package;->for(IIII)I

    move-result v5

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    invoke-static {v0, v6, v3}, Lcom/google/common/collect/private;->this(Ljava/lang/Object;II)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v4, v5}, Lcom/google/common/collect/private;->if(II)I

    move-result v6

    :goto_0
    sub-int/2addr v7, v8

    .line 12
    aget v9, v0, v7

    .line 13
    invoke-static {v9, v5}, Lcom/google/common/collect/private;->if(II)I

    move-result v10

    if-ne v10, v6, :cond_3

    aget-object v10, v1, v7

    .line 14
    invoke-static {p1, v10}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_3
    invoke-static {v9, v5}, Lcom/google/common/collect/private;->for(II)I

    move-result v10

    if-nez v10, :cond_5

    if-le v3, v5, :cond_4

    .line 16
    invoke-static {v5}, Lcom/google/common/collect/private;->try(I)I

    move-result v0

    invoke-direct {p0, v5, v0, v4, v2}, Lcom/google/common/collect/package;->for(IIII)I

    move-result v5

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {v9, v3, v5}, Lcom/google/common/collect/private;->new(III)I

    move-result v1

    aput v1, v0, v7

    .line 18
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/common/collect/package;->if(I)V

    .line 19
    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/google/common/collect/package;->insertEntry(ILjava/lang/Object;II)V

    .line 20
    iput v3, p0, Lcom/google/common/collect/package;->new:I

    .line 21
    invoke-virtual {p0}, Lcom/google/common/collect/package;->incrementModCount()V

    return v8

    :cond_5
    move v7, v10

    goto :goto_0
.end method

.method public adjustAfterRemove(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public allocArrays()I
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/google/common/collect/package;->for:I

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/private;->break(I)I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/private;->do(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/common/collect/package;->new(I)V

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/package;->if:[I

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    return v0
.end method

.method public clear()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/package;->incrementModCount()V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/package;->new:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/private;->else(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/package;->if:[I

    iget v1, p0, Lcom/google/common/collect/package;->new:I

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 6
    iput v3, p0, Lcom/google/common/collect/package;->new:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/n0;->new(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/package;->do()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/private;->goto(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-static {v0, v2}, Lcom/google/common/collect/private;->if(II)I

    move-result v0

    :cond_2
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 6
    iget-object v5, p0, Lcom/google/common/collect/package;->if:[I

    aget v5, v5, v3

    .line 7
    invoke-static {v5, v2}, Lcom/google/common/collect/private;->if(II)I

    move-result v6

    if-ne v6, v0, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    aget-object v3, v6, v3

    .line 8
    invoke-static {p1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    .line 9
    :cond_3
    invoke-static {v5, v2}, Lcom/google/common/collect/private;->for(II)I

    move-result v3

    if-nez v3, :cond_2

    return v1
.end method

.method public firstEntryIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSuccessor(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v0, p0, Lcom/google/common/collect/package;->new:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public incrementModCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/package;->for:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/package;->for:I

    return-void
.end method

.method public init(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    .line 1
    invoke-static {v1, v2}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/package;->for:I

    return-void
.end method

.method public insertEntry(ILjava/lang/Object;II)V
    .locals 2
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
    iget-object v0, p0, Lcom/google/common/collect/package;->if:[I

    const/4 v1, 0x0

    invoke-static {p3, v1, p4}, Lcom/google/common/collect/private;->new(III)I

    move-result p3

    aput p3, v0, p1

    .line 2
    iget-object p3, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    aput-object p2, p3, p1

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/package;->new:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/package$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/package$do;-><init>(Lcom/google/common/collect/package;)V

    return-object v0
.end method

.method public moveLastEntry(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 3
    aput-object v4, v3, p1

    .line 4
    aput-object v2, v3, v0

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/package;->if:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 6
    aput v1, v2, v0

    .line 7
    invoke-static {v4}, Lcom/google/common/collect/n0;->new(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 8
    iget-object v2, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/common/collect/private;->goto(Ljava/lang/Object;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lcom/google/common/collect/private;->this(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 10
    iget-object v1, p0, Lcom/google/common/collect/package;->if:[I

    aget v1, v1, v2

    .line 11
    invoke-static {v1, p2}, Lcom/google/common/collect/private;->for(II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/common/collect/package;->if:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1, p2}, Lcom/google/common/collect/private;->new(III)I

    move-result p1

    aput p1, v0, v2

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 14
    iget-object p2, p0, Lcom/google/common/collect/package;->if:[I

    aput v1, p2, p1

    :goto_1
    return-void
.end method

.method public needsAllocArrays()Z
    .locals 1
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/package;->do()I

    move-result v0

    const/4 v3, 0x0

    .line 3
    iget-object v5, p0, Lcom/google/common/collect/package;->do:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/collect/package;->if:[I

    iget-object v7, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v2, p1

    move v4, v0

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/private;->case(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/package;->moveLastEntry(II)V

    .line 6
    iget p1, p0, Lcom/google/common/collect/package;->new:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/package;->new:I

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/package;->incrementModCount()V

    return v0
.end method

.method public resizeEntries(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/package;->if:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/package;->if:[I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/package;->new:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/package;->new:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    aput-object v0, p1, v1

    :cond_0
    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/package;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/package;->new:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/h2;->final([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public trimToSize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/package;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/common/collect/package;->new:I

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/package;->if:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/package;->resizeEntries(I)V

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/private;->break(I)I

    move-result v0

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/package;->do()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v1, v0, v2, v2}, Lcom/google/common/collect/package;->for(IIII)I

    :cond_2
    return-void
.end method
