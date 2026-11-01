.class public Lorg/bouncycastle/crypto/tls/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Ljava/math/BigInteger;

.field public for:Ljava/math/BigInteger;

.field public if:Ljava/math/BigInteger;

.field public new:[B


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/g;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/g;->if:Ljava/math/BigInteger;

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/g;->new:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/g;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public static case(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/f0;->case(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/f0;->case(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/f0;->case(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v3, Lorg/bouncycastle/crypto/tls/g;

    invoke-direct {v3, v0, v1, v2, p0}, Lorg/bouncycastle/crypto/tls/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V

    return-object v3
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->do:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/f0;->else(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->if:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/f0;->else(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->new:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->for:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/f0;->else(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    return-void
.end method

.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/g;->new:[B

    return-object v0
.end method
