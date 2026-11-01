.class final Lcom/google/zxing/oned/rss/expanded/decoders/else;
.super Lcom/google/zxing/oned/rss/expanded/decoders/goto;
.source "SourceFile"


# static fields
.field private static final new:I = 0x4


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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(01)"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if()Lcom/google/zxing/oned/rss/expanded/decoders/native;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->case(II)I

    move-result v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/goto;->else(Ljava/lang/StringBuilder;II)V

    .line 7
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if()Lcom/google/zxing/oned/rss/expanded/decoders/native;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->do(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
