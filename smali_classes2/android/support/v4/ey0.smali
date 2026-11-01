.class public final Landroid/support/v4/ey0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final for:I = 0x1e

.field private static final if:[Landroid/support/v4/yn1;

.field private static final new:I = 0x21


# instance fields
.field private final do:Lcom/google/zxing/maxicode/decoder/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/support/v4/yn1;

    .line 1
    sput-object v0, Landroid/support/v4/ey0;->if:[Landroid/support/v4/yn1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/maxicode/decoder/for;

    invoke-direct {v0}, Lcom/google/zxing/maxicode/decoder/for;-><init>()V

    iput-object v0, p0, Landroid/support/v4/ey0;->do:Lcom/google/zxing/maxicode/decoder/for;

    return-void
.end method

.method private static do(Landroid/support/v4/z8;)Landroid/support/v4/z8;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/z8;->else()[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 3
    aget v3, v0, v3

    const/4 v4, 0x2

    .line 4
    aget v5, v0, v4

    const/4 v6, 0x3

    .line 5
    aget v0, v0, v6

    .line 6
    new-instance v6, Landroid/support/v4/z8;

    const/16 v7, 0x1e

    const/16 v8, 0x21

    invoke-direct {v6, v7, v8}, Landroid/support/v4/z8;-><init>(II)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    mul-int v10, v9, v0

    .line 7
    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v8

    add-int/2addr v10, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_1

    mul-int v12, v11, v5

    .line 8
    div-int/lit8 v13, v5, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int v13, v13, v5

    div-int/2addr v13, v4

    add-int/2addr v12, v13

    div-int/2addr v12, v7

    add-int/2addr v12, v2

    .line 9
    invoke-virtual {p0, v12, v10}, Landroid/support/v4/z8;->try(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 10
    invoke-virtual {v6, v11, v9}, Landroid/support/v4/z8;->throw(II)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-object v6

    .line 11
    :cond_3
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
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
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ey0;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 4
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

    if-eqz p2, :cond_1

    .line 2
    sget-object v0, Lcom/google/zxing/new;->PURE_BARCODE:Lcom/google/zxing/new;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/for;->if()Landroid/support/v4/z8;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ey0;->do(Landroid/support/v4/z8;)Landroid/support/v4/z8;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/support/v4/ey0;->do:Lcom/google/zxing/maxicode/decoder/for;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/maxicode/decoder/for;->for(Landroid/support/v4/z8;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/support/v4/wn1;

    invoke-virtual {p1}, Landroid/support/v4/mx;->break()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/mx;->else()[B

    move-result-object v1

    sget-object v2, Landroid/support/v4/ey0;->if:[Landroid/support/v4/yn1;

    sget-object v3, Lcom/google/zxing/do;->MAXICODE:Lcom/google/zxing/do;

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/support/v4/wn1;-><init>(Ljava/lang/String;[B[Landroid/support/v4/yn1;Lcom/google/zxing/do;)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/mx;->if()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Lcom/google/zxing/goto;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/goto;

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/wn1;->break(Lcom/google/zxing/goto;Ljava/lang/Object;)V

    :cond_0
    return-object p2

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
