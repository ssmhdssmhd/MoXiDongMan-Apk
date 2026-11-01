.class public Lorg/bouncycastle/crypto/tls/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:S

.field public if:S


# direct methods
.method public constructor <init>(SS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->I(S)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/l0;->I(S)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/i;->do:S

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/i;->if:S

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signature\' MUST NOT be \"anonymous\""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signature\' should be a uint8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'hash\' should be a uint8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result p0

    new-instance v1, Lorg/bouncycastle/crypto/tls/i;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/crypto/tls/i;-><init>(SS)V

    return-object v1
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/tls/i;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public for()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/i;->if:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->if()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/i;->for()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public if()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/i;->do:S

    return v0
.end method
