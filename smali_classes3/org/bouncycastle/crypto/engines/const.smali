.class public Lorg/bouncycastle/crypto/engines/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private case:Z

.field private do:[I

.field private else:[B

.field private for:I

.field private goto:I

.field private if:[I

.field private new:[B

.field private try:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/const;->do:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->if:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/const;->for:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/const;->else:[B

    iput v0, p0, Lorg/bouncycastle/crypto/engines/const;->goto:I

    return-void
.end method

.method private do()B
    .locals 6

    iget v0, p0, Lorg/bouncycastle/crypto/engines/const;->goto:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/const;->new()I

    move-result v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/const;->else:[B

    const/4 v4, 0x0

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    shr-int/lit8 v0, v0, 0x8

    const/4 v4, 0x2

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->else:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/const;->goto:I

    aget-byte v0, v0, v3

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/const;->goto:I

    return v0
.end method

.method private static for(II)I
    .locals 1

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private if()V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->new:[B

    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    array-length v1, v0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128/256 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    array-length v1, v1

    if-lt v1, v2, :cond_8

    array-length v1, v0

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    new-array v1, v3, [B

    array-length v5, v0

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->new:[B

    array-length v5, v0

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/const;->new:[B

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    array-length v1, v0

    if-ge v1, v3, :cond_3

    new-array v1, v3, [B

    array-length v5, v0

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    array-length v5, v0

    array-length v6, v0

    rsub-int/lit8 v6, v6, 0x20

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    :cond_3
    iput v4, p0, Lorg/bouncycastle/crypto/engines/const;->goto:I

    iput v4, p0, Lorg/bouncycastle/crypto/engines/const;->for:I

    const/16 v0, 0xa00

    new-array v1, v0, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    shr-int/lit8 v6, v5, 0x2

    aget v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/const;->new:[B

    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    shr-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x8

    aget v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v2, v0, :cond_6

    add-int/lit8 v3, v2, -0x2

    aget v3, v1, v3

    add-int/lit8 v5, v2, -0xf

    aget v5, v1, v5

    const/16 v6, 0x11

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v6

    const/16 v7, 0x13

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v6

    add-int/lit8 v6, v2, -0x7

    aget v6, v1, v6

    add-int/2addr v3, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v6

    const/16 v7, 0x12

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v1, v5

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/16 v0, 0x200

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/const;->do:[I

    const/16 v3, 0x400

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x600

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/const;->if:[I

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/const;->new()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iput v4, p0, Lorg/bouncycastle/crypto/engines/const;->for:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The IV must be at least 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private new()I
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/const;->for:I

    and-int/lit16 v1, v0, 0x3ff

    const/16 v2, 0x17

    const/16 v3, 0xa

    const/16 v4, 0x400

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->do:[I

    add-int/lit8 v4, v1, -0x3

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    add-int/lit16 v5, v1, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v5, v0, v5

    aget v6, v0, v1

    add-int/lit8 v7, v1, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v7, v0, v7

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v3

    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/const;->if:[I

    xor-int v3, v4, v5

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v2, v3

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->do:[I

    add-int/lit8 v3, v1, -0xc

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v0, v3

    and-int/lit16 v4, v3, 0xff

    aget v4, v2, v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x300

    aget v2, v2, v3

    add-int/2addr v4, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->if:[I

    add-int/lit8 v4, v1, -0x3

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    add-int/lit16 v5, v1, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v5, v0, v5

    aget v6, v0, v1

    add-int/lit8 v7, v1, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v7, v0, v7

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v3

    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/engines/const;->for(II)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/const;->do:[I

    xor-int v3, v4, v5

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v2, v3

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->if:[I

    add-int/lit8 v3, v1, -0xc

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v0, v3

    and-int/lit16 v4, v3, 0xff

    aget v4, v2, v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x300

    aget v2, v2, v3

    add-int/2addr v4, v2

    aget v0, v0, v1

    :goto_0
    xor-int/2addr v0, v4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/const;->for:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/const;->for:I

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HC-256"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of p1, p2, Landroid/support/v4/bc1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/support/v4/bc1;

    invoke-virtual {p1}, Landroid/support/v4/bc1;->do()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    invoke-virtual {p1}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/const;->try:[B

    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/support/v4/gr0;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/gr0;

    invoke-virtual {p1}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/const;->new:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/const;->if()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/const;->case:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter passed to HC256 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/const;->case:Z

    if-eqz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/const;->do()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/const;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/const;->if()V

    return-void
.end method

.method public returnByte(B)B
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/const;->do()B

    move-result v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method
