.class Lcom/google/common/collect/abstract;
.super Lcom/google/common/collect/finally;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/finally<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final catch:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient break:I

.field public transient links:[J
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field

.field private transient this:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/abstract;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/abstract;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/finally;-><init>(I)V

    .line 4
    iput-boolean p2, p0, Lcom/google/common/collect/abstract;->accessOrder:Z

    return-void
.end method

.method private break(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/abstract;->links:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method public static create()Lcom/google/common/collect/abstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/abstract<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/abstract;

    invoke-direct {v0}, Lcom/google/common/collect/abstract;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/abstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/abstract<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/abstract;

    invoke-direct {v0, p0}, Lcom/google/common/collect/abstract;-><init>(I)V

    return-object v0
.end method

.method private else(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/abstract;->links:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private goto(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/abstract;->links:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private this(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/abstract;->this:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/abstract;->break(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/abstract;->break:I

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/abstract;->goto(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public accessEntry(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/abstract;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/abstract;->else(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/abstract;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/abstract;->this(II)V

    .line 3
    iget v0, p0, Lcom/google/common/collect/abstract;->break:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/abstract;->this(II)V

    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/abstract;->this(II)V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/finally;->incrementModCount()V

    :cond_0
    return-void
.end method

.method public adjustAfterRemove(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/finally;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public allocArrays()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/finally;->allocArrays()I

    move-result v0

    .line 2
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/abstract;->links:[J

    return v0
.end method

.method public clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/finally;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/abstract;->this:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/abstract;->break:I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/abstract;->links:[J

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/finally;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 6
    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/finally;->clear()V

    return-void
.end method

.method public convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/finally;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/common/collect/abstract;->links:[J

    return-object v0
.end method

.method public createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-boolean v1, p0, Lcom/google/common/collect/abstract;->accessOrder:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method public firstEntryIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/abstract;->this:I

    return v0
.end method

.method public getSuccessor(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/abstract;->links:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public init(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/finally;->init(I)V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/google/common/collect/abstract;->this:I

    .line 3
    iput p1, p0, Lcom/google/common/collect/abstract;->break:I

    return-void
.end method

.method public insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/finally;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 2
    iget p2, p0, Lcom/google/common/collect/abstract;->break:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/abstract;->this(II)V

    const/4 p2, -0x2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/abstract;->this(II)V

    return-void
.end method

.method public moveLastEntry(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/finally;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/finally;->moveLastEntry(II)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/abstract;->else(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/abstract;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/abstract;->this(II)V

    if-ge p1, v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/abstract;->else(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/abstract;->this(II)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/abstract;->getSuccessor(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/abstract;->this(II)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/abstract;->links:[J

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    return-void
.end method

.method public resizeEntries(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/finally;->resizeEntries(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/abstract;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/abstract;->links:[J

    return-void
.end method
