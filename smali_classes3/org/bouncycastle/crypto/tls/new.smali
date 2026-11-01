.class public abstract Lorg/bouncycastle/crypto/tls/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field public do:I

.field public for:Lorg/bouncycastle/crypto/tls/TlsContext;

.field public if:Ljava/util/Vector;


# direct methods
.method public constructor <init>(ILjava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/new;->if:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public do(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/volatile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/volatile;->new(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/volatile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/volatile;->if()Lorg/bouncycastle/crypto/tls/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/new;->if:Ljava/util/Vector;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->m0(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/i;)V

    :cond_0
    return-object p1
.end method

.method public generateServerKeyExchange()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/new;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/new;->for:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/a;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->r(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/new;->if:Ljava/util/Vector;

    if-nez p1, :cond_3

    iget p1, p0, Lorg/bouncycastle/crypto/tls/new;->do:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported key exchange algorithm"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {}, Lorg/bouncycastle/crypto/tls/l0;->implements()Ljava/util/Vector;

    move-result-object p1

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-static {}, Lorg/bouncycastle/crypto/tls/l0;->transient()Ljava/util/Vector;

    move-result-object p1

    goto :goto_0

    :cond_1
    :pswitch_2
    invoke-static {}, Lorg/bouncycastle/crypto/tls/l0;->instanceof()Ljava/util/Vector;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/new;->if:Ljava/util/Vector;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/new;->if:Ljava/util/Vector;

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    :pswitch_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported_signature_algorithms not allowed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processClientCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/break;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/new;->processServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V

    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/new;->requiresServerKeyExchange()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skipClientCredentials()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public skipServerKeyExchange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/new;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method
