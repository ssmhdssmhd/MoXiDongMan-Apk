.class public Lorg/bouncycastle/crypto/tls/synchronized;
.super Lorg/bouncycastle/crypto/tls/case;
.source "SourceFile"


# instance fields
.field public native:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/case;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/synchronized;->native:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/synchronized;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;)V

    return-void
.end method


# virtual methods
.method public else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 11

    new-instance v10, Lorg/bouncycastle/crypto/tls/z;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/case;->break:Ljava/util/Vector;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/synchronized;->native:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/synchronized;->goto()Landroid/support/v4/ou;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/case;->class:[I

    iget-object v8, p0, Lorg/bouncycastle/crypto/tls/case;->const:[S

    iget-object v9, p0, Lorg/bouncycastle/crypto/tls/case;->final:[S

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/crypto/tls/z;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;[I[S[S)V

    return-object v10
.end method

.method public getCipherSuites()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc037
        0xc035
        0xb2
        0x90
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

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/synchronized;->this()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    move-result-object v0

    return-object v0

    :cond_0
    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
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

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :cond_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/synchronized;->else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public goto()Landroid/support/v4/ou;
    .locals 1

    sget-object v0, Landroid/support/v4/su;->d:Landroid/support/v4/ou;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;
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
