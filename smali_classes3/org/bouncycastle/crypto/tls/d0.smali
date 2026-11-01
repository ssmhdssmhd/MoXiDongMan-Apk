.class public Lorg/bouncycastle/crypto/tls/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lorg/bouncycastle/crypto/tls/TlsContext;Landroid/support/v4/ck1;Ljava/io/OutputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    new-array v1, v0, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/l0;->O0(Lorg/bouncycastle/crypto/tls/a;[BI)V

    new-instance v2, Lorg/bouncycastle/crypto/encodings/for;

    new-instance v4, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/encodings/for;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    new-instance v4, Landroid/support/v4/cc1;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1, v4}, Lorg/bouncycastle/crypto/encodings/for;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_0
    invoke-virtual {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/encodings/for;->processBlock([BII)[B

    move-result-object p1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Landroid/support/v4/tn0; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2, p0}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw p1
.end method

.method public static if(Lorg/bouncycastle/crypto/tls/TlsContext;Landroid/support/v4/ck1;[B)[B
    .locals 7

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object v0

    const/16 v1, 0x30

    new-array v2, v1, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/bouncycastle/crypto/encodings/for;

    new-instance v6, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v6}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {v5, v6, v2}, Lorg/bouncycastle/crypto/encodings/for;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;[B)V

    new-instance v6, Landroid/support/v4/cc1;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-direct {v6, p1, p0}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/crypto/encodings/for;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p0, p2

    invoke-virtual {v5, p2, v4, p0}, Lorg/bouncycastle/crypto/encodings/for;->processBlock([BII)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result p0

    aget-byte p1, v3, v4

    and-int/lit16 p1, p1, 0xff

    xor-int/2addr p0, p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result p1

    const/4 p2, 0x1

    aget-byte v0, v3, p2

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr p1, v0

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x1

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x2

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x4

    or-int/2addr p0, p1

    and-int/2addr p0, p2

    sub-int/2addr p0, p2

    xor-int/lit8 p0, p0, -0x1

    :goto_0
    if-ge v4, v1, :cond_0

    aget-byte p1, v3, v4

    xor-int/lit8 p2, p0, -0x1

    and-int/2addr p1, p2

    aget-byte p2, v2, v4

    and-int/2addr p2, p0

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
