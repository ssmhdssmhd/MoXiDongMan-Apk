.class final Lcom/google/zxing/oned/rss/expanded/decoders/throw;
.super Lcom/google/zxing/oned/rss/expanded/decoders/while;
.source "SourceFile"


# static fields
.field public static final new:I = 0xa


# instance fields
.field private final for:I

.field private final if:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/while;-><init>(I)V

    if-ltz p2, :cond_0

    const/16 p1, 0xa

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    .line 2
    iput p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->if:I

    .line 3
    iput p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->for:I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/support/v4/ld0;->getFormatInstance()Landroid/support/v4/ld0;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public case()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->if:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public else()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->for:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->for:I

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->if:I

    return v0
.end method

.method public new()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->if:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->for:I

    add-int/2addr v0, v1

    return v0
.end method

.method public try()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->if:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/throw;->for:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
