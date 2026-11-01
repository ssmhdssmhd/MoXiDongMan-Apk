.class public Lorg/bouncycastle/crypto/tls/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Ljava/lang/String;

.field public if:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'sha1Hash\' must have length == 20, if present"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/n0;->do:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/n0;->if:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'url\' must have length from 1 to (2^16 - 1)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static new(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/n0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x2f

    if-lt v1, v2, :cond_3

    invoke-static {v0}, Lorg/bouncycastle/util/for;->if([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v4

    if-eqz v4, :cond_1

    if-ne v4, v2, :cond_0

    const/16 p0, 0x14

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->w(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    new-instance p0, Lorg/bouncycastle/crypto/tls/n0;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/n0;-><init>(Ljava/lang/String;[B)V

    return-object p0

    :cond_2
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_3
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v3}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n0;->do:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n0;->if:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->F0(ILjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->F0(ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n0;->if:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n0;->do:Ljava/lang/String;

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/n0;->if:[B

    return-object v0
.end method
