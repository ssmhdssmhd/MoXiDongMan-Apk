.class public abstract Lorg/bouncycastle/crypto/tls/r;
.super Lorg/bouncycastle/crypto/tls/else;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/else;-><init>()V

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/crypto/tls/r;->new(Lorg/bouncycastle/crypto/tls/i;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    return-object p1
.end method

.method public createVerifyer(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/bouncycastle/crypto/tls/r;->new(Lorg/bouncycastle/crypto/tls/i;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    return-object p1
.end method

.method public abstract do(S)Lorg/bouncycastle/crypto/DSA;
.end method

.method public for(ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 0

    return-object p2
.end method

.method public generateRawSignature(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/cc1;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/else;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2, v0}, Lorg/bouncycastle/crypto/tls/r;->new(Lorg/bouncycastle/crypto/tls/i;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p2

    if-nez p1, :cond_0

    const/16 p1, 0x10

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    array-length v0, p3

    :goto_0
    invoke-interface {p2, p3, p1, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object p1

    return-object p1
.end method

.method public abstract if()S
.end method

.method public new(Lorg/bouncycastle/crypto/tls/i;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/else;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/r;->if()S

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result p1

    :goto_2
    if-eqz p2, :cond_4

    new-instance p2, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    :goto_3
    new-instance v0, Landroid/support/v4/bv;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/r;->do(S)Lorg/bouncycastle/crypto/DSA;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/support/v4/bv;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/tls/r;->for(ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public verifyRawSignature(Lorg/bouncycastle/crypto/tls/i;[BLandroid/support/v4/a4;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/bouncycastle/crypto/tls/r;->new(Lorg/bouncycastle/crypto/tls/i;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p3

    if-nez p1, :cond_0

    const/16 p1, 0x10

    const/16 v0, 0x14

    invoke-interface {p3, p4, p1, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    goto :goto_0

    :cond_0
    array-length p1, p4

    invoke-interface {p3, p4, v1, p1}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    :goto_0
    invoke-interface {p3, p2}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
