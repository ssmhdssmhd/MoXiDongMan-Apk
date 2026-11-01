.class public Lorg/bouncycastle/crypto/tls/instanceof;
.super Lorg/bouncycastle/crypto/tls/if;
.source "SourceFile"


# instance fields
.field public break:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

.field public this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/if;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/instanceof;->this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/instanceof;->break:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 1

    new-instance v0, Landroid/support/v4/wy;

    invoke-direct {v0}, Landroid/support/v4/wy;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/tls/instanceof;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/instanceof;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V

    return-void
.end method


# virtual methods
.method public getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;
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

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc037
        0xc035
    .end array-data
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/if;->else:I

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
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/instanceof;->new(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public new(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 11

    new-instance v10, Lorg/bouncycastle/crypto/tls/z;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/instanceof;->break:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/instanceof;->this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/if;->new:[I

    iget-object v8, p0, Lorg/bouncycastle/crypto/tls/if;->try:[S

    iget-object v9, p0, Lorg/bouncycastle/crypto/tls/if;->case:[S

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/crypto/tls/z;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;[I[S[S)V

    return-object v10
.end method
