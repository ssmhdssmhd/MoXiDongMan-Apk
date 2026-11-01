.class public Landroid/support/v4/hs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/ricecode/similarity/SimilarityStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_5

    move v4, v2

    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_3

    if-nez v2, :cond_0

    .line 6
    aput v3, v0, v3

    goto :goto_2

    :cond_0
    if-lez v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    .line 7
    aget v6, v0, v5

    add-int/lit8 v7, v2, -0x1

    .line 8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    .line 9
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget v7, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 10
    :cond_1
    aput v4, v0, v5

    move v4, v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    aput v4, v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public score(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/hs0;->do(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sub-int p1, v0, p1

    int-to-double p1, p1

    int-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method
