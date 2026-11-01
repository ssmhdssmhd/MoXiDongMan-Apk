.class public Lorg/bouncycastle/crypto/tls/p;
.super Lorg/bouncycastle/crypto/tls/new;
.source "SourceFile"


# instance fields
.field public break:Landroid/support/v4/ru;

.field public case:Landroid/support/v4/ou;

.field public else:Landroid/support/v4/a4;

.field public goto:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

.field public new:Lorg/bouncycastle/crypto/tls/TlsSigner;

.field public this:Landroid/support/v4/pu;

.field public try:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Landroid/support/v4/ou;)V
    .locals 1

    new-instance v0, Landroid/support/v4/wy;

    invoke-direct {v0}, Landroid/support/v4/wy;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/bouncycastle/crypto/tls/p;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/new;-><init>(ILjava/util/Vector;)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/c0;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/tls/c0;-><init>()V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/support/v4/k72;

    invoke-direct {p1}, Landroid/support/v4/k72;-><init>()V

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/p;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/p;->try:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->goto:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/q;->catch(Ljava/security/SecureRandom;Landroid/support/v4/ou;Ljava/io/OutputStream;)Landroid/support/v4/pu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/p;->this:Landroid/support/v4/pu;

    :cond_0
    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->goto:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Landroid/support/v4/a4;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->this:Landroid/support/v4/pu;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/q;->new(Landroid/support/v4/ru;Landroid/support/v4/pu;)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public generateServerKeyExchange()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/p;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/q;->class(Ljava/security/SecureRandom;Landroid/support/v4/ou;Ljava/io/OutputStream;)Landroid/support/v4/pu;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->this:Landroid/support/v4/pu;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    :cond_0
    return-void
.end method

.method public processClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p1, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0x50

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/p;->goto:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/ru;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/q;->while(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    return-void
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/break;->for(I)Landroid/support/v4/rg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rg;->const()Lorg/bouncycastle/asn1/x509/try;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->else:Landroid/support/v4/a4;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/p;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

    const/16 v3, 0x2e

    if-nez v2, :cond_0

    :try_start_1
    check-cast v1, Landroid/support/v4/ru;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    invoke-virtual {v1}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x8

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, v3, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->isValidPublicKey(Landroid/support/v4/a4;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    :goto_0
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->k0(Landroid/support/v4/rg;I)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_3
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/p;->requiresServerKeyExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->try:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/q;->return(Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Ljava/io/InputStream;)Landroid/support/v4/ou;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    new-instance v0, Landroid/support/v4/ru;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/q;->while(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/p;->case:Landroid/support/v4/ou;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/p;->break:Landroid/support/v4/ru;

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public requiresServerKeyExchange()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
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

    iget v0, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

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

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

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

    :cond_3
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
