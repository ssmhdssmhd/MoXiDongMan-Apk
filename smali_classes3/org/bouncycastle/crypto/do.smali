.class public Lorg/bouncycastle/crypto/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:[B

.field private final for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field public if:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method


# virtual methods
.method public case(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/do;->this()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p2

    add-int/2addr p2, p1

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/do;->do:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/do;->if:I

    return-void
.end method

.method public do()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/do;->do:[B

    iget v2, p0, Lorg/bouncycastle/crypto/do;->if:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/do;->this()V

    return-object v0
.end method

.method public else(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/do;->if:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/do;->do:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/do;->if:I

    aput-byte p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/tw;

    const-string v0, "attempt to process message too long for cipher"

    invoke-direct {p1, v0}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public goto([BII)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/do;->if:I

    add-int v1, v0, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/do;->do:[B

    array-length v3, v2

    if-gt v1, v3, :cond_1

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/do;->if:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/do;->if:I

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "attempt to process message too long for cipher"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/do;->if:I

    return v0
.end method

.method public new()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public this()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/do;->do:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/do;->do:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/do;->if:I

    return-void
.end method

.method public try()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/do;->for:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method
