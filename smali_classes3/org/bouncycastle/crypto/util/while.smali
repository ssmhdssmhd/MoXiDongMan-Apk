.class public Lorg/bouncycastle/crypto/util/while;
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

    sput-object v0, Lorg/bouncycastle/crypto/util/while;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/while;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/while;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/while;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/while;->do:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/a4;)Lorg/bouncycastle/asn1/x509/try;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/ck1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ck1;

    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Landroid/support/v4/gk1;

    invoke-virtual {p0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/support/v4/gk1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/support/v4/kv;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Landroid/support/v4/kv;

    invoke-virtual {p0}, Landroid/support/v4/ev;->if()Landroid/support/v4/hv;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/fv;

    invoke-virtual {v0}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/hv;->for()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/hv;->do()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Landroid/support/v4/fv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v2, Landroid/support/v4/b1;

    sget-object v3, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v2, v3, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/kv;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Landroid/support/v4/k50;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/support/v4/k50;

    invoke-virtual {p0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/rh2;

    sget-object v1, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/this;)V

    goto/16 :goto_2

    :cond_3
    instance-of v2, v0, Landroid/support/v4/l40;

    if-eqz v2, :cond_7

    check-cast v0, Landroid/support/v4/l40;

    invoke-virtual {p0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v3, Landroid/support/v4/cg0;

    invoke-virtual {v0}, Landroid/support/v4/l40;->catch()Lorg/bouncycastle/asn1/catch;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/l40;->this()Lorg/bouncycastle/asn1/catch;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/support/v4/cg0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    sget-object v4, Lorg/bouncycastle/crypto/util/while;->do:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/support/v4/l40;->catch()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/16 v6, 0x40

    if-eqz v0, :cond_4

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/catch;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v7, 0x100

    if-le v0, v7, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const/16 v0, 0x80

    sget-object v5, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    move-object v0, v5

    const/16 v5, 0x40

    const/16 v6, 0x80

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    :goto_1
    new-array v7, v6, [B

    div-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6, v4, v2}, Lorg/bouncycastle/crypto/util/while;->if([BIILjava/math/BigInteger;)V

    invoke-static {v7, v6, v5, p0}, Lorg/bouncycastle/crypto/util/while;->if([BIILjava/math/BigInteger;)V

    :try_start_0
    new-instance p0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v2, Landroid/support/v4/b1;

    invoke-direct {v2, v0, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, v7}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_7
    instance-of v1, v0, Landroid/support/v4/b50;

    if-eqz v1, :cond_8

    new-instance v1, Landroid/support/v4/rh2;

    check-cast v0, Landroid/support/v4/b50;

    invoke-virtual {v0}, Landroid/support/v4/b50;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/catch;)V

    move-object v0, v1

    goto :goto_2

    :cond_8
    new-instance v1, Landroid/support/v4/th2;

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/e40;->case()[B

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v0, Landroid/support/v4/rh2;

    invoke-direct {v0, v1}, Landroid/support/v4/rh2;-><init>(Landroid/support/v4/th2;)V

    :goto_2
    new-instance v1, Landroid/support/v4/vh2;

    invoke-virtual {p0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/new;)V

    invoke-virtual {v1}, Landroid/support/v4/vh2;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/class;

    new-instance v1, Lorg/bouncycastle/asn1/x509/try;

    new-instance v2, Landroid/support/v4/b1;

    sget-object v3, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v2, v3, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v1

    :cond_9
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/break;

    if-eqz v0, :cond_a

    check-cast p0, Lorg/bouncycastle/crypto/params/break;

    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/break;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v0

    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/goto;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/crypto/params/goto;

    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/goto;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/try;

    if-eqz v0, :cond_c

    check-cast p0, Lorg/bouncycastle/crypto/params/try;

    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/try;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/for;

    if-eqz v0, :cond_d

    check-cast p0, Lorg/bouncycastle/crypto/params/for;

    new-instance v0, Lorg/bouncycastle/asn1/x509/try;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/for;->for()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;[B)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static if([BIILjava/math/BigInteger;)V
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
