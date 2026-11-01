.class public Lorg/bouncycastle/x509/native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/x509/native$do;
    }
.end annotation


# instance fields
.field private case:Landroid/support/v4/gh2;

.field private final do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private for:Lorg/bouncycastle/asn1/catch;

.field private if:Landroid/support/v4/td2;

.field private new:Landroid/support/v4/b1;

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/w5;

    invoke-direct {v0}, Landroid/support/v4/w5;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/native;->do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    new-instance v0, Landroid/support/v4/td2;

    invoke-direct {v0}, Landroid/support/v4/td2;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v0, Landroid/support/v4/gh2;

    invoke-direct {v0}, Landroid/support/v4/gh2;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/native;->case:Landroid/support/v4/gh2;

    return-void
.end method

.method private const()Lorg/bouncycastle/asn1/x509/case;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->case:Landroid/support/v4/gh2;

    invoke-virtual {v0}, Landroid/support/v4/gh2;->new()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    iget-object v1, p0, Lorg/bouncycastle/x509/native;->case:Landroid/support/v4/gh2;

    invoke-virtual {v1}, Landroid/support/v4/gh2;->for()Landroid/support/v4/fh2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/td2;->catch(Landroid/support/v4/fh2;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    invoke-virtual {v0}, Landroid/support/v4/td2;->goto()Lorg/bouncycastle/asn1/x509/case;

    move-result-object v0

    return-object v0
.end method

.method private final(Lorg/bouncycastle/asn1/x509/case;[B)Ljava/security/cert/X509CRL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/native;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/jce/provider/protected;

    new-instance p2, Lorg/bouncycastle/asn1/x509/do;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/x509/do;-><init>(Lorg/bouncycastle/asn1/super;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/jce/provider/protected;-><init>(Lorg/bouncycastle/asn1/x509/do;)V

    return-object p1
.end method


# virtual methods
.method public break(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/native;->catch(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1
.end method

.method public case(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/native;->goto(Lorg/bouncycastle/asn1/catch;Z[B)V

    return-void
.end method

.method public catch(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/native;->const()Lorg/bouncycastle/asn1/x509/case;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/native;->for:Lorg/bouncycastle/asn1/catch;

    iget-object v1, p0, Lorg/bouncycastle/x509/native;->try:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/throw;->do(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v6, p1}, Lorg/bouncycastle/x509/native;->final(Lorg/bouncycastle/asn1/x509/case;[B)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/native$do;

    const-string p3, "cannot generate CRL encoding"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/x509/native$do;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public class(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/native;->const()Lorg/bouncycastle/asn1/x509/case;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/native;->for:Lorg/bouncycastle/asn1/catch;

    iget-object v2, p0, Lorg/bouncycastle/x509/native;->try:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lorg/bouncycastle/x509/throw;->if(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/native;->final(Lorg/bouncycastle/asn1/x509/case;[B)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/native$do;

    const-string v0, "cannot generate CRL encoding"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/x509/native$do;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public default(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v1, Landroid/support/v4/t62;

    invoke-direct {v1, p1}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/td2;->while(Landroid/support/v4/t62;)V

    return-void
.end method

.method public do(Ljava/security/cert/X509CRL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getRevokedCertificates()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    new-instance v1, Lorg/bouncycastle/asn1/else;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/td2;->try(Lorg/bouncycastle/asn1/super;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing encoding of CRL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public else(Lorg/bouncycastle/asn1/catch;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->case:Landroid/support/v4/gh2;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/gh2;->do(Lorg/bouncycastle/asn1/catch;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public for(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Landroid/support/v4/t62;

    invoke-direct {p1, p2}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    new-instance p2, Lorg/bouncycastle/asn1/case;

    invoke-direct {p2, p4}, Lorg/bouncycastle/asn1/case;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/support/v4/td2;->if(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;ILorg/bouncycastle/asn1/case;)V

    return-void
.end method

.method public goto(Lorg/bouncycastle/asn1/catch;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->case:Landroid/support/v4/gh2;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/gh2;->if(Lorg/bouncycastle/asn1/catch;Z[B)V

    return-void
.end method

.method public if(Ljava/math/BigInteger;Ljava/util/Date;I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Landroid/support/v4/t62;

    invoke-direct {p1, p2}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3}, Landroid/support/v4/td2;->do(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;I)V

    return-void
.end method

.method public import(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
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

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/x509/native;->while(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

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

.method public native()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/throw;->try()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public new(Ljava/math/BigInteger;Ljava/util/Date;Landroid/support/v4/fh2;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Landroid/support/v4/t62;

    invoke-direct {p1, p2}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    invoke-static {p3}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/td2;->for(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/t62;Landroid/support/v4/y90;)V

    return-void
.end method

.method public public()V
    .locals 1

    new-instance v0, Landroid/support/v4/td2;

    invoke-direct {v0}, Landroid/support/v4/td2;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->case:Landroid/support/v4/gh2;

    invoke-virtual {v0}, Landroid/support/v4/gh2;->try()V

    return-void
.end method

.method public return(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v1, Lorg/bouncycastle/jce/case;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/case;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/td2;->const(Lorg/bouncycastle/asn1/x509/goto;)V
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

.method public static(Lorg/bouncycastle/asn1/x509/goto;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    invoke-virtual {v0, p1}, Landroid/support/v4/td2;->const(Lorg/bouncycastle/asn1/x509/goto;)V

    return-void
.end method

.method public super(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
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

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/x509/native;->while(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

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

.method public switch(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    new-instance v1, Landroid/support/v4/t62;

    invoke-direct {v1, p1}, Landroid/support/v4/t62;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/td2;->final(Landroid/support/v4/t62;)V

    return-void
.end method

.method public this(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/x509/native;->class(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
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

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/native;->while(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1
.end method

.method public throws(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/x509/native;->try:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/throw;->case(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/native;->for:Lorg/bouncycastle/asn1/catch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/throw;->break(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/native;->new:Landroid/support/v4/b1;

    iget-object v0, p0, Lorg/bouncycastle/x509/native;->if:Landroid/support/v4/td2;

    invoke-virtual {v0, p1}, Landroid/support/v4/td2;->throw(Landroid/support/v4/b1;)V

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown signature type requested"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/native;->else(Lorg/bouncycastle/asn1/catch;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public while(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/native;->catch(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

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
