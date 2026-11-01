.class public Lorg/bouncycastle/crypto/tls/volatile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/crypto/tls/i;

.field public if:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/i;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/volatile;->do:Lorg/bouncycastle/crypto/tls/i;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/volatile;->if:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signature\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static new(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/volatile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/i;->new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/tls/volatile;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/tls/volatile;-><init>(Lorg/bouncycastle/crypto/tls/i;[B)V

    return-object v0
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/volatile;->do:Lorg/bouncycastle/crypto/tls/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/i;->do(Ljava/io/OutputStream;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/volatile;->if:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    return-void
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/volatile;->if:[B

    return-object v0
.end method

.method public if()Lorg/bouncycastle/crypto/tls/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/volatile;->do:Lorg/bouncycastle/crypto/tls/i;

    return-object v0
.end method
