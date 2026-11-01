.class public Landroid/support/v4/mr0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Landroid/support/v4/mr0;->if(Lorg/bouncycastle/asn1/pkcs/do;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static for(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Landroid/support/v4/mr0;->try(Lorg/bouncycastle/asn1/x509/try;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static if(Lorg/bouncycastle/asn1/pkcs/do;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Landroid/support/v4/b1;[B)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    invoke-static {v0}, Landroid/support/v4/mr0;->try(Lorg/bouncycastle/asn1/x509/try;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/x509/try;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
