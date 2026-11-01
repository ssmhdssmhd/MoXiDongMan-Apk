.class public Lorg/bouncycastle/crypto/engines/import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private do:Lorg/bouncycastle/crypto/modes/do;

.field private for:Z

.field private if:Landroid/support/v4/bc1;

.field private new:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/modes/do;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/do;->for()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/import;->for:Z

    instance-of v0, p2, Landroid/support/v4/cc1;

    const-string v1, "RFC3211Wrap requires an IV"

    if-eqz v0, :cond_1

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->new:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v4/bc1;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/bc1;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->if:Landroid/support/v4/bc1;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->new:Ljava/security/SecureRandom;

    :cond_2
    instance-of p1, p2, Landroid/support/v4/bc1;

    if-eqz p1, :cond_3

    check-cast p2, Landroid/support/v4/bc1;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/import;->if:Landroid/support/v4/bc1;

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unwrap([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/import;->for:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/do;->getBlockSize()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-lt p3, v1, :cond_7

    new-array v1, p3, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    new-instance p2, Landroid/support/v4/bc1;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/import;->if:Landroid/support/v4/bc1;

    invoke-virtual {v4}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-direct {p2, v4, v2}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/do;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move p1, v0

    :goto_0
    if-ge p1, p3, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p2, v1, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/do;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    sub-int p1, p3, v0

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    new-instance p2, Landroid/support/v4/bc1;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/import;->if:Landroid/support/v4/bc1;

    invoke-virtual {v4}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-direct {p2, v4, v2}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/do;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p1, v1, v3, v1, v3}, Lorg/bouncycastle/crypto/modes/do;->processBlock([BI[BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/import;->if:Landroid/support/v4/bc1;

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/do;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p3, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p2, v1, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/do;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_1

    :cond_1
    aget-byte p1, v1, v3

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x4

    sub-int/2addr p3, p2

    const/4 v0, 0x1

    if-le p1, p3, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    aget-byte p3, v1, v3

    and-int/lit16 p3, p3, 0xff

    :goto_3
    new-array p3, p3, [B

    array-length v2, p3

    invoke-static {v1, p2, p3, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x3

    if-eq p2, v4, :cond_4

    add-int/lit8 v4, p2, 0x1

    aget-byte v5, v1, v4

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    add-int/lit8 p2, p2, 0x4

    aget-byte p2, v1, p2

    xor-int/2addr p2, v5

    or-int/2addr v2, p2

    move p2, v4

    goto :goto_4

    :cond_4
    invoke-static {v1}, Landroid/support/v4/q3;->const([B)V

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    or-int/2addr p1, v3

    if-nez p1, :cond_6

    return-object p3

    :cond_6
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "wrapped key corrupted"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "input too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public wrap([BII)[B
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/import;->for:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xff

    if-gt p3, v0, :cond_4

    if-ltz p3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/import;->if:Landroid/support/v4/bc1;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/do;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/do;->getBlockSize()I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    mul-int/lit8 v3, v0, 0x2

    if-ge v1, v3, :cond_0

    :goto_0
    new-array v3, v3, [B

    goto :goto_1

    :cond_0
    rem-int v3, v1, v0

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    div-int v3, v1, v0

    add-int/2addr v3, v2

    mul-int v3, v3, v0

    goto :goto_0

    :goto_1
    int-to-byte v4, p3

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x4

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    sub-int/2addr p1, v1

    new-array p2, p1, [B

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/import;->new:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p2, v5, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p1, v3, v4

    xor-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    aput-byte p1, v3, v2

    const/4 p1, 0x5

    aget-byte p1, v3, p1

    xor-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    const/4 p2, 0x2

    aput-byte p1, v3, p2

    const/4 p1, 0x3

    const/4 p2, 0x6

    aget-byte p2, v3, p2

    xor-int/lit8 p2, p2, -0x1

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    const/4 p1, 0x0

    :goto_2
    array-length p2, v3

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p2, v3, p1, v3, p1}, Lorg/bouncycastle/crypto/modes/do;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_2

    :cond_2
    :goto_3
    array-length p1, v3

    if-ge v5, p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/import;->do:Lorg/bouncycastle/crypto/modes/do;

    invoke-virtual {p1, v3, v5, v3, v5}, Lorg/bouncycastle/crypto/modes/do;->processBlock([BI[BI)I

    add-int/2addr v5, v0

    goto :goto_3

    :cond_3
    return-object v3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input must be from 0 to 255 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
