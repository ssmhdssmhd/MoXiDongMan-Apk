.class public Lorg/bouncycastle/crypto/tls/c;
.super Lorg/bouncycastle/crypto/tls/if;
.source "SourceFile"


# instance fields
.field public break:[B

.field public catch:[B

.field public this:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/if;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/c;->this:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/c;->break:[B

    invoke-static {p4}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/c;->catch:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;[B[B)V
    .locals 1

    new-instance v0, Landroid/support/v4/xy;

    invoke-direct {v0}, Landroid/support/v4/xy;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/tls/c;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/extends;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/extends;-><init>()V

    new-instance v1, Landroid/support/v4/xy;

    invoke-direct {v1}, Landroid/support/v4/xy;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/tls/c;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

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
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xc01e

    aput v2, v0, v1

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/if;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/v;->import(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/c;->break:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/f0;->do(Ljava/util/Hashtable;[B)V

    return-object v0
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

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/support/v4/n72;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/c;->new(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public new(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    new-instance v6, Lorg/bouncycastle/crypto/tls/e0;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/if;->for:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/c;->this:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/c;->break:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/c;->catch:[B

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/e0;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

    return-object v6
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/f0;->do:Ljava/lang/Integer;

    const/16 v1, 0x2f

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->k(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/c;->try()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/if;->processServerExtensions(Ljava/util/Hashtable;)V

    return-void
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
