.class public Lorg/bouncycastle/crypto/util/catch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/io/InputStream;)Landroid/support/v4/a4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/catch;->if(Lorg/bouncycastle/asn1/pkcs/do;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static for([B)Landroid/support/v4/a4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/catch;->if(Lorg/bouncycastle/asn1/pkcs/do;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lorg/bouncycastle/asn1/pkcs/do;)Landroid/support/v4/a4;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/nu;->try(Ljava/lang/Object;)Landroid/support/v4/nu;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Landroid/support/v4/nu;->case()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    :goto_0
    new-instance v1, Landroid/support/v4/ou;

    invoke-virtual {v0}, Landroid/support/v4/nu;->else()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/nu;->new()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, Landroid/support/v4/pu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/pu;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    return-object v0

    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j60;->try(Ljava/lang/Object;)Landroid/support/v4/j60;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/goto;

    new-instance v1, Landroid/support/v4/m60;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Landroid/support/v4/l60;

    invoke-virtual {v0}, Landroid/support/v4/j60;->case()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/j60;->new()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, Landroid/support/v4/m60;-><init>(Ljava/math/BigInteger;Landroid/support/v4/l60;)V

    return-object v1

    :cond_3
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/fv;->try(Ljava/lang/Object;)Landroid/support/v4/fv;

    move-result-object v0

    new-instance v3, Landroid/support/v4/hv;

    invoke-virtual {v0}, Landroid/support/v4/fv;->else()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/fv;->goto()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/fv;->new()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_4
    new-instance v0, Landroid/support/v4/jv;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Landroid/support/v4/jv;-><init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V

    return-object v0

    :cond_5
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/support/v4/rh2;

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/final;

    invoke-direct {v1, v0}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/final;)V

    invoke-virtual {v1}, Landroid/support/v4/rh2;->goto()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/catch;

    invoke-static {v2}, Lorg/bouncycastle/crypto/ec/do;->this(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v2}, Landroid/support/v4/a50;->new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    :cond_6
    new-instance v8, Landroid/support/v4/b50;

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/th2;->class()[B

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/th2;->break(Ljava/lang/Object;)Landroid/support/v4/th2;

    move-result-object v0

    new-instance v8, Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/th2;->class()[B

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/g50;->new(Ljava/lang/Object;)Landroid/support/v4/g50;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/g50;->try()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Landroid/support/v4/h50;

    invoke-direct {v0, p0, v8}, Landroid/support/v4/h50;-><init>(Ljava/math/BigInteger;Landroid/support/v4/e40;)V

    return-object v0

    :cond_8
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_9

    new-instance v0, Lorg/bouncycastle/crypto/params/else;

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/util/catch;->new(Lorg/bouncycastle/asn1/pkcs/do;I)[B

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lorg/bouncycastle/crypto/params/else;-><init>([BI)V

    return-object v0

    :cond_9
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/bouncycastle/crypto/params/this;

    const/16 v1, 0x38

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/util/catch;->new(Lorg/bouncycastle/asn1/pkcs/do;I)[B

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lorg/bouncycastle/crypto/params/this;-><init>([BI)V

    return-object v0

    :cond_a
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lorg/bouncycastle/crypto/params/if;

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/util/catch;->new(Lorg/bouncycastle/asn1/pkcs/do;I)[B

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lorg/bouncycastle/crypto/params/if;-><init>([BI)V

    return-object v0

    :cond_b
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lorg/bouncycastle/crypto/params/new;

    const/16 v1, 0x39

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/util/catch;->new(Lorg/bouncycastle/asn1/pkcs/do;I)[B

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lorg/bouncycastle/crypto/params/new;-><init>([BI)V

    return-object v0

    :cond_c
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/cg0;->case(Ljava/lang/Object;)Landroid/support/v4/cg0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    instance-of v5, v1, Lorg/bouncycastle/asn1/super;

    if-eqz v5, :cond_12

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_12

    :cond_f
    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j40;->if(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v1

    new-instance v2, Landroid/support/v4/l40;

    new-instance v3, Landroid/support/v4/b50;

    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/e40;)V

    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/cg0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/cg0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v6

    invoke-direct {v2, v3, v1, v5, v6}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    instance-of v1, p0, Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_10

    invoke-static {p0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_7

    :cond_10
    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    array-length v1, p0

    new-array v1, v1, [B

    :goto_3
    array-length v3, p0

    const/4 v5, 0x1

    if-eq v4, v3, :cond_11

    array-length v3, p0

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    goto/16 :goto_7

    :cond_12
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/rh2;->new(Ljava/lang/Object;)Landroid/support/v4/rh2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/rh2;->goto()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/a50;->new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-static {v3}, Landroid/support/v4/j40;->if(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v1

    new-instance v9, Landroid/support/v4/l40;

    new-instance v10, Landroid/support/v4/b50;

    invoke-virtual {v1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/v4/e40;->case()[B

    move-result-object v8

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/cg0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/cg0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-direct {v9, v10, v1, v2, v3}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    goto :goto_4

    :cond_13
    new-instance v9, Landroid/support/v4/l40;

    new-instance v10, Landroid/support/v4/b50;

    invoke-virtual {v1}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/v4/th2;->class()[B

    move-result-object v8

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/cg0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/cg0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-direct {v9, v10, v1, v2, v3}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    :goto_4
    move-object v3, v9

    goto :goto_5

    :cond_14
    invoke-virtual {v1}, Landroid/support/v4/rh2;->else()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v1}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/th2;->break(Ljava/lang/Object;)Landroid/support/v4/th2;

    move-result-object v1

    new-instance v8, Landroid/support/v4/l40;

    new-instance v9, Landroid/support/v4/b50;

    invoke-virtual {v1}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Landroid/support/v4/th2;->class()[B

    move-result-object v7

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/cg0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/cg0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-direct {v8, v9, v1, v2, v3}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    move-object v3, v8

    :goto_5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    instance-of v1, p0, Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_16

    invoke-static {p0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_6

    :cond_16
    invoke-static {p0}, Landroid/support/v4/g50;->new(Ljava/lang/Object;)Landroid/support/v4/g50;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/g50;->try()Ljava/math/BigInteger;

    move-result-object p0

    :goto_6
    move-object v2, v3

    :goto_7
    new-instance v1, Landroid/support/v4/h50;

    new-instance v3, Landroid/support/v4/l40;

    invoke-virtual {v0}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/cg0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/cg0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-direct {v3, v2, v4, v5, v0}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    invoke-direct {v1, p0, v3}, Landroid/support/v4/h50;-><init>(Ljava/math/BigInteger;Landroid/support/v4/e40;)V

    return-object v1

    :cond_17
    :goto_8
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ek1;->else(Ljava/lang/Object;)Landroid/support/v4/ek1;

    move-result-object p0

    new-instance v9, Landroid/support/v4/dk1;

    invoke-virtual {p0}, Landroid/support/v4/ek1;->this()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/ek1;->const()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/ek1;->class()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/ek1;->break()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/ek1;->catch()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/ek1;->try()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v4/ek1;->case()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v4/ek1;->new()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/dk1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method private static new(Lorg/bouncycastle/asn1/pkcs/do;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    array-length v0, p0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "private key encoding has incorrect length"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
