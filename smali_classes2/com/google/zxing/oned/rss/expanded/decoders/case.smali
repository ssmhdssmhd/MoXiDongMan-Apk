.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/case;
.super Lcom/google/zxing/oned/rss/expanded/decoders/this;
.source "SourceFile"


# static fields
.field private static final new:I = 0x5

.field private static final try:I = 0xf


# direct methods
.method public constructor <init>(Landroid/support/v4/w8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/this;-><init>(Landroid/support/v4/w8;)V

    return-void
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->for()Landroid/support/v4/w8;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w8;->class()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/goto;->case(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/this;->break(Ljava/lang/StringBuilder;II)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object v0

    throw v0
.end method
