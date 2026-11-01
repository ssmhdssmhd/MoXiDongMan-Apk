.class public Landroid/support/v4/a40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# instance fields
.field private do:Lorg/bouncycastle/crypto/DigestDerivationFunction;

.field private for:I

.field private if:Lorg/bouncycastle/asn1/catch;

.field private new:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/gq0;

    invoke-direct {v0, p1}, Landroid/support/v4/gq0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Landroid/support/v4/a40;->do:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Landroid/support/v4/b1;

    iget-object v2, p0, Landroid/support/v4/a40;->if:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-instance v4, Lorg/bouncycastle/asn1/j;

    iget v5, p0, Landroid/support/v4/a40;->for:I

    invoke-static {v5}, Landroid/support/v4/ib1;->goto(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/a40;->do:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    new-instance v2, Landroid/support/v4/kq0;

    iget-object v3, p0, Landroid/support/v4/a40;->new:[B

    new-instance v4, Lorg/bouncycastle/asn1/n;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    const-string v0, "DER"

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/support/v4/kq0;-><init>([B[B)V

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroid/support/v4/a40;->do:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to initialise kdf: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "output buffer too small"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a40;->do:Lorg/bouncycastle/crypto/DigestDerivationFunction;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/DigestDerivationFunction;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    check-cast p1, Landroid/support/v4/hu;

    invoke-virtual {p1}, Landroid/support/v4/hu;->do()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a40;->if:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Landroid/support/v4/hu;->for()I

    move-result v0

    iput v0, p0, Landroid/support/v4/a40;->for:I

    invoke-virtual {p1}, Landroid/support/v4/hu;->new()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a40;->new:[B

    return-void
.end method
