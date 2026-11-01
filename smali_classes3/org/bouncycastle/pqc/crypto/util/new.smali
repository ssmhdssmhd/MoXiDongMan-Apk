.class public Lorg/bouncycastle/pqc/crypto/util/new;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/a4;)Lorg/bouncycastle/asn1/x509/try;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/qi1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/qi1;

    invoke-virtual {p0}, Landroid/support/v4/qi1;->for()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/try;->if(I)Landroid/support/v4/b1;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p0}, Landroid/support/v4/qi1;->if()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/support/v4/br1;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v4/br1;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/yq1;

    invoke-virtual {p0}, Landroid/support/v4/zq1;->if()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/try;->new(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/yq1;-><init>(Landroid/support/v4/b1;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p0}, Landroid/support/v4/br1;->for()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Landroid/support/v4/s11;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/support/v4/s11;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p0}, Landroid/support/v4/s11;->if()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/private;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/private;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/gi2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/private;->for()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/fi2;->if()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/try;->case(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/gi2;-><init>(ILandroid/support/v4/b1;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    new-instance v2, Landroid/support/v4/pi2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/private;->new()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/private;->try()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/support/v4/pi2;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/static;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/ji2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->for()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->for()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/ii2;->if()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/util/try;->case(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/ji2;-><init>(IILandroid/support/v4/b1;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    new-instance v2, Landroid/support/v4/mi2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->new()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/static;->try()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/support/v4/mi2;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
