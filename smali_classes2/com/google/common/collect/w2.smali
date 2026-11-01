.class final Lcom/google/common/collect/w2;
.super Lcom/google/common/collect/k1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k1<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k1<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final else:[J


# instance fields
.field private final transient case:I

.field public final transient elementSet:Lcom/google/common/collect/x2;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x2<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient new:[J

.field private final transient try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/common/collect/w2;->else:[J

    .line 2
    new-instance v0, Lcom/google/common/collect/w2;

    .line 3
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/w2;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/w2;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/k1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/x2;[JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x2<",
            "TE;>;[JII)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/k1;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    .line 8
    iput-object p2, p0, Lcom/google/common/collect/w2;->new:[J

    .line 9
    iput p3, p0, Lcom/google/common/collect/w2;->try:I

    .line 10
    iput p4, p0, Lcom/google/common/collect/w2;->case:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/k1;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/m1;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/x2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    .line 3
    sget-object p1, Lcom/google/common/collect/w2;->else:[J

    iput-object p1, p0, Lcom/google/common/collect/w2;->new:[J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/w2;->try:I

    .line 5
    iput p1, p0, Lcom/google/common/collect/w2;->case:I

    return-void
.end method

.method private new(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w2;->new:[J

    iget v1, p0, Lcom/google/common/collect/w2;->try:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    return p1
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x2;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/w2;->new(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/g1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/w2;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/w2;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/w2;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/w2;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/w2;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    invoke-virtual {v0}, Lcom/google/common/collect/x2;->asList()Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/collect/w2;->new(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/c2;->catch(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getSubMultiset(II)Lcom/google/common/collect/k1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/w2;->case:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/af1;->s(III)V

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/k1;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/k1;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/w2;->case:I

    if-ne p2, v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x2;->getSubSet(II)Lcom/google/common/collect/x2;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/collect/w2;

    iget-object v2, p0, Lcom/google/common/collect/w2;->new:[J

    iget v3, p0, Lcom/google/common/collect/w2;->try:I

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/google/common/collect/w2;-><init>(Lcom/google/common/collect/x2;[JII)V

    return-object v1
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w2;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x2;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/w2;->getSubMultiset(II)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/w2;->try:I

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/w2;->case:I

    iget-object v2, p0, Lcom/google/common/collect/w2;->new:[J

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/w2;->case:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/w2;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w2;->new:[J

    iget v1, p0, Lcom/google/common/collect/w2;->try:I

    iget v2, p0, Lcom/google/common/collect/w2;->case:I

    add-int/2addr v2, v1

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    .line 2
    invoke-static {v2, v3}, Lcom/google/common/primitives/this;->throws(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w2;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w2;->elementSet:Lcom/google/common/collect/x2;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x2;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/w2;->case:I

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w2;->getSubMultiset(II)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method
