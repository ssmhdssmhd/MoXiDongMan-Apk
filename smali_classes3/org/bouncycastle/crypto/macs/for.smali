.class public Lorg/bouncycastle/crypto/macs/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final this:I = 0x8


# instance fields
.field private case:[B

.field private do:[B

.field private else:[B

.field private for:I

.field private goto:[B

.field private if:I

.field private new:I

.field private try:Lorg/bouncycastle/crypto/engines/case;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/case;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/engines/case;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/macs/for;->new:I

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/macs/for;->for:I

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/for;->goto:[B

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/for;->else:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    return-void
.end method

.method private do([BI)V
    .locals 6

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/for;->else:[B

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/for;->if([BI[BI[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    iget-object p2, p0, Lorg/bouncycastle/crypto/macs/for;->else:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Lorg/bouncycastle/crypto/engines/case;->processBlock([BI[BI)I

    return-void
.end method

.method private if([BI[BI[B)V
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/macs/for;->new:I

    if-lt v0, v1, :cond_1

    array-length v0, p3

    sub-int/2addr v0, p4

    if-lt v0, v1, :cond_1

    array-length v0, p5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/for;->new:I

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    aget-byte v1, p1, v1

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "some of input buffers too short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    array-length v1, v4

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/for;->else:[B

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/macs/for;->if([BI[BI[B)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/macs/for;->else:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/bouncycastle/crypto/macs/for;->goto:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/crypto/macs/for;->if([BI[BI[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/engines/case;->processBlock([BI[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/for;->for:I

    add-int v1, v0, p2

    array-length v3, p1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/for;->for:I

    return p1

    :cond_0
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "input must be a multiple of blocksize"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7624Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/for;->for:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/gr0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/engines/case;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->goto:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Lorg/bouncycastle/crypto/engines/case;->processBlock([BI[BI)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter passed to DSTU7624Mac"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->case:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->else:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->goto:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/case;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/for;->goto:[B

    invoke-virtual {v0, v2, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/case;->processBlock([BI[BI)I

    iput v1, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/macs/for;->do([BI)V

    iput v0, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 4

    if-ltz p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->try:Lorg/bouncycastle/crypto/engines/case;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/case;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/macs/for;->do([BI)V

    iput v3, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_0
    if-le p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/for;->do([BI)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/for;->do:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/macs/for;->if:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
