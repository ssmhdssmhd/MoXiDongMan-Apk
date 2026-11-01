.class public Lcom/google/common/collect/k1$do;
.super Lcom/google/common/collect/c1$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c1$if<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public case:[Ljava/lang/Object;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private else:[I

.field private goto:I

.field private this:Z

.field private final try:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/c1$if;-><init>(Z)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/k1$do;->try:Ljava/util/Comparator;

    const/4 p1, 0x4

    new-array v0, p1, [Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/k1$do;->else:[I

    return-void
.end method

.method private return(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/common/collect/k1$do;->goto:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/k1$do;->try:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/google/common/collect/k1$do;->try:Ljava/util/Comparator;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    aget-object v6, v0, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 6
    aget-object v4, v0, v2

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget v2, p0, Lcom/google/common/collect/k1$do;->goto:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-eqz p1, :cond_3

    mul-int/lit8 p1, v3, 0x4

    .line 8
    iget v2, p0, Lcom/google/common/collect/k1$do;->goto:I

    mul-int/lit8 v4, v2, 0x3

    if-le p1, v4, :cond_3

    .line 9
    div-int/lit8 p1, v2, 0x2

    add-int/2addr p1, v1

    .line 10
    invoke-static {v2, p1}, Lcom/google/common/math/new;->public(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 11
    :cond_3
    array-length p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_1
    iget v4, p0, Lcom/google/common/collect/k1$do;->goto:I

    if-ge v2, v4, :cond_5

    .line 13
    iget-object v4, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/common/collect/k1$do;->try:Ljava/util/Comparator;

    invoke-static {v0, v1, v3, v4, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 14
    iget-object v5, p0, Lcom/google/common/collect/k1$do;->else:[I

    aget v6, v5, v2

    if-ltz v6, :cond_4

    .line 15
    aget v6, p1, v4

    aget v5, v5, v2

    add-int/2addr v6, v5

    aput v6, p1, v4

    goto :goto_2

    .line 16
    :cond_4
    aget v5, v5, v2

    xor-int/lit8 v5, v5, -0x1

    aput v5, p1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_5
    iput-object v0, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/common/collect/k1$do;->else:[I

    .line 19
    iput v3, p0, Lcom/google/common/collect/k1$do;->goto:I

    return-void
.end method

.method private static()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/k1$do;->return(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/google/common/collect/k1$do;->goto:I

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/common/collect/k1$do;->else:[I

    aget v4, v3, v1

    if-lez v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    aget-object v5, v4, v1

    aput-object v5, v4, v2

    .line 5
    aget v4, v3, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/k1$do;->else:[I

    iget v3, p0, Lcom/google/common/collect/k1$do;->goto:I

    invoke-static {v1, v2, v3, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 8
    iput v2, p0, Lcom/google/common/collect/k1$do;->goto:I

    return-void
.end method

.method private switch()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/k1$do;->goto:I

    iget-object v1, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/collect/k1$do;->return(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/k1$do;->this:Z

    if-eqz v0, :cond_1

    .line 4
    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/common/collect/k1$do;->this:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic break(Ljava/util/Iterator;)Lcom/google/common/collect/c1$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->import(Ljava/util/Iterator;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Ljava/lang/Object;I)Lcom/google/common/collect/c1$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/k1$do;->native(Ljava/lang/Object;I)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic class()Lcom/google/common/collect/c1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k1$do;->public()Lcom/google/common/collect/k1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic const(Ljava/lang/Object;I)Lcom/google/common/collect/c1$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/k1$do;->throws(Ljava/lang/Object;I)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic do(Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Ljava/lang/Object;)Lcom/google/common/collect/c1$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic for(Ljava/lang/Iterable;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->while(Ljava/lang/Iterable;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic goto([Ljava/lang/Object;)Lcom/google/common/collect/c1$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->throw([Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if([Ljava/lang/Object;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->throw([Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/util/Iterator;)Lcom/google/common/collect/k1$do;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/k1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/k1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public native(Ljava/lang/Object;I)Lcom/google/common/collect/k1$do;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/k1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "occurrences"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    if-nez p2, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/k1$do;->switch()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/k1$do;->goto:I

    aput-object p1, v0, v1

    .line 5
    iget-object p1, p0, Lcom/google/common/collect/k1$do;->else:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/google/common/collect/k1$do;->goto:I

    return-object p0
.end method

.method public bridge synthetic new(Ljava/util/Iterator;)Lcom/google/common/collect/r0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->import(Ljava/util/Iterator;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public public()Lcom/google/common/collect/k1;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/k1$do;->static()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/k1$do;->goto:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/k1$do;->try:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/k1;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/k1;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/k1$do;->try:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    .line 5
    invoke-static {v1, v0, v2}, Lcom/google/common/collect/m1;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/m1;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/x2;

    .line 6
    iget v1, p0, Lcom/google/common/collect/k1$do;->goto:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    iget v5, p0, Lcom/google/common/collect/k1$do;->goto:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 8
    aget-wide v6, v1, v4

    iget-object v8, p0, Lcom/google/common/collect/k1$do;->else:[I

    aget v4, v8, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    aput-wide v6, v1, v5

    move v4, v5

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v2, p0, Lcom/google/common/collect/k1$do;->this:Z

    .line 10
    new-instance v2, Lcom/google/common/collect/w2;

    iget v4, p0, Lcom/google/common/collect/k1$do;->goto:I

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/common/collect/w2;-><init>(Lcom/google/common/collect/x2;[JII)V

    return-object v2
.end method

.method public super(Ljava/lang/Object;)Lcom/google/common/collect/k1$do;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/k1$do<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/k1$do;->native(Ljava/lang/Object;I)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic this(Ljava/lang/Iterable;)Lcom/google/common/collect/c1$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k1$do;->while(Ljava/lang/Iterable;)Lcom/google/common/collect/k1$do;

    move-result-object p1

    return-object p1
.end method

.method public varargs throw([Ljava/lang/Object;)Lcom/google/common/collect/k1$do;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/k1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/common/collect/k1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public throws(Ljava/lang/Object;I)Lcom/google/common/collect/k1$do;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/k1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/collect/default;->if(ILjava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/k1$do;->switch()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/k1$do;->case:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/k1$do;->goto:I

    aput-object p1, v0, v1

    .line 5
    iget-object p1, p0, Lcom/google/common/collect/k1$do;->else:[I

    xor-int/lit8 p2, p2, -0x1

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/google/common/collect/k1$do;->goto:I

    return-object p0
.end method

.method public bridge synthetic try()Lcom/google/common/collect/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k1$do;->public()Lcom/google/common/collect/k1;

    move-result-object v0

    return-object v0
.end method

.method public while(Ljava/lang/Iterable;)Lcom/google/common/collect/k1$do;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/k1$do<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/k1$do;->native(Ljava/lang/Object;I)Lcom/google/common/collect/k1$do;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/k1$do;->super(Ljava/lang/Object;)Lcom/google/common/collect/k1$do;

    goto :goto_1

    :cond_1
    return-object p0
.end method
