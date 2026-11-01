.class public Lorg/bouncycastle/crypto/tls/u;
.super Lorg/bouncycastle/crypto/tls/new;
.source "SourceFile"


# instance fields
.field public break:Landroid/support/v4/h50;

.field public case:[S

.field public catch:Landroid/support/v4/k50;

.field public else:[S

.field public goto:Landroid/support/v4/a4;

.field public new:Lorg/bouncycastle/crypto/tls/TlsSigner;

.field public this:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

.field public try:[I


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/new;-><init>(ILjava/util/Vector;)V

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/c0;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/tls/c0;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p1, Landroid/support/v4/l72;

    invoke-direct {p1}, Landroid/support/v4/l72;-><init>()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/u;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/u;->try:[I

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/u;->case:[S

    iput-object p5, p0, Lorg/bouncycastle/crypto/tls/u;->else:[S

    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->this:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->else:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;

    invoke-virtual {v2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/s;->const(Ljava/security/SecureRandom;[SLandroid/support/v4/e40;Ljava/io/OutputStream;)Landroid/support/v4/h50;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/u;->break:Landroid/support/v4/h50;

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->this:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Landroid/support/v4/a4;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->break:Landroid/support/v4/h50;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/s;->new(Landroid/support/v4/k50;Landroid/support/v4/h50;)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public generateServerKeyExchange()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/u;->requiresServerKeyExchange()Z

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

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/u;->try:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/u;->case:[S

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/s;->final(Ljava/security/SecureRandom;[I[SLjava/io/OutputStream;)Landroid/support/v4/h50;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->break:Landroid/support/v4/h50;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

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

    const/16 v0, 0x14

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

    const/16 v2, 0x14

    if-eq v0, v2, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/u;->this:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->break:Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->else:[S

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/s;->catch([SLandroid/support/v4/e40;[B)Landroid/support/v4/k50;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->strictfp(Landroid/support/v4/k50;)Landroid/support/v4/k50;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;

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

    const/16 v1, 0x14

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

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->goto:Landroid/support/v4/a4;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/u;->new:Lorg/bouncycastle/crypto/tls/TlsSigner;

    const/16 v3, 0x2e

    if-nez v2, :cond_0

    :try_start_1
    check-cast v1, Landroid/support/v4/k50;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/s;->strictfp(Landroid/support/v4/k50;)Landroid/support/v4/k50;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;
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

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/u;->requiresServerKeyExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/u;->try:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->case:[S

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/s;->extends([I[SLjava/io/InputStream;)Landroid/support/v4/e40;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/u;->case:[S

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/s;->catch([SLandroid/support/v4/e40;[B)Landroid/support/v4/k50;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/s;->strictfp(Landroid/support/v4/k50;)Landroid/support/v4/k50;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/u;->catch:Landroid/support/v4/k50;

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

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

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

    const/16 v1, 0x14

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

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/catch;->for()[S

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-short v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_0
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
