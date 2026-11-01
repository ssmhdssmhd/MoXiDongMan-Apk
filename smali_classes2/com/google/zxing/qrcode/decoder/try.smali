.class public final Lcom/google/zxing/qrcode/decoder/try;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lcom/google/zxing/common/reedsolomon/for;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/common/reedsolomon/for;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/do;->class:Lcom/google/zxing/common/reedsolomon/do;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/for;-><init>(Lcom/google/zxing/common/reedsolomon/do;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/try;->do:Lcom/google/zxing/common/reedsolomon/for;

    return-void
.end method

.method private do([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/try;->do:Lcom/google/zxing/common/reedsolomon/for;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/for;->do([II)V
    :try_end_0
    .catch Landroid/support/v4/am1; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 5
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 6
    :catch_0
    invoke-static {}, Landroid/support/v4/ll;->getChecksumInstance()Landroid/support/v4/ll;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private new(Lcom/google/zxing/qrcode/decoder/do;Ljava/util/Map;)Landroid/support/v4/mx;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/do;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/mx;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/do;->try()Lcom/google/zxing/qrcode/decoder/this;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/do;->new()Lcom/google/zxing/qrcode/decoder/else;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/else;->new()Lcom/google/zxing/qrcode/decoder/case;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/do;->for()[B

    move-result-object p1

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/zxing/qrcode/decoder/if;->if([BLcom/google/zxing/qrcode/decoder/this;Lcom/google/zxing/qrcode/decoder/case;)[Lcom/google/zxing/qrcode/decoder/if;

    move-result-object p1

    .line 5
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 6
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/if;->for()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array v2, v5, [B

    .line 8
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    .line 9
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/if;->do()[B

    move-result-object v8

    .line 10
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/if;->for()I

    move-result v7

    .line 11
    invoke-direct {p0, v8, v7}, Lcom/google/zxing/qrcode/decoder/try;->do([BI)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_1

    add-int/lit8 v10, v6, 0x1

    .line 12
    aget-byte v11, v8, v9

    aput-byte v11, v2, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/new;->do([BLcom/google/zxing/qrcode/decoder/this;Lcom/google/zxing/qrcode/decoder/case;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public case([[ZLjava/util/Map;)Landroid/support/v4/mx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/mx;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/z8;->final([[Z)Landroid/support/v4/z8;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/decoder/try;->for(Landroid/support/v4/z8;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1

    return-object p1
.end method

.method public for(Landroid/support/v4/z8;Ljava/util/Map;)Landroid/support/v4/mx;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/z8;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/mx;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/decoder/do;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/do;-><init>(Landroid/support/v4/z8;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/try;->new(Lcom/google/zxing/qrcode/decoder/do;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/ld0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/support/v4/ll; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/do;->case()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/decoder/do;->else(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/do;->try()Lcom/google/zxing/qrcode/decoder/this;

    .line 6
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/do;->new()Lcom/google/zxing/qrcode/decoder/else;

    .line 7
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/do;->if()V

    .line 8
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/try;->new(Lcom/google/zxing/qrcode/decoder/do;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p2

    .line 9
    new-instance v0, Landroid/support/v4/ei1;

    invoke-direct {v0, v2}, Landroid/support/v4/ei1;-><init>(Z)V

    invoke-virtual {p2, v0}, Landroid/support/v4/mx;->super(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/support/v4/ld0; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/support/v4/ll; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    nop

    if-eqz p1, :cond_0

    .line 10
    throw p1

    .line 11
    :cond_0
    throw v1
.end method

.method public if(Landroid/support/v4/z8;)Landroid/support/v4/mx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/try;->for(Landroid/support/v4/z8;Ljava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1

    return-object p1
.end method

.method public try([[Z)Landroid/support/v4/mx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ll;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/try;->case([[ZLjava/util/Map;)Landroid/support/v4/mx;

    move-result-object p1

    return-object p1
.end method
