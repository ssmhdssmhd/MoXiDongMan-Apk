.class public Landroid/support/v4/d5;
.super Landroid/support/v4/c5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/d5;->catch(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/d5;->break(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/else;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/else;->if()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-direct {p0, p1}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/if;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/if;->goto()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-direct {p0, p1}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/eh2;->do([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-direct {p0, p1}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method private static break(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/super;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/tg0;

    invoke-static {p0}, Lorg/bouncycastle/jce/new;->if(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/case;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/tg0;-><init>(Lorg/bouncycastle/asn1/x509/goto;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v1

    new-instance v2, Landroid/support/v4/c5;

    new-instance v3, Landroid/support/v4/ug0;

    invoke-direct {v3, v0}, Landroid/support/v4/ug0;-><init>(Landroid/support/v4/tg0;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/x509/try;Landroid/support/v4/ug0;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Landroid/support/v4/c5;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/super;

    return-object p0

    :cond_0
    new-instance v0, Landroid/support/v4/tg0;

    invoke-static {p0}, Lorg/bouncycastle/jce/new;->if(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/case;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/tg0;-><init>(Lorg/bouncycastle/asn1/x509/goto;)V

    sget-object v1, Lorg/bouncycastle/asn1/x509/if;->try:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/support/v4/eh2;->do([B)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/class;

    new-instance v2, Landroid/support/v4/c5;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    new-instance v3, Landroid/support/v4/ug0;

    invoke-direct {v3, v0}, Landroid/support/v4/ug0;-><init>(Landroid/support/v4/tg0;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Landroid/support/v4/c5;-><init>([BLandroid/support/v4/ug0;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Landroid/support/v4/c5;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/super;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v1

    new-instance v2, Landroid/support/v4/c5;

    new-instance v3, Landroid/support/v4/ug0;

    invoke-direct {v3, v0}, Landroid/support/v4/ug0;-><init>(Landroid/support/v4/tg0;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/x509/try;Landroid/support/v4/ug0;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Landroid/support/v4/c5;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/super;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception extracting certificate details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static catch(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/super;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p0

    new-instance v0, Landroid/support/v4/c5;

    invoke-direct {v0, p0}, Landroid/support/v4/c5;-><init>(Lorg/bouncycastle/asn1/x509/try;)V

    invoke-virtual {v0}, Landroid/support/v4/c5;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/super;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
