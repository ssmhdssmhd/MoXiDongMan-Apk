.class final Lcom/google/zxing/oned/rss/expanded/decoders/class;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lcom/google/zxing/oned/rss/expanded/decoders/super;

.field private final if:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/super;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/class;->if:Z

    .line 4
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/class;->do:Lcom/google/zxing/oned/rss/expanded/decoders/super;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/class;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/super;Z)V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/zxing/oned/rss/expanded/decoders/super;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/class;->do:Lcom/google/zxing/oned/rss/expanded/decoders/super;

    return-object v0
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/class;->if:Z

    return v0
.end method
