.class public Lorg/bouncycastle/jce/new;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/jce/case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getTBSCertList()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/case;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/case;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jce/case;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/case;->else()Landroid/support/v4/tg2;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/goto;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/goto;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/case;-><init>(Lorg/bouncycastle/asn1/x509/goto;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static for(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/x32;->case(Ljava/lang/Object;)Landroid/support/v4/x32;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jce/case;

    invoke-virtual {p0}, Landroid/support/v4/x32;->const()Landroid/support/v4/tg2;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/goto;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/goto;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/case;-><init>(Lorg/bouncycastle/asn1/x509/goto;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static if(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/x32;->case(Ljava/lang/Object;)Landroid/support/v4/x32;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jce/case;

    invoke-virtual {p0}, Landroid/support/v4/x32;->goto()Landroid/support/v4/tg2;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/goto;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/goto;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/case;-><init>(Lorg/bouncycastle/asn1/x509/goto;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
