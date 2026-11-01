.class public final Landroid/support/v4/y91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do(Lcom/google/zxing/for;Ljava/util/Map;Z)[Landroid/support/v4/wn1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/for;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;Z)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0, p1, p2}, Landroid/support/v4/nz;->if(Lcom/google/zxing/for;Ljava/util/Map;Z)Landroid/support/v4/x91;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/x91;->if()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/support/v4/yn1;

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/x91;->do()Landroid/support/v4/z8;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    const/4 v3, 0x5

    aget-object v3, p2, v3

    const/4 v4, 0x6

    aget-object v4, p2, v4

    const/4 v5, 0x7

    aget-object v5, p2, v5

    .line 5
    invoke-static {p2}, Landroid/support/v4/y91;->new([Landroid/support/v4/yn1;)I

    move-result v6

    invoke-static {p2}, Landroid/support/v4/y91;->if([Landroid/support/v4/yn1;)I

    move-result v7

    .line 6
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/decoder/break;->this(Landroid/support/v4/z8;Landroid/support/v4/yn1;Landroid/support/v4/yn1;Landroid/support/v4/yn1;Landroid/support/v4/yn1;II)Landroid/support/v4/mx;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/support/v4/wn1;

    invoke-virtual {v1}, Landroid/support/v4/mx;->break()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/mx;->else()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/do;->PDF_417:Lcom/google/zxing/do;

    invoke-direct {v2, v3, v4, p2, v5}, Landroid/support/v4/wn1;-><init>(Ljava/lang/String;[B[Landroid/support/v4/yn1;Lcom/google/zxing/do;)V

    .line 8
    sget-object p2, Lcom/google/zxing/goto;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/goto;

    invoke-virtual {v1}, Landroid/support/v4/mx;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1}, Landroid/support/v4/mx;->case()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/z91;

    if-eqz p2, :cond_0

    .line 10
    sget-object v1, Lcom/google/zxing/goto;->PDF417_EXTRA_METADATA:Lcom/google/zxing/goto;

    invoke-virtual {v2, v1, p2}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    .line 11
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/support/v4/wn1;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/support/v4/wn1;

    return-object p0
.end method

.method private static for(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/yn1;->for()F

    move-result p0

    invoke-virtual {p1}, Landroid/support/v4/yn1;->for()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static if([Landroid/support/v4/yn1;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/y91;->for(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Landroid/support/v4/y91;->for(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 3
    invoke-static {v1, v2}, Landroid/support/v4/y91;->for(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Landroid/support/v4/y91;->for(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x11

    div-int/lit8 p0, p0, 0x12

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 4
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static new([Landroid/support/v4/yn1;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/y91;->try(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Landroid/support/v4/y91;->try(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 3
    invoke-static {v1, v2}, Landroid/support/v4/y91;->try(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Landroid/support/v4/y91;->try(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x11

    div-int/lit8 p0, p0, 0x12

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 4
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static try(Landroid/support/v4/yn1;Landroid/support/v4/yn1;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/yn1;->for()F

    move-result p0

    invoke-virtual {p1}, Landroid/support/v4/yn1;->for()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/for;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/y91;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/for;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/wn1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Landroid/support/v4/y91;->do(Lcom/google/zxing/for;Ljava/util/Map;Z)[Landroid/support/v4/wn1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    array-length p2, p1

    if-eqz p2, :cond_0

    aget-object p2, p1, v0

    if-eqz p2, :cond_0

    .line 4
    aget-object p1, p1, v0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    throw p1
.end method

.method public decodeMultiple(Lcom/google/zxing/for;)[Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/y91;->decodeMultiple(Lcom/google/zxing/for;Ljava/util/Map;)[Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/for;Ljava/util/Map;)[Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/for;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/support/v4/y91;->do(Lcom/google/zxing/for;Ljava/util/Map;Z)[Landroid/support/v4/wn1;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/ld0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/support/v4/ll; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
