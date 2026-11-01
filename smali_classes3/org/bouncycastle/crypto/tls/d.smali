.class public Lorg/bouncycastle/crypto/tls/d;
.super Lorg/bouncycastle/crypto/tls/case;
.source "SourceFile"


# instance fields
.field public native:Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;

.field public public:[B

.field public return:Landroid/support/v4/s72;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/case;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/d;->public:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/d;->return:Landroid/support/v4/s72;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/d;->native:Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/d;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;)V

    return-void
.end method


# virtual methods
.method public else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/tls/e0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/d;->public:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/d;->return:Landroid/support/v4/s72;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/e0;-><init>(ILjava/util/Vector;[BLandroid/support/v4/s72;)V

    return-object v0
.end method

.method public getCipherSuites()[I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc022
        0xc01f
        0xc021
        0xc01e
        0xc020
        0xc01d
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

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/d;->this()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/d;->goto()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/d;->else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedCipherSuite()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/case;->getSelectedCipherSuite()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/f0;->new(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/d;->public:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/d;->native:Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsSRPIdentityManager;->getLoginParameters([B)Landroid/support/v4/s72;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/d;->return:Landroid/support/v4/s72;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/d;->return:Landroid/support/v4/s72;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_2
    :goto_0
    return v0
.end method

.method public goto()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
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

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/case;->processClientExtensions(Ljava/util/Hashtable;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/f0;->for(Ljava/util/Hashtable;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/d;->public:[B

    return-void
.end method

.method public this()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
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
