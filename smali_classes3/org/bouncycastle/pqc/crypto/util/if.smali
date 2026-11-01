.class public Lorg/bouncycastle/pqc/crypto/util/if;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/a4;)Lorg/bouncycastle/asn1/pkcs/do;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/if;->if(Landroid/support/v4/a4;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    return-object p0
.end method

.method private static for(Lorg/bouncycastle/pqc/crypto/xmss/package;)Landroid/support/v4/oi2;
    .locals 13

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->case()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->case()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->if([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v8

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v9

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    array-length p0, v0

    sub-int/2addr p0, v3

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v12

    new-instance p0, Landroid/support/v4/oi2;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Landroid/support/v4/oi2;-><init>(I[B[B[B[B[B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Landroid/support/v4/a4;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/pkcs/do;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/pi1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/pi1;

    invoke-virtual {p0}, Landroid/support/v4/pi1;->for()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/try;->if(I)Landroid/support/v4/b1;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Landroid/support/v4/pi1;->if()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;)V

    return-object v1

    :cond_0
    instance-of p1, p0, Landroid/support/v4/ar1;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/support/v4/ar1;

    new-instance p1, Landroid/support/v4/b1;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Landroid/support/v4/yq1;

    invoke-virtual {p0}, Landroid/support/v4/zq1;->if()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/try;->new(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/yq1;-><init>(Landroid/support/v4/b1;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Landroid/support/v4/ar1;->for()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_1
    instance-of p1, p0, Landroid/support/v4/r11;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/support/v4/r11;

    new-instance p1, Landroid/support/v4/b1;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {p0}, Landroid/support/v4/r11;->if()[S

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Landroid/support/v4/ib1;->continue(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_3
    instance-of p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;

    if-eqz p1, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/package;

    new-instance p1, Landroid/support/v4/b1;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Landroid/support/v4/gi2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->case()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/fi2;->if()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/try;->case(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/gi2;-><init>(ILandroid/support/v4/b1;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/if;->for(Lorg/bouncycastle/pqc/crypto/xmss/package;)Landroid/support/v4/oi2;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_4
    instance-of p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;

    if-eqz p1, :cond_5

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/return;

    new-instance p1, Landroid/support/v4/b1;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Landroid/support/v4/ji2;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->case()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->case()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/ii2;->if()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/try;->case(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v4/ji2;-><init>(IILandroid/support/v4/b1;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/if;->new(Lorg/bouncycastle/pqc/crypto/xmss/return;)Landroid/support/v4/li2;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static new(Lorg/bouncycastle/pqc/crypto/xmss/return;)Landroid/support/v4/li2;
    .locals 13

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->case()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->case()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result p0

    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->if([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/2addr v2, v3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v11

    add-int/2addr v2, v1

    array-length p0, v0

    sub-int/2addr p0, v2

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v12

    new-instance p0, Landroid/support/v4/li2;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Landroid/support/v4/li2;-><init>(I[B[B[B[B[B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
