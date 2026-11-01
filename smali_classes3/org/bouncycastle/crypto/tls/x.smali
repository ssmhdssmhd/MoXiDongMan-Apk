.class public Lorg/bouncycastle/crypto/tls/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field public do:Lorg/bouncycastle/crypto/tls/TlsContext;

.field public for:Landroid/support/v4/p72;

.field public if:Landroid/support/v4/p72;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/x;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/x;->if:Landroid/support/v4/p72;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/x;->for:Landroid/support/v4/p72;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x50

    if-ne v2, v0, :cond_5

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/x;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/l0;->try(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v2

    new-instance v10, Landroid/support/v4/p72;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/p72;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    add-int/2addr p2, v1

    new-instance v1, Landroid/support/v4/p72;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    move-object v4, v1

    move-object v6, p3

    move v8, p2

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/p72;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    add-int/2addr p2, p3

    if-ne p2, v0, :cond_2

    move-object v0, v10

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_3
    move-object v1, v0

    :goto_2
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/x;->if:Landroid/support/v4/p72;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/x;->for:Landroid/support/v4/p72;

    goto :goto_3

    :cond_4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/x;->if:Landroid/support/v4/p72;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/x;->for:Landroid/support/v4/p72;

    :goto_3
    return-void

    :cond_5
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/x;->for:Landroid/support/v4/p72;

    if-nez v0, :cond_0

    add-int/2addr p6, p5

    invoke-static {p4, p5, p6}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/p72;->try()I

    move-result v0

    if-lt p6, v0, :cond_2

    sub-int v7, p6, v0

    add-int v0, p5, v7

    add-int/2addr p6, p5

    invoke-static {p4, v0, p6}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p6

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/x;->for:Landroid/support/v4/p72;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/p72;->do(JS[BII)[B

    move-result-object p1

    invoke-static {p6, p1}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p4, p5, v0}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/x;->if:Landroid/support/v4/p72;

    if-nez v0, :cond_0

    add-int/2addr p6, p5

    invoke-static {p4, p5, p6}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/p72;->do(JS[BII)[B

    move-result-object p1

    array-length p2, p1

    add-int/2addr p2, p6

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-static {p4, p5, p2, p3, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p4, p1

    invoke-static {p1, p3, p2, p6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/x;->if:Landroid/support/v4/p72;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/p72;->try()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method
