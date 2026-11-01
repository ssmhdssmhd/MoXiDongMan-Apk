.class public abstract Lorg/bouncycastle/crypto/tls/finally;
.super Lorg/bouncycastle/crypto/tls/if;
.source "SourceFile"


# instance fields
.field public this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/finally;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 1

    new-instance v0, Landroid/support/v4/wy;

    invoke-direct {v0}, Landroid/support/v4/wy;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/finally;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/if;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/finally;->this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    return-void
.end method


# virtual methods
.method public case(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/bouncycastle/crypto/tls/t;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/if;->new:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/if;->try:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/if;->case:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/t;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method public else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/bouncycastle/crypto/tls/u;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/if;->new:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/if;->try:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/if;->case:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/u;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method public getCipherSuites()[I
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xc02b
        0xc023
        0xc009
        0xc02f
        0xc027
        0xc013
        0x9c
        0x3c
        0x2f
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
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/finally;->case(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/finally;->else(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/finally;->try(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/finally;->new(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/finally;->goto()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

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

.method public goto()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/b0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/b0;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public new(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/tls/o;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/finally;->this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/o;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    return-object v0
.end method

.method public try(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/tls/p;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/finally;->this:Lorg/bouncycastle/crypto/tls/TlsDHVerifier;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/p;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsDHVerifier;Landroid/support/v4/ou;)V

    return-object v0
.end method
