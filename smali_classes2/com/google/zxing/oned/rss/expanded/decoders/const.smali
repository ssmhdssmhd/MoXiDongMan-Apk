.class final Lcom/google/zxing/oned/rss/expanded/decoders/const;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/rss/expanded/decoders/const$do;
    }
.end annotation


# instance fields
.field private do:I

.field private if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->do:I

    .line 3
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->do:I

    return v0
.end method

.method public else()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    return-void
.end method

.method public for()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public goto()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    return-void
.end method

.method public if(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->do:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->do:I

    return-void
.end method

.method public new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->do:I

    return-void
.end method

.method public try()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/const;->if:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/const$do;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/const$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
