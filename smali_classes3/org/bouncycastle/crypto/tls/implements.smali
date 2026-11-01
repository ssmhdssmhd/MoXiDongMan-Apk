.class public Lorg/bouncycastle/crypto/tls/implements;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Ljava/util/Vector;

.field public if:Landroid/support/v4/y90;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Landroid/support/v4/y90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/implements;->do:Ljava/util/Vector;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/implements;->if:Landroid/support/v4/y90;

    return-void
.end method

.method public static new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/implements;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v1, p0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->M([B)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/nn1;->new(Ljava/lang/Object;)Landroid/support/v4/nn1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v2, p0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->M([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object v1

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/implements;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/implements;-><init>(Ljava/util/Vector;Landroid/support/v4/y90;)V

    return-object p0
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/implements;->do:Ljava/util/Vector;

    const-string v1, "DER"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/implements;->do:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/implements;->do:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/nn1;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-static {v0, p1}, Landroid/support/v4/a22;->goto(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/implements;->if:Landroid/support/v4/y90;

    if-nez v0, :cond_3

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    array-length v1, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->r0(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-void
.end method

.method public for()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/implements;->do:Ljava/util/Vector;

    return-object v0
.end method

.method public if()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/implements;->if:Landroid/support/v4/y90;

    return-object v0
.end method
