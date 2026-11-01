.class public Lorg/bouncycastle/crypto/modes/import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final switch:I = 0x10


# instance fields
.field private break:[B

.field private case:Ljava/util/Vector;

.field private catch:[B

.field private class:[B

.field private const:[B

.field private do:Lorg/bouncycastle/crypto/BlockCipher;

.field private else:[B

.field private final:I

.field private for:Z

.field private goto:[B

.field private if:Lorg/bouncycastle/crypto/BlockCipher;

.field private import:[B

.field private native:[B

.field private new:I

.field private public:[B

.field private return:[B

.field private static:[B

.field private super:I

.field private this:[B

.field private throw:J

.field private try:[B

.field private while:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->this:[B

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->break:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->catch:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/import;->if:Lorg/bouncycastle/crypto/BlockCipher;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hashCipher\' and \'mainCipher\' must be the same algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'mainCipher\' must have a block size of 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'mainCipher\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hashCipher\' must have a block size of 16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hashCipher\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static break([B[B)I
    .locals 4

    const/16 v0, 0x10

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    ushr-int/lit8 v1, v2, 0x7

    and-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static class([B[B)V
    .locals 3

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static do([B)[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->break([B[B)I

    move-result p0

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    rsub-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x3

    const/16 v3, 0x87

    ushr-int p0, v3, p0

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static for(J)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/16 p0, 0x40

    return p0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x1

    and-long/2addr v3, p0

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    ushr-long/2addr p0, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static if([BI)V
    .locals 1

    const/16 v0, -0x80

    aput-byte v0, p0, p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    aput-byte v0, p0, p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public case()V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/import;->throw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/import;->throw:J

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/import;->for(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->try(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->catch([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    return-void
.end method

.method public catch([B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->import:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->import:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v0, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->native:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    return-void
.end method

.method public doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    if-lt v0, v2, :cond_0

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    new-array v3, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v4, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    if-lez v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/modes/import;->if([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->else:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->catch([B)V

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    const-string v2, "Output buffer too short"

    if-lez v0, :cond_5

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/modes/import;->if([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->else:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    invoke-interface {v4, v5, v1, v0, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    array-length v0, p1

    iget v4, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    add-int v5, p2, v4

    if-lt v0, v5, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v0, v1, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->if([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/support/v4/f91;

    invoke-direct {p1, v2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->goto:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    invoke-interface {v0, v4, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->native:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    new-array v4, v0, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->static:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    if-eqz v4, :cond_7

    array-length v3, p1

    add-int/2addr p2, v0

    iget v4, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    add-int v5, p2, v4

    if-lt v3, v5, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->static:[B

    invoke-static {v2, v1, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    add-int/2addr v0, p1

    goto :goto_2

    :cond_6
    new-instance p1, Landroid/support/v4/f91;

    invoke-direct {p1, v2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->static:[B

    invoke-static {p1, v3}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_2
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/import;->this(Z)V

    return v0

    :cond_8
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "mac check in OCB failed"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else([BI)V
    .locals 6

    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iput v1, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/import;->while:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/modes/import;->while:J

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/import;->for(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/modes/import;->try(I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->if:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-interface {v0, v2, v1, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/modes/import;->class([B[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    iget p2, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    invoke-static {p1, v2, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    iput p1, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->if:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/OCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->static:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->if:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    :cond_1
    rem-int/lit8 v0, p1, 0x10

    sub-int/2addr p1, v0

    return p1
.end method

.method public goto([B)I
    .locals 6

    const/16 v0, 0x10

    new-array v1, v0, [B

    array-length v2, p1

    rsub-int/lit8 v2, v2, 0x10

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    array-length p1, p1

    const/16 v2, 0xf

    rsub-int/lit8 p1, p1, 0xf

    aget-byte v3, v1, p1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    aget-byte p1, v1, v2

    and-int/lit8 p1, p1, 0x3f

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->this:[B

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-array v2, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->this:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v1, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->break:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->break:[B

    add-int/lit8 v1, v4, 0x10

    aget-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v2, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/import;->for:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->static:[B

    instance-of v2, p2, Landroid/support/v4/new;

    const/16 v3, 0x10

    if-eqz v2, :cond_1

    check-cast p2, Landroid/support/v4/new;

    invoke-virtual {p2}, Landroid/support/v4/new;->new()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/new;->do()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->try:[B

    invoke-virtual {p2}, Landroid/support/v4/new;->for()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    const/16 v5, 0x80

    if-gt v4, v5, :cond_0

    rem-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_0

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    invoke-virtual {p2}, Landroid/support/v4/new;->if()Landroid/support/v4/gr0;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for MAC size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v2, p2, Landroid/support/v4/bc1;

    if-eqz v2, :cond_a

    check-cast p2, Landroid/support/v4/bc1;

    invoke-virtual {p2}, Landroid/support/v4/bc1;->do()[B

    move-result-object v2

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->try:[B

    iput v3, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    invoke-virtual {p2}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Landroid/support/v4/gr0;

    :goto_0
    new-array v4, v3, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    if-eqz p1, :cond_2

    const/16 v4, 0x10

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/bouncycastle/crypto/modes/import;->new:I

    add-int/2addr v4, v3

    :goto_1
    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    const/4 v4, 0x0

    if-nez v2, :cond_3

    new-array v2, v4, [B

    :cond_3
    array-length v5, v2

    const/16 v6, 0xf

    if-gt v5, v6, :cond_9

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v5, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->if:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->this:[B

    goto :goto_2

    :cond_4
    if-ne v0, p1, :cond_8

    :goto_2
    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->else:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p2, p1, v4, p1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->else:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/import;->do([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->goto:[B

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->case:Ljava/util/Vector;

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/import;->goto:[B

    invoke-static {p2}, Lorg/bouncycastle/crypto/modes/import;->do([B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/modes/import;->goto([B)I

    move-result p1

    rem-int/lit8 p2, p1, 0x8

    div-int/lit8 p1, p1, 0x8

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/import;->break:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->catch:[B

    invoke-static {p2, p1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->break:[B

    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr p1, v5

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/import;->catch:[B

    shl-int/2addr v2, p2

    rsub-int/lit8 v7, p2, 0x8

    ushr-int/2addr v1, v7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    iput v4, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    iput v4, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/import;->throw:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/import;->while:J

    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->import:[B

    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->native:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->catch:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    invoke-static {p1, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v3, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->try:[B

    if-eqz p1, :cond_7

    array-length p2, p1

    invoke-virtual {p0, p1, v4, p2}, Lorg/bouncycastle/crypto/modes/import;->processAADBytes([BII)V

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot change encrypting state without providing key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV must be no more than 15 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to OCB"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public new([B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/q3;->c([BB)V

    :cond_0
    return-void
.end method

.method public processAADByte(B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/import;->case()V

    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    array-length v1, v1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/import;->case()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/crypto/modes/import;->else([BI)V

    const/16 p1, 0x10

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;
        }
    .end annotation

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    array-length v2, v2

    if-ne v3, v2, :cond_0

    add-int v2, p5, v1

    invoke-virtual {p0, p4, v2}, Lorg/bouncycastle/crypto/modes/import;->else([BI)V

    add-int/lit8 v1, v1, 0x10

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->this(Z)V

    return-void
.end method

.method public this(Z)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->if:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->class:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->new([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->const:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/import;->new([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/import;->final:I

    iput v0, p0, Lorg/bouncycastle/crypto/modes/import;->super:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/import;->throw:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/import;->while:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->import:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/import;->new([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->native:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/import;->new([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->catch:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/import;->public:[B

    const/16 v3, 0x10

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/import;->return:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/import;->new([B)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->static:[B

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/import;->try:[B

    if-eqz p1, :cond_1

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/modes/import;->processAADBytes([BII)V

    :cond_1
    return-void
.end method

.method public try(I)[B
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->case:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->case:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/import;->do([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/import;->case:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
