.class public abstract Lorg/bouncycastle/crypto/tls/private;
.super Lorg/bouncycastle/crypto/tls/case;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/case;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/case;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method


# virtual methods
.method public break(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/bouncycastle/crypto/tls/u;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/case;->class:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/case;->const:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/case;->final:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/u;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method public catch()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/b0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/b0;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public class()Landroid/support/v4/ou;
    .locals 1

    sget-object v0, Landroid/support/v4/su;->d:Landroid/support/v4/ou;

    return-object v0
.end method

.method public const()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/tls/o;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->class()Landroid/support/v4/ou;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lorg/bouncycastle/crypto/tls/o;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    return-object v0
.end method

.method public final()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public getCipherSuites()[I
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xc030
        0xc02f
        0xc028
        0xc027
        0xc014
        0xc013
        0x9f
        0x9e
        0x6b
        0x67
        0x39
        0x33
        0x9d
        0x9c
        0x3d
        0x3c
        0x35
        0x2f
    .end array-data
.end method

.method public getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->final()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->throw()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->const()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->super()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/case;->throw:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/private;->this(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/private;->break(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/private;->goto(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/private;->else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->catch()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public goto(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/tls/p;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/private;->class()Landroid/support/v4/ou;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lorg/bouncycastle/crypto/tls/p;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    return-object v0
.end method

.method public super()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method

.method public this(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/bouncycastle/crypto/tls/t;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/case;->class:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/case;->const:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/case;->final:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/t;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method public throw()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
.end method
