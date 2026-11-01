.class public Lorg/bouncycastle/crypto/tls/b0;
.super Lorg/bouncycastle/crypto/tls/new;
.source "SourceFile"


# instance fields
.field public case:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

.field public else:[B

.field public new:Landroid/support/v4/a4;

.field public try:Landroid/support/v4/ck1;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/new;-><init>(ILjava/util/Vector;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b0;->new:Landroid/support/v4/a4;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b0;->try:Landroid/support/v4/ck1;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b0;->case:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b0;->try:Landroid/support/v4/ck1;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/d0;->do(Lorg/bouncycastle/crypto/tls/TlsContext;Landroid/support/v4/ck1;Ljava/io/OutputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b0;->else:[B

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b0;->else:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b0;->else:[B

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public if(Landroid/support/v4/ck1;)Landroid/support/v4/ck1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p1, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->q(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/a22;->new(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b0;->case:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;->decryptPreMasterSecret([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b0;->else:[B

    return-void
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/break;->for(I)Landroid/support/v4/rg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rg;->const()Lorg/bouncycastle/asn1/x509/try;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b0;->new:Landroid/support/v4/a4;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/support/v4/a4;->do()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/b0;->new:Landroid/support/v4/a4;

    check-cast v1, Landroid/support/v4/ck1;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/b0;->if(Landroid/support/v4/ck1;)Landroid/support/v4/ck1;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/b0;->try:Landroid/support/v4/ck1;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->k0(Landroid/support/v4/rg;I)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/b0;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b0;->case:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/catch;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/catch;->for()[S

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-short v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
