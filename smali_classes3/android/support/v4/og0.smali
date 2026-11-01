.class public Landroid/support/v4/og0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# instance fields
.field private final do:Lorg/bouncycastle/crypto/Digest;

.field private for:I

.field private if:[B

.field private new:[B

.field private try:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/og0;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/support/v4/og0;->try:[B

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/og0;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/og0;->if:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v0, p0, Landroid/support/v4/og0;->for:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/og0;->for:I

    invoke-static {v0}, Landroid/support/v4/ib1;->goto(I)[B

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/og0;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Landroid/support/v4/og0;->new:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/og0;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/og0;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/og0;->try:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Landroid/support/v4/og0;->try:[B

    invoke-static {v0, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroid/support/v4/og0;->try:[B

    invoke-static {p1}, Landroid/support/v4/q3;->const([B)V

    return p3

    :cond_1
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "output buffer too small"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og0;->do:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/ng0;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ng0;

    invoke-virtual {p1}, Landroid/support/v4/ng0;->for()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og0;->if:[B

    invoke-virtual {p1}, Landroid/support/v4/ng0;->if()I

    move-result v0

    iput v0, p0, Landroid/support/v4/og0;->for:I

    invoke-virtual {p1}, Landroid/support/v4/ng0;->do()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/og0;->new:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unkown parameters type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
