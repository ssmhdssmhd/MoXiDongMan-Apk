.class public Lorg/bouncycastle/crypto/tls/class;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:S

.field public if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/class;->try(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/class;->do:S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/class;->if:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'response\' is not an instance of the correct type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->c0(Ljava/io/InputStream;)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->Q(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->M([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/j51;->new(Ljava/lang/Object;)Landroid/support/v4/j51;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/tls/class;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/crypto/tls/class;-><init>(SLjava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static try(SLjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    instance-of p0, p1, Landroid/support/v4/j51;

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'statusType\' is an unsupported CertificateStatusType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/class;->do:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->H0(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/class;->do:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/class;->if:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/j51;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->p0([BLjava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method

.method public for()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/class;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Landroid/support/v4/j51;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/class;->if:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/class;->try(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/class;->if:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/j51;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'response\' is not an OCSPResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/class;->do:S

    return v0
.end method
