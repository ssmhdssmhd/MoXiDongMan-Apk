.class final Lcom/google/zxing/oned/rss/expanded/decoders/super;
.super Lcom/google/zxing/oned/rss/expanded/decoders/while;
.source "SourceFile"


# instance fields
.field private final for:I

.field private final if:Ljava/lang/String;

.field private final new:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/while;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->if:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->new:Z

    .line 4
    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->for:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/while;-><init>(I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->new:Z

    .line 7
    iput p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->for:I

    .line 8
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->for:I

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->if:Ljava/lang/String;

    return-object v0
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/super;->new:Z

    return v0
.end method
