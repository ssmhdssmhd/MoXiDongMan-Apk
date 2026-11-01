.class public Lcom/google/zxing/qrcode/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final if:[Landroid/support/v4/yn1;


# instance fields
.field private final do:Lcom/google/zxing/qrcode/decoder/try;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/support/v4/yn1;

    .line 1
    sput-object v0, Lcom/google/zxing/qrcode/do;->if:[Landroid/support/v4/yn1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/qrcode/decoder/try;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/try;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/do;->do:Lcom/google/zxing/qrcode/decoder/try;

    return-void
.end method

.method private static do(Landroid/support/v4/z8;)Landroid/support/v4/z8;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/z8;->catch()[I

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/z8;->case()[I

    move-result-object v1

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 3
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/do;->for([ILandroid/support/v4/z8;)F

    move-result v2

    const/4 v3, 0x1

    .line 4
    aget v4, v0, v3

    .line 5
    aget v5, v1, v3

    const/4 v6, 0x0

    .line 6
    aget v0, v0, v6

    .line 7
    aget v1, v1, v6

    if-ge v0, v1, :cond_b

    if-ge v4, v5, :cond_b

    sub-int v7, v5, v4

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_1

    add-int v1, v0, v7

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/z8;->class()I

    move-result v8

    if-ge v1, v8, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    sub-int v8, v1, v0

    add-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 10
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v3

    int-to-float v3, v7

    div-float/2addr v3, v2

    .line 11
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v8, :cond_a

    if-lez v3, :cond_a

    if-ne v3, v8, :cond_9

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_3

    if-gt v9, v7, :cond_2

    sub-int/2addr v0, v9

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v4

    sub-int/2addr v1, v5

    if-lez v1, :cond_5

    if-gt v1, v7, :cond_4

    sub-int/2addr v4, v1

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    throw p0

    .line 14
    :cond_5
    :goto_2
    new-instance v1, Landroid/support/v4/z8;

    invoke-direct {v1, v8, v3}, Landroid/support/v4/z8;-><init>(II)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_8

    int-to-float v7, v5

    mul-float v7, v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_7

    int-to-float v10, v9

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    .line 15
    invoke-virtual {p0, v10, v7}, Landroid/support/v4/z8;->try(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 16
    invoke-virtual {v1, v9, v5}, Landroid/support/v4/z8;->throw(II)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    return-object v1

    .line 17
    :cond_9
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    throw p0

    .line 18
    :cond_a
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    throw p0

    .line 19
    :cond_b
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    throw p0

    .line 20
    :cond_c
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static for([ILandroid/support/v4/z8;)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/z8;->goto()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/z8;->class()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 4
    aget v5, p0, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v5, v0, :cond_1

    .line 5
    invoke-virtual {p1, v3, v5}, Landroid/support/v4/z8;->try(II)Z

    move-result v7

    if-eq v4, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    xor-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v1, :cond_2

    if-eq v5, v0, :cond_2

    .line 6
    aget p0, p0, v2

    sub-int/2addr v3, p0

    int-to-float p0, v3

    const/high16 p1, 0x40e00000    # 7.0f

    div-float/2addr p0, p1

    return p0

    .line 7
    :cond_2
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/for;)Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/do;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 5
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
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Lcom/google/zxing/new;->PURE_BARCODE:Lcom/google/zxing/new;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/for;->if()Landroid/support/v4/z8;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/qrcode/do;->do(Landroid/support/v4/z8;)Landroid/support/v4/z8;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/zxing/qrcode/do;->do:Lcom/google/zxing/qrcode/decoder/try;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/qrcode/decoder/try;->for(Landroid/support/v4/z8;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/zxing/qrcode/do;->if:[Landroid/support/v4/yn1;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/zxing/qrcode/detector/if;

    invoke-virtual {p1}, Lcom/google/zxing/for;->if()Landroid/support/v4/z8;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/detector/if;-><init>(Landroid/support/v4/z8;)V

    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/detector/if;->case(Ljava/util/Map;)Landroid/support/v4/oz;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/zxing/qrcode/do;->do:Lcom/google/zxing/qrcode/decoder/try;

    invoke-virtual {p1}, Landroid/support/v4/oz;->do()Landroid/support/v4/z8;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/try;->for(Landroid/support/v4/z8;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/oz;->if()[Landroid/support/v4/yn1;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/mx;->case()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/ei1;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/mx;->case()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ei1;

    invoke-virtual {v0, p2}, Landroid/support/v4/ei1;->do([Landroid/support/v4/yn1;)V

    .line 11
    :cond_1
    new-instance v0, Landroid/support/v4/wn1;

    invoke-virtual {p1}, Landroid/support/v4/mx;->break()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/mx;->else()[B

    move-result-object v2

    sget-object v3, Lcom/google/zxing/do;->QR_CODE:Lcom/google/zxing/do;

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/support/v4/wn1;-><init>(Ljava/lang/String;[B[Landroid/support/v4/yn1;Lcom/google/zxing/do;)V

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/mx;->do()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    sget-object v1, Lcom/google/zxing/goto;->BYTE_SEGMENTS:Lcom/google/zxing/goto;

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/mx;->if()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    sget-object v1, Lcom/google/zxing/goto;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/goto;

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/mx;->catch()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    sget-object p2, Lcom/google/zxing/goto;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/goto;

    .line 18
    invoke-virtual {p1}, Landroid/support/v4/mx;->this()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    invoke-virtual {v0, p2, v1}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    .line 20
    sget-object p2, Lcom/google/zxing/goto;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/goto;

    .line 21
    invoke-virtual {p1}, Landroid/support/v4/mx;->goto()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public final if()Lcom/google/zxing/qrcode/decoder/try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/do;->do:Lcom/google/zxing/qrcode/decoder/try;

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
