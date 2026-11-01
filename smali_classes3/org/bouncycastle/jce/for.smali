.class public Lorg/bouncycastle/jce/for;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do(Lorg/bouncycastle/asn1/catch;[BI[C[BLjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v0, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p4}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public static for([B[CLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/support/v4/id1;->try(Ljava/lang/Object;)Landroid/support/v4/id1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/id1;->new()Landroid/support/v4/er;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/er;->new()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/l;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/l;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lorg/bouncycastle/asn1/else;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/else;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/l;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/er;

    invoke-virtual {v0}, Landroid/support/v4/er;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    new-instance v4, Lorg/bouncycastle/asn1/j;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, v0, v4}, Landroid/support/v4/er;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Landroid/support/v4/id1;->case()Landroid/support/v4/yw0;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/yw0;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v1}, Landroid/support/v4/er;->new()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v8

    invoke-virtual {p0}, Landroid/support/v4/yw0;->case()Landroid/support/v4/v00;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/v00;->new()Landroid/support/v4/b1;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/yw0;->else()[B

    move-result-object v5

    move v6, v0

    move-object v7, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/jce/for;->do(Lorg/bouncycastle/asn1/catch;[BI[C[BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Landroid/support/v4/b1;

    invoke-virtual {p0}, Landroid/support/v4/yw0;->case()Landroid/support/v4/v00;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/v00;->new()Landroid/support/v4/b1;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {p2, v4, v5}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Landroid/support/v4/v00;

    invoke-direct {v4, p2, p1}, Landroid/support/v4/v00;-><init>(Landroid/support/v4/b1;[B)V

    new-instance p1, Landroid/support/v4/yw0;

    invoke-virtual {p0}, Landroid/support/v4/yw0;->else()[B

    move-result-object p0

    invoke-direct {p1, v4, p0, v0}, Landroid/support/v4/yw0;-><init>(Landroid/support/v4/v00;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Landroid/support/v4/id1;

    invoke-direct {p0, v1, p1}, Landroid/support/v4/id1;-><init>(Landroid/support/v4/er;Landroid/support/v4/yw0;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v3, p0}, Lorg/bouncycastle/asn1/l;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error constructing MAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static if([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/l;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/l;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0}, Landroid/support/v4/id1;->try(Ljava/lang/Object;)Landroid/support/v4/id1;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/l;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
