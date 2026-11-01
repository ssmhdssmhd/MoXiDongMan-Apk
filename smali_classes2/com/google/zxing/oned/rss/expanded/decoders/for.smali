.class final Lcom/google/zxing/oned/rss/expanded/decoders/for;
.super Lcom/google/zxing/oned/rss/expanded/decoders/goto;
.source "SourceFile"


# static fields
.field private static final new:I = 0x8

.field private static final try:I = 0x2


# direct methods
.method public constructor <init>(Landroid/support/v4/w8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/goto;-><init>(Landroid/support/v4/w8;)V

    return-void
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->for()Landroid/support/v4/w8;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w8;->class()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    .line 3
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/goto;->case(Ljava/lang/StringBuilder;I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if()Lcom/google/zxing/oned/rss/expanded/decoders/native;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->case(II)I

    move-result v1

    const-string v2, "(392"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if()Lcom/google/zxing/oned/rss/expanded/decoders/native;

    move-result-object v1

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->for(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/super;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/super;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object v0

    throw v0
.end method
