.class public Lorg/bouncycastle/crypto/tls/o;
.super Lorg/bouncycastle/crypto/tls/p;
.source "SourceFile"


# instance fields
.field public catch:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Landroid/support/v4/ou;)V
    .locals 1

    new-instance v0, Landroid/support/v4/wy;

    invoke-direct {v0}, Landroid/support/v4/wy;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/bouncycastle/crypto/tls/o;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/p;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/o;->catch:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/strictfp;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/strictfp;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/q;->class(Ljava/security/SecureRandom;Landroid/support/v4/ou;Ljava/io/OutputStream;)Landroid/support/v4/pu;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->this:Landroid/support/v4/pu;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/o;->catch:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/l0;->i(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->switch(Lorg/bouncycastle/crypto/tls/i;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v3

    iget-object v4, v3, Landroid/support/v4/mw1;->else:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, v3, Landroid/support/v4/mw1;->goto:[B

    array-length v4, v3

    invoke-interface {v2, v3, v6, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/strictfp;->do(Lorg/bouncycastle/crypto/Digest;)V

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v2, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/o;->catch:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/tls/volatile;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/volatile;-><init>(Lorg/bouncycastle/crypto/tls/i;[B)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/volatile;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public if(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/mw1;)Lorg/bouncycastle/crypto/Signer;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->else:Landroid/support/v4/a4;

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    iget-object p2, p3, Landroid/support/v4/mw1;->else:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object p2, p3, Landroid/support/v4/mw1;->goto:[B

    array-length p3, p2

    invoke-interface {p1, p2, v1, p3}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-object p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/p;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/o;->catch:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/j;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/j;-><init>()V

    new-instance v2, Landroid/support/v4/c52;

    invoke-direct {v2, p1, v1}, Landroid/support/v4/c52;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/p;->try:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/q;->return(Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Ljava/io/InputStream;)Landroid/support/v4/ou;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    new-instance v3, Landroid/support/v4/ru;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/q;->while(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    invoke-direct {v3, v2, v4}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->do(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/volatile;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/p;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/volatile;->if()Lorg/bouncycastle/crypto/tls/i;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/o;->if(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/mw1;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/j;->do(Lorg/bouncycastle/crypto/Signer;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/volatile;->for()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method
