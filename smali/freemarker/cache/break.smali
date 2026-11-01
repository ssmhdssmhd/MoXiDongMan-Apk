.class public Lfreemarker/cache/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/cache/CacheStorageWithGetSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/break$if;,
        Lfreemarker/cache/break$do;
    }
.end annotation


# instance fields
.field private final case:I

.field private final do:Lfreemarker/cache/break$do;

.field private else:I

.field private final for:Ljava/util/Map;

.field private goto:I

.field private final if:Lfreemarker/cache/break$do;

.field private final new:Ljava/lang/ref/ReferenceQueue;

.field private final try:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfreemarker/cache/break$do;

    invoke-direct {v0}, Lfreemarker/cache/break$do;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/break;->do:Lfreemarker/cache/break$do;

    .line 3
    new-instance v1, Lfreemarker/cache/break$do;

    invoke-direct {v1}, Lfreemarker/cache/break$do;-><init>()V

    iput-object v1, p0, Lfreemarker/cache/break;->if:Lfreemarker/cache/break$do;

    .line 4
    invoke-virtual {v1, v0}, Lfreemarker/cache/break$do;->new(Lfreemarker/cache/break$do;)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/break;->new:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lfreemarker/cache/break;->else:I

    .line 8
    iput v0, p0, Lfreemarker/cache/break;->goto:I

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    .line 9
    iput p1, p0, Lfreemarker/cache/break;->try:I

    .line 10
    iput p2, p0, Lfreemarker/cache/break;->case:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "softSizeLimit < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "strongSizeLimit < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private case(Lfreemarker/cache/break$do;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/cache/break;->this(Lfreemarker/cache/break$do;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->for()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/cache/break$if;

    .line 3
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lfreemarker/cache/break$do;->case(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1}, Lfreemarker/cache/break;->try(Lfreemarker/cache/break$do;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-virtual {p2}, Lfreemarker/cache/break$if;->do()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lfreemarker/cache/break$do;->case(Ljava/lang/Object;)V

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lfreemarker/cache/break;->try(Lfreemarker/cache/break$do;)V

    :goto_0
    return-void
.end method

.method private else()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lfreemarker/cache/break;->new:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/break$if;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/break$if;->do()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/cache/break;->goto(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private goto(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/cache/break$do;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/cache/break;->this(Lfreemarker/cache/break$do;)Z

    :cond_0
    return-void
.end method

.method private this(Lfreemarker/cache/break$do;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->else()V

    .line 2
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->for()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/cache/break$if;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lfreemarker/cache/break;->goto:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfreemarker/cache/break;->goto:I

    return v0

    .line 4
    :cond_0
    iget p1, p0, Lfreemarker/cache/break;->else:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfreemarker/cache/break;->else:I

    const/4 p1, 0x0

    return p1
.end method

.method private try(Lfreemarker/cache/break$do;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break;->do:Lfreemarker/cache/break$do;

    invoke-virtual {p1, v0}, Lfreemarker/cache/break$do;->new(Lfreemarker/cache/break$do;)V

    .line 2
    iget p1, p0, Lfreemarker/cache/break;->else:I

    iget v0, p0, Lfreemarker/cache/break;->try:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lfreemarker/cache/break;->if:Lfreemarker/cache/break$do;

    invoke-virtual {p1}, Lfreemarker/cache/break$do;->if()Lfreemarker/cache/break$do;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lfreemarker/cache/break;->do:Lfreemarker/cache/break$do;

    if-eq p1, v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->else()V

    .line 6
    iget v0, p0, Lfreemarker/cache/break;->case:I

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lfreemarker/cache/break;->if:Lfreemarker/cache/break$do;

    invoke-virtual {p1, v0}, Lfreemarker/cache/break$do;->new(Lfreemarker/cache/break$do;)V

    .line 8
    new-instance v0, Lfreemarker/cache/break$if;

    iget-object v1, p0, Lfreemarker/cache/break;->new:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lfreemarker/cache/break$if;-><init>(Lfreemarker/cache/break$do;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1, v0}, Lfreemarker/cache/break$do;->case(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lfreemarker/cache/break;->goto:I

    iget v0, p0, Lfreemarker/cache/break;->case:I

    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lfreemarker/cache/break;->do:Lfreemarker/cache/break$do;

    invoke-virtual {p1}, Lfreemarker/cache/break$do;->if()Lfreemarker/cache/break$do;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->else()V

    .line 12
    iget-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-virtual {p1}, Lfreemarker/cache/break$do;->do()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 13
    iput p1, p0, Lfreemarker/cache/break;->goto:I

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-virtual {p1}, Lfreemarker/cache/break$do;->do()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 15
    iput p1, p0, Lfreemarker/cache/break;->else:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break;->do:Lfreemarker/cache/break$do;

    invoke-virtual {v0}, Lfreemarker/cache/break$do;->try()V

    .line 2
    iget-object v0, p0, Lfreemarker/cache/break;->if:Lfreemarker/cache/break$do;

    iget-object v1, p0, Lfreemarker/cache/break;->do:Lfreemarker/cache/break$do;

    invoke-virtual {v0, v1}, Lfreemarker/cache/break$do;->new(Lfreemarker/cache/break$do;)V

    .line 3
    iget-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lfreemarker/cache/break;->goto:I

    iput v0, p0, Lfreemarker/cache/break;->else:I

    .line 5
    :goto_0
    iget-object v0, p0, Lfreemarker/cache/break;->new:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/break;->else()V

    .line 2
    iget v0, p0, Lfreemarker/cache/break;->goto:I

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/cache/break;->else:I

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/break;->else()V

    .line 2
    iget-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/cache/break$do;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p1, v0}, Lfreemarker/cache/break;->case(Lfreemarker/cache/break$do;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->for()Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lfreemarker/cache/break$if;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lfreemarker/cache/break$if;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/cache/break;->do()I

    move-result v0

    invoke-virtual {p0}, Lfreemarker/cache/break;->for()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/cache/break;->case:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/cache/break;->try:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/break;->else()V

    .line 2
    iget-object v0, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/break$do;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/cache/break$do;

    invoke-direct {v0, p1, p2}, Lfreemarker/cache/break$do;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lfreemarker/cache/break;->for:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/cache/break;->try(Lfreemarker/cache/break$do;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0, p2}, Lfreemarker/cache/break;->case(Lfreemarker/cache/break$do;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/break;->else()V

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/cache/break;->goto(Ljava/lang/Object;)V

    return-void
.end method
