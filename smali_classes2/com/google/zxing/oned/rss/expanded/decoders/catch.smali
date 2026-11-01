.class final Lcom/google/zxing/oned/rss/expanded/decoders/catch;
.super Lcom/google/zxing/oned/rss/expanded/decoders/break;
.source "SourceFile"


# static fields
.field private static final for:I = 0x5


# direct methods
.method public constructor <init>(Landroid/support/v4/w8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/break;-><init>(Landroid/support/v4/w8;)V

    return-void
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;,
            Landroid/support/v4/ld0;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/break;->if()Lcom/google/zxing/oned/rss/expanded/decoders/native;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/native;->do(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
