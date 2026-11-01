.class public Lorg/bouncycastle/crypto/tls/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:S

.field public if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/e;->try(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/e;->do:S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/e;->if:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'name\' is not an instance of the correct type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v0

    const/16 v1, 0x32

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p0, Lorg/bouncycastle/crypto/tls/e;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/e;-><init>(SLjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static try(SLjava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    instance-of p0, p1, Ljava/lang/String;

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'nameType\' is an unsupported NameType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/e;->do:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/e;->do:S

    const/16 v1, 0x50

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/e;->if:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Landroid/support/v4/n72;

    invoke-direct {p1, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public for()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/e;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/e;->if:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/e;->try(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/e;->if:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'name\' is not a HostName string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/e;->do:S

    return v0
.end method
