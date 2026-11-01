.class public Lorg/bouncycastle/crypto/util/class;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/util/class;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/class;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/class;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/class;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/class;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

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

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/util/class;->if(Landroid/support/v4/a4;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    return-object p0
.end method

.method private static for([BIILjava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    array-length v2, p3

    sub-int v2, p1, v2

    array-length v3, p3

    invoke-static {p3, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    :goto_0
    if-eq v1, p1, :cond_1

    add-int v0, p2, v1

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p3, v2

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static if(Landroid/support/v4/a4;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/pkcs/do;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/ck1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/dk1;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Landroid/support/v4/ek1;

    invoke-virtual {p0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/dk1;->goto()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v4/dk1;->else()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Landroid/support/v4/dk1;->this()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0}, Landroid/support/v4/dk1;->try()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0}, Landroid/support/v4/dk1;->case()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p0}, Landroid/support/v4/dk1;->break()Ljava/math/BigInteger;

    move-result-object v12

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/support/v4/ek1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/support/v4/jv;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v4/jv;

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v2, Landroid/support/v4/b1;

    sget-object v3, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/catch;

    new-instance v4, Landroid/support/v4/fv;

    invoke-virtual {v0}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/hv;->for()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/hv;->do()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Landroid/support/v4/fv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/jv;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v0, p1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Landroid/support/v4/h50;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/support/v4/h50;

    invoke-virtual {p0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v2, Landroid/support/v4/rh2;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v2, v3}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/this;)V

    invoke-virtual {p0}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    goto/16 :goto_4

    :cond_2
    instance-of v2, v0, Landroid/support/v4/l40;

    if-eqz v2, :cond_7

    new-instance p1, Landroid/support/v4/cg0;

    check-cast v0, Landroid/support/v4/l40;

    invoke-virtual {v0}, Landroid/support/v4/l40;->catch()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/l40;->this()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/l40;->break()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Landroid/support/v4/cg0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    sget-object v0, Lorg/bouncycastle/crypto/util/class;->do:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/catch;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x100

    if-le v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    sget-object v3, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    goto :goto_2

    :cond_5
    sget-object v3, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    :goto_2
    if-eqz v0, :cond_6

    const/16 v0, 0x40

    const/16 v2, 0x40

    :cond_6
    move-object v0, v3

    :goto_3
    new-array v3, v2, [B

    invoke-virtual {p0}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v3, v2, v1, p0}, Lorg/bouncycastle/crypto/util/class;->for([BIILjava/math/BigInteger;)V

    new-instance p0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Landroid/support/v4/b1;

    invoke-direct {v1, v0, p1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_7
    instance-of v2, v0, Landroid/support/v4/b50;

    if-eqz v2, :cond_8

    new-instance v2, Landroid/support/v4/rh2;

    move-object v3, v0

    check-cast v3, Landroid/support/v4/b50;

    invoke-virtual {v3}, Landroid/support/v4/b50;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_8
    new-instance v2, Landroid/support/v4/th2;

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Landroid/support/v4/e40;->case()[B

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Landroid/support/v4/rh2;

    invoke-direct {v3, v2}, Landroid/support/v4/rh2;-><init>(Landroid/support/v4/th2;)V

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move-object v13, v3

    move v3, v2

    move-object v2, v13

    :goto_4
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v5, Landroid/support/v4/b1;

    sget-object v6, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v5, v6, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Landroid/support/v4/g50;

    invoke-virtual {p0}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object p0

    invoke-direct {v8, p0}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    invoke-direct {v6, v3, v7, v8, v2}, Landroid/support/v4/g50;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5, v6, p1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;)V

    return-object v4

    :cond_9
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/this;

    if-eqz v0, :cond_a

    check-cast p0, Lorg/bouncycastle/crypto/params/this;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/this;->try()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/this;->for()Lorg/bouncycastle/crypto/params/break;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/break;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V

    return-object v0

    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/else;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/crypto/params/else;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/else;->try()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/else;->for()Lorg/bouncycastle/crypto/params/goto;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/goto;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/new;

    if-eqz v0, :cond_c

    check-cast p0, Lorg/bouncycastle/crypto/params/new;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/new;->new()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/new;->for()Lorg/bouncycastle/crypto/params/try;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/try;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/if;

    if-eqz v0, :cond_d

    check-cast p0, Lorg/bouncycastle/crypto/params/if;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/if;->new()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/if;->for()Lorg/bouncycastle/crypto/params/for;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/for;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;[B)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method
