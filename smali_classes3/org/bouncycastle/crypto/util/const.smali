.class public Lorg/bouncycastle/crypto/util/const;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/const$if;,
        Lorg/bouncycastle/crypto/util/const$for;,
        Lorg/bouncycastle/crypto/util/const$new;,
        Lorg/bouncycastle/crypto/util/const$try;,
        Lorg/bouncycastle/crypto/util/const$case;,
        Lorg/bouncycastle/crypto/util/const$else;,
        Lorg/bouncycastle/crypto/util/const$goto;,
        Lorg/bouncycastle/crypto/util/const$this;,
        Lorg/bouncycastle/crypto/util/const$break;,
        Lorg/bouncycastle/crypto/util/const$catch;,
        Lorg/bouncycastle/crypto/util/const$class;,
        Lorg/bouncycastle/crypto/util/const$const;,
        Lorg/bouncycastle/crypto/util/const$final;,
        Lorg/bouncycastle/crypto/util/const$super;
    }
.end annotation


# static fields
.field private static do:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$class;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$class;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$class;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$class;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$class;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$class;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$for;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$for;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$if;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$if;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$new;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$new;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$new;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$new;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$this;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$this;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$case;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$case;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$break;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$break;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$catch;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$catch;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$catch;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$catch;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145be:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$try;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$try;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$try;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$try;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$final;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$final;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$super;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$super;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$else;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$else;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/crypto/util/const$goto;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/util/const$goto;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static case(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;I)[B
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object p0

    array-length p1, p0

    if-ne p2, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "public key encoding has incorrect length"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;I)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/util/const;->case(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/util/const;->new(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/io/InputStream;)Landroid/support/v4/a4;
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

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/const;->do:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/util/const$const;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/crypto/util/const$const;->do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try([B)Landroid/support/v4/a4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/const;->for(Lorg/bouncycastle/asn1/x509/try;)Landroid/support/v4/a4;

    move-result-object p0

    return-object p0
.end method
