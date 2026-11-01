.class public Landroid/support/v4/v71;
.super Landroid/support/v4/l91;
.source "SourceFile"


# instance fields
.field private new:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/l91;-><init>()V

    invoke-static {}, Landroid/support/v4/u00;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private catch(I)[B
    .locals 8

    iget-object v0, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    new-array v2, p1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Landroid/support/v4/l91;->do:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Landroid/support/v4/l91;->if:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le p1, v0, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, p1

    :goto_1
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    sub-int/2addr p1, v5

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    iget-object v5, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v5, p0, Landroid/support/v4/v71;->new:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0
.end method


# virtual methods
.method public case(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/support/v4/v71;->catch(I)[B

    move-result-object v0

    new-instance v1, Landroid/support/v4/bc1;

    new-instance v2, Landroid/support/v4/gr0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Landroid/support/v4/gr0;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method

.method public class([B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/support/v4/l91;->break([B[BI)V

    return-void
.end method

.method public new(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/v71;->try(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public try(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Landroid/support/v4/v71;->catch(I)[B

    move-result-object v0

    new-instance v1, Landroid/support/v4/gr0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Landroid/support/v4/gr0;-><init>([BII)V

    return-object v1
.end method
