.class public final Lcom/google/zxing/datamatrix/decoder/new;
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

    sget-object v1, Lcom/google/zxing/common/reedsolomon/do;->const:Lcom/google/zxing/common/reedsolomon/do;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/for;-><init>(Lcom/google/zxing/common/reedsolomon/do;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/new;->do:Lcom/google/zxing/common/reedsolomon/for;

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
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/new;->do:Lcom/google/zxing/common/reedsolomon/for;

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


# virtual methods
.method public for([[Z)Landroid/support/v4/mx;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/z8;->final([[Z)Landroid/support/v4/z8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/new;->if(Landroid/support/v4/z8;)Landroid/support/v4/mx;

    move-result-object p1

    return-object p1
.end method

.method public if(Landroid/support/v4/z8;)Landroid/support/v4/mx;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ld0;,
            Landroid/support/v4/ll;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/do;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/do;-><init>(Landroid/support/v4/z8;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/do;->if()Lcom/google/zxing/datamatrix/decoder/try;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/do;->for()[B

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/zxing/datamatrix/decoder/if;->if([BLcom/google/zxing/datamatrix/decoder/try;)[Lcom/google/zxing/datamatrix/decoder/if;

    move-result-object p1

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 6
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/if;->for()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array v0, v3, [B

    .line 8
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 9
    aget-object v4, p1, v3

    .line 10
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/if;->do()[B

    move-result-object v5

    .line 11
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/if;->for()I

    move-result v4

    .line 12
    invoke-direct {p0, v5, v4}, Lcom/google/zxing/datamatrix/decoder/new;->do([BI)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    mul-int v7, v6, v2

    add-int/2addr v7, v3

    .line 13
    aget-byte v8, v5, v6

    aput-byte v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/decoder/for;->do([B)Landroid/support/v4/mx;

    move-result-object p1

    return-object p1
.end method
