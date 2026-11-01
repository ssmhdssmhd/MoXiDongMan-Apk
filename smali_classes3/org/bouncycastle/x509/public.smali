.class public Lorg/bouncycastle/x509/public;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Ljava/lang/String;

.field private final do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private else:Landroid/support/v4/gh2;

.field private for:Landroid/support/v4/ud2;

.field private final if:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;

.field private new:Lorg/bouncycastle/asn1/catch;

.field private try:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/w5;

    invoke-direct {v0}, Landroid/support/v4/w5;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/public;->do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/public;->if:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;

    new-instance v0, Landroid/support/v4/ud2;

    invoke-direct {v0}, Landroid/support/v4/ud2;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v0, Landroid/support/v4/gh2;

    invoke-direct {v0}, Landroid/support/v4/gh2;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/public;->else:Landroid/support/v4/gh2;

    return-void
.end method

.method private class(Landroid/support/v4/w32;[B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/public;->try:Landroid/support/v4/b1;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/public;->if:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method private const()Landroid/support/v4/w32;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->else:Landroid/support/v4/gh2;

    invoke-virtual {v0}, Landroid/support/v4/gh2;->new()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    iget-object v1, p0, Lorg/bouncycastle/x509/public;->else:Landroid/support/v4/gh2;

    invoke-virtual {v1}, Landroid/support/v4/gh2;->for()Landroid/support/v4/fh2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/ud2;->try(Landroid/support/v4/fh2;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    invoke-virtual {v0}, Landroid/support/v4/ud2;->do()Landroid/support/v4/w32;

    move-result-object v0

    return-object v0
.end method

.method private try([Z)Lorg/bouncycastle/asn1/instanceof;
    .locals 7

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p1, v2

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p1

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    return-object p1

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/instanceof;

    rsub-int/lit8 p1, p1, 0x8

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public abstract([Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/public;->try([Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/ud2;->throw(Lorg/bouncycastle/asn1/instanceof;)V

    return-void
.end method

.method public break(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/public;->const()Landroid/support/v4/w32;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/public;->new:Lorg/bouncycastle/asn1/catch;

    iget-object v1, p0, Lorg/bouncycastle/x509/public;->case:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/throw;->do(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v6, p1}, Lorg/bouncycastle/x509/public;->class(Landroid/support/v4/w32;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/try;

    const-string p3, "exception producing certificate object"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/x509/try;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/try;

    const-string p3, "exception encoding TBS cert"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/x509/try;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public case(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p3}, Landroid/support/v4/eh2;->do([B)Lorg/bouncycastle/asn1/final;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/public;->do(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p2, Ljava/security/cert/CertificateParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extension "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not present"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public catch(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/public;->const()Landroid/support/v4/w32;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/public;->new:Lorg/bouncycastle/asn1/catch;

    iget-object v2, p0, Lorg/bouncycastle/x509/public;->case:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lorg/bouncycastle/x509/throw;->if(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/public;->class(Landroid/support/v4/w32;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/try;

    const-string v0, "exception producing certificate object"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/x509/try;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/try;

    const-string v0, "exception encoding TBS cert"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/x509/try;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public default(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v1, Lorg/bouncycastle/asn1/else;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/ud2;->super(Lorg/bouncycastle/asn1/x509/try;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process key - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/public;->for(Lorg/bouncycastle/asn1/catch;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public else(Lorg/bouncycastle/asn1/catch;ZLjava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/public;->case(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    return-void
.end method

.method public extends(Ljava/math/BigInteger;)V
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ud2;->this(Lorg/bouncycastle/asn1/goto;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serial number must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/x509/public;->throw(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "BC provider not installed!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finally(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/x509/public;->case:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/throw;->case(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/public;->new:Lorg/bouncycastle/asn1/catch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/throw;->break(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/public;->try:Landroid/support/v4/b1;

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    invoke-virtual {v0, p1}, Landroid/support/v4/ud2;->break(Landroid/support/v4/b1;)V

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature type requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for(Lorg/bouncycastle/asn1/catch;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->else:Landroid/support/v4/gh2;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/gh2;->do(Lorg/bouncycastle/asn1/catch;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public goto(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/x509/public;->catch(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/public;->new(Lorg/bouncycastle/asn1/catch;Z[B)V

    return-void
.end method

.method public import()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/throw;->try()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public native()V
    .locals 1

    new-instance v0, Landroid/support/v4/ud2;

    invoke-direct {v0}, Landroid/support/v4/ud2;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->else:Landroid/support/v4/gh2;

    invoke-virtual {v0}, Landroid/support/v4/gh2;->try()V

    return-void
.end method

.method public new(Lorg/bouncycastle/asn1/catch;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->else:Landroid/support/v4/gh2;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/gh2;->if(Lorg/bouncycastle/asn1/catch;Z[B)V

    return-void
.end method

.method public package(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v1, Lorg/bouncycastle/jce/case;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/case;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ud2;->final(Lorg/bouncycastle/asn1/x509/goto;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public private(Lorg/bouncycastle/asn1/x509/goto;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    invoke-virtual {v0, p1}, Landroid/support/v4/ud2;->final(Lorg/bouncycastle/asn1/x509/goto;)V

    return-void
.end method

.method public public(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v1, Lorg/bouncycastle/jce/case;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/case;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ud2;->else(Lorg/bouncycastle/asn1/x509/goto;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public return(Lorg/bouncycastle/asn1/x509/goto;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    invoke-virtual {v0, p1}, Landroid/support/v4/ud2;->else(Lorg/bouncycastle/asn1/x509/goto;)V

    return-void
.end method

.method public static([Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/public;->try([Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/ud2;->goto(Lorg/bouncycastle/asn1/instanceof;)V

    return-void
.end method

.method public super(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/public;->throw(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public switch(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v1, Landroid/support/v4/t62;

    invoke-direct {v1, p1}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ud2;->if(Landroid/support/v4/t62;)V

    return-void
.end method

.method public this(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/public;->break(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/public;->break(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    throw p1
.end method

.method public throws(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/public;->for:Landroid/support/v4/ud2;

    new-instance v1, Landroid/support/v4/t62;

    invoke-direct {v1, p1}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ud2;->catch(Landroid/support/v4/t62;)V

    return-void
.end method

.method public while(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/x509/public;->throw(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "BC provider not installed!"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
