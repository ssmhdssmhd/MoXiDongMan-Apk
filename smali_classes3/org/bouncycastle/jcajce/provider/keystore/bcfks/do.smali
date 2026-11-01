.class Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$if;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$for;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$try;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$case;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$else;
    }
.end annotation


# static fields
.field private static final class:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/asn1/catch;",
            ">;"
        }
    .end annotation
.end field

.field private static final const:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/catch;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final final:Ljava/math/BigInteger;

.field private static final import:Ljava/math/BigInteger;

.field private static final super:Ljava/math/BigInteger;

.field private static final throw:Ljava/math/BigInteger;

.field private static final while:Ljava/math/BigInteger;


# instance fields
.field private break:Ljava/util/Date;

.field private case:Landroid/support/v4/b1;

.field private catch:Lorg/bouncycastle/asn1/catch;

.field private do:Ljava/security/PublicKey;

.field private else:Landroid/support/v4/xq0;

.field private final for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private goto:Landroid/support/v4/b1;

.field private if:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

.field private final new:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/o51;",
            ">;"
        }
    .end annotation
.end field

.field private this:Ljava/util/Date;

.field private final try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->class:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const:Ljava/util/Map;

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/bouncycastle/asn1/catch;

    const-string v3, "DESEDE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TRIPLEDES"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TDEA"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/catch;

    const-string v3, "HMACSHA1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/catch;

    const-string v3, "HMACSHA224"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/catch;

    const-string v3, "HMACSHA256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/catch;

    const-string v3, "HMACSHA384"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    const-string v3, "HMACSHA512"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/catch;

    const-string v3, "SEED"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/bouncycastle/asn1/catch;

    const-string v3, "CAMELLIA.128"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/bouncycastle/asn1/catch;

    const-string v3, "CAMELLIA.192"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/bouncycastle/asn1/catch;

    const-string v3, "CAMELLIA.256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria128_cbc:Lorg/bouncycastle/asn1/catch;

    const-string v3, "ARIA.128"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria192_cbc:Lorg/bouncycastle/asn1/catch;

    const-string v3, "ARIA.192"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/nsri/NSRIObjectIdentifiers;->id_aria256_cbc:Lorg/bouncycastle/asn1/catch;

    const-string v3, "ARIA.256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/catch;

    const-string v2, "RSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    const-string v2, "EC"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/catch;

    const-string v2, "DH"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/catch;

    const-string v2, "DSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->throw:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->import:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method private break(Landroid/support/v4/u91;I)Landroid/support/v4/xq0;
    .locals 8

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Landroid/support/v4/u91;->do()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/util/throw;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->try()I

    move-result v1

    new-array v3, v1, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Landroid/support/v4/os1;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->for()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->if()I

    move-result v5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->new()I

    move-result v6

    move-object v2, v1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/os1;-><init>([BIIII)V

    new-instance p1, Landroid/support/v4/xq0;

    invoke-direct {p1, v0, v1}, Landroid/support/v4/xq0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/util/break;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/break;->new()I

    move-result v0

    new-array v0, v0, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Landroid/support/v4/xq0;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    new-instance v3, Landroid/support/v4/t91;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/break;->if()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/break;->for()Landroid/support/v4/b1;

    move-result-object p1

    invoke-direct {v3, v0, v4, p2, p1}, Landroid/support/v4/t91;-><init>([BIILandroid/support/v4/b1;)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/xq0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method private case(Landroid/support/v4/o51;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/o51;->try()Lorg/bouncycastle/asn1/case;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/case;->const()Ljava/util/Date;

    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method private catch(Lorg/bouncycastle/asn1/catch;I)Landroid/support/v4/xq0;
    .locals 7

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Landroid/support/v4/xq0;

    new-instance v2, Landroid/support/v4/t91;

    const v3, 0xc800

    new-instance v4, Landroid/support/v4/b1;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    sget-object v6, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v4, v5, v6}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v0, v3, p2, v4}, Landroid/support/v4/t91;-><init>([BIILandroid/support/v4/b1;)V

    invoke-direct {p1, v1, v2}, Landroid/support/v4/xq0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown derivation algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private class(Ljava/security/Key;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;)Landroid/support/v4/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    if-ne p2, v0, :cond_1

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, p2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object p1

    :cond_1
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA3_512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    if-ne p2, v0, :cond_2

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, p2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    if-ne p2, v0, :cond_3

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, p2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object p1

    :cond_3
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA3_512withDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    if-ne p2, v0, :cond_4

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, p2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object p1

    :cond_4
    instance-of p1, p1, Ljava/security/interfaces/RSAKey;

    if-eqz p1, :cond_6

    sget-object p1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    if-ne p2, p1, :cond_5

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {p1, p2, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1

    :cond_5
    sget-object p1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA3_512withRSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    if-ne p2, p1, :cond_6

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {p1, p2, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown signature algorithm"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private const()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private do([BLandroid/support/v4/b1;Landroid/support/v4/xq0;[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "INTEGRITY_CHECK"

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    new-array p4, p4, [C

    :goto_0
    const/4 v3, -0x1

    invoke-direct {p0, p3, v2, p4, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto(Landroid/support/v4/xq0;Ljava/lang/String;[CI)[B

    move-result-object p3

    invoke-direct {v1, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot set up MAC calculation: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private else(Ljava/security/KeyStore$LoadStoreParameter;)[C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object p1

    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    const-string v1, "password: "

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljavax/security/auth/callback/Callback;

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object p1
    :try_end_0
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasswordCallback not recognised: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/security/auth/callback/UnsupportedCallbackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for protection parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final(Landroid/support/v4/b1;[C)Landroid/support/v4/l70;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/o51;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/o51;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this(Landroid/support/v4/xq0;I)Landroid/support/v4/xq0;

    move-result-object v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [C

    :goto_0
    const-string v3, "STORE_ENCRYPTION"

    invoke-direct {p0, v1, v3, p2, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto(Landroid/support/v4/xq0;Ljava/lang/String;[CI)[B

    move-result-object p2

    new-instance v8, Landroid/support/v4/u51;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    new-instance v6, Landroid/support/v4/p51;

    invoke-direct {v6, v0}, Landroid/support/v4/p51;-><init>([Landroid/support/v4/o51;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/u51;-><init>(Landroid/support/v4/b1;Ljava/util/Date;Ljava/util/Date;Landroid/support/v4/p51;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AES/CCM/NoPadding"

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p1

    new-instance v2, Landroid/support/v4/m91;

    new-instance v3, Landroid/support/v4/u70;

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/me;->try(Ljava/lang/Object;)Landroid/support/v4/me;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v1, v3}, Landroid/support/v4/m91;-><init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V

    new-instance p1, Landroid/support/v4/l70;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p1, v0, p2}, Landroid/support/v4/l70;-><init>(Landroid/support/v4/b1;[B)V

    goto :goto_1

    :cond_1
    const-string p1, "AESKWP"

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Landroid/support/v4/m91;

    new-instance v0, Landroid/support/v4/u70;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v2}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-direct {p2, v1, v0}, Landroid/support/v4/m91;-><init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V

    new-instance v0, Landroid/support/v4/l70;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2, p2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, p1}, Landroid/support/v4/l70;-><init>(Landroid/support/v4/b1;[B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private for(Landroid/support/v4/o70;[Ljava/security/cert/Certificate;)Landroid/support/v4/n70;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [Landroid/support/v4/rg;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/support/v4/n70;

    invoke-direct {p2, p1, v0}, Landroid/support/v4/n70;-><init>(Landroid/support/v4/o70;[Landroid/support/v4/rg;)V

    return-object p2
.end method

.method private goto(Landroid/support/v4/xq0;Ljava/lang/String;[CI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Landroid/support/v4/l91;->do([C)[B

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/l91;->do([C)[B

    move-result-object p2

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Landroid/support/v4/xq0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/os1;->case(Ljava/lang/Object;)Landroid/support/v4/os1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/os1;->else()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/os1;->else()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    goto :goto_0

    :cond_0
    if-eq p4, v1, :cond_1

    :goto_0
    move v5, p4

    invoke-static {p3, p2}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/os1;->this()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/os1;->try()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/os1;->new()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/os1;->new()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/tp1;->this([B[BIIII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no keyLength found in ScryptParams"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/xq0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t91;->new(Ljava/lang/Object;)Landroid/support/v4/t91;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/t91;->case()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/t91;->case()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    goto :goto_1

    :cond_3
    if-eq p4, v1, :cond_6

    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/t91;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v4/ja1;

    new-instance v1, Landroid/support/v4/bq1;

    invoke-direct {v1}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v4/ja1;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-static {p3, p2}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/t91;->goto()[B

    move-result-object p3

    invoke-virtual {p1}, Landroid/support/v4/t91;->try()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/support/v4/l91;->break([B[BI)V

    mul-int/lit8 p4, p4, 0x8

    invoke-virtual {v0, p4}, Landroid/support/v4/ja1;->try(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/gr0;

    invoke-virtual {p1}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/t91;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/support/v4/ja1;

    new-instance v1, Landroid/support/v4/aq1;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Landroid/support/v4/aq1;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/support/v4/ja1;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-static {p3, p2}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/t91;->goto()[B

    move-result-object p3

    invoke-virtual {p1}, Landroid/support/v4/t91;->try()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/support/v4/l91;->break([B[BI)V

    mul-int/lit8 p4, p4, 0x8

    invoke-virtual {v0, p4}, Landroid/support/v4/ja1;->try(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/gr0;

    invoke-virtual {p1}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BCFKS KeyStore: unrecognized MAC PBKD PRF: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/t91;->else()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no keyLength found in PBKDF2Params"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore: unrecognized MAC PBKD."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object p1
.end method

.method private import(Lorg/bouncycastle/asn1/ASN1Encodable;Landroid/support/v4/zx1;Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p2}, Landroid/support/v4/zx1;->else()Landroid/support/v4/b1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    const-string p3, "DER"

    invoke-virtual {p1, p3}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p2}, Landroid/support/v4/zx1;->case()Lorg/bouncycastle/asn1/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore corrupted: signature calculation failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private new(Ljava/lang/Object;)Ljava/security/cert/Certificate;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v1, 0x0

    const-string v2, "X.509"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v1
.end method

.method private static super(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private this(Landroid/support/v4/xq0;I)Landroid/support/v4/xq0;
    .locals 8

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Landroid/support/v4/xq0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/os1;->case(Ljava/lang/Object;)Landroid/support/v4/os1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/os1;->this()[B

    move-result-object v1

    array-length v1, v1

    new-array v3, v1, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Landroid/support/v4/os1;

    invoke-virtual {p1}, Landroid/support/v4/os1;->try()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/os1;->new()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/os1;->goto()Ljava/math/BigInteger;

    move-result-object v6

    int-to-long p1, p2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/os1;-><init>([BLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p1, Landroid/support/v4/xq0;

    invoke-direct {p1, v0, v1}, Landroid/support/v4/xq0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/support/v4/t91;->new(Ljava/lang/Object;)Landroid/support/v4/t91;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/t91;->goto()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->const()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Landroid/support/v4/t91;

    invoke-virtual {p1}, Landroid/support/v4/t91;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/t91;->else()Landroid/support/v4/b1;

    move-result-object p1

    invoke-direct {v1, v0, v2, p2, p1}, Landroid/support/v4/t91;-><init>([BIILandroid/support/v4/b1;)V

    new-instance p1, Landroid/support/v4/xq0;

    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, p2, v1}, Landroid/support/v4/xq0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p1
.end method

.method private throw(Landroid/support/v4/u91;Landroid/support/v4/xq0;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v4/u91;->do()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/xq0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p2}, Landroid/support/v4/xq0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/bouncycastle/crypto/util/throw;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/util/throw;

    invoke-virtual {p2}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/os1;->case(Ljava/lang/Object;)Landroid/support/v4/os1;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->try()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/os1;->this()[B

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->if()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/os1;->new()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->for()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/os1;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/throw;->new()I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v4/os1;->goto()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_5

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/crypto/util/break;

    if-nez v0, :cond_4

    return v1

    :cond_4
    check-cast p1, Lorg/bouncycastle/crypto/util/break;

    invoke-virtual {p2}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/t91;->new(Ljava/lang/Object;)Landroid/support/v4/t91;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/break;->new()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/t91;->goto()[B

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/break;->if()I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v4/t91;->try()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method private try(Ljava/lang/String;Landroid/support/v4/b1;[C[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/m91;->try(Ljava/lang/Object;)Landroid/support/v4/m91;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/m91;->new()Landroid/support/v4/u70;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/u70;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "AES/CCM/NoPadding"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v3, "CCM"

    invoke-interface {v2, v3}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/u70;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/me;->try(Ljava/lang/Object;)Landroid/support/v4/me;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/u70;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "AESKWP"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/support/v4/m91;->case()Landroid/support/v4/xq0;

    move-result-object p2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    new-array p3, p3, [C

    :goto_1
    const/16 v0, 0x20

    invoke-direct {p0, p2, p1, p3, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto(Landroid/support/v4/xq0;Ljava/lang/String;[CI)[B

    move-result-object p1

    const/4 p2, 0x2

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p2, p3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore cannot recognize protection encryption algorithm."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore cannot recognize protection algorithm."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private while([BLandroid/support/v4/yc1;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/support/v4/yc1;->case()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/yc1;->else()Landroid/support/v4/xq0;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->do([BLandroid/support/v4/b1;Landroid/support/v4/xq0;[C)[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/yc1;->try()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore corrupted: MAC calculation failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$do;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$do;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "alias value is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o51;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/o51;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/o51;->case()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/o51;->case()[B

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/n70;->case(Ljava/lang/Object;)Landroid/support/v4/n70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/n70;->new()[Landroid/support/v4/rg;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/o51;

    invoke-virtual {v3}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v4/o51;->case()[B

    move-result-object v3

    invoke-static {v3, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/support/v4/o51;->case()[B

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/n70;->case(Ljava/lang/Object;)Landroid/support/v4/n70;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/n70;->new()[Landroid/support/v4/rg;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/v4/rg;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    return-object v2

    :catch_0
    nop

    goto :goto_0

    :catch_1
    :cond_4
    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/o51;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/o51;->case()[B

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/n70;->case(Ljava/lang/Object;)Landroid/support/v4/n70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/n70;->new()[Landroid/support/v4/rg;

    move-result-object p1

    array-length v0, p1

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/o51;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/o51;->this()Lorg/bouncycastle/asn1/case;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/case;->const()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o51;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "): "

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->throw:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "BCFKS KeyStore unable to recover secret key ("

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->import:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/security/UnrecoverableKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): type not recognized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/o51;->case()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p70;->try(Ljava/lang/Object;)Landroid/support/v4/p70;

    move-result-object v0

    :try_start_0
    const-string v1, "SECRET_KEY_ENCRYPTION"

    invoke-virtual {v0}, Landroid/support/v4/p70;->case()Landroid/support/v4/b1;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/p70;->new()[B

    move-result-object v0

    invoke-direct {p0, v1, v4, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try(Ljava/lang/String;Landroid/support/v4/b1;[C[B)[B

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/kw1;->new(Ljava/lang/Object;)Landroid/support/v4/kw1;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p2}, Landroid/support/v4/kw1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Landroid/support/v4/kw1;->case()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v4/kw1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v4, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/o51;->case()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/n70;->case(Ljava/lang/Object;)Landroid/support/v4/n70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/n70;->try()Landroid/support/v4/o70;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/o70;->case(Ljava/lang/Object;)Landroid/support/v4/o70;

    move-result-object v0

    :try_start_1
    const-string v1, "PRIVATE_KEY_ENCRYPTION"

    invoke-virtual {v0}, Landroid/support/v4/o70;->try()Landroid/support/v4/b1;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/o70;->new()[B

    move-result-object v0

    invoke-direct {p0, v1, v3, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try(Ljava/lang/String;Landroid/support/v4/b1;[C[B)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p2

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore unable to recover private key ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/o51;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/o51;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->throw:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->import:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this:Ljava/util/Date;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->do:Ljava/security/PublicKey;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    new-instance p1, Landroid/support/v4/b1;

    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {p1, p2, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    sget-object p1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    const/16 p2, 0x40

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch(Lorg/bouncycastle/asn1/catch;I)Landroid/support/v4/xq0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t51;->new(Ljava/lang/Object;)Landroid/support/v4/t51;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {p1}, Landroid/support/v4/t51;->try()Landroid/support/v4/v51;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/v51;->case()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/v51;->try()Lorg/bouncycastle/asn1/break;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/yc1;->new(Ljava/lang/Object;)Landroid/support/v4/yc1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/yc1;->case()Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    invoke-virtual {v0}, Landroid/support/v4/yc1;->else()Landroid/support/v4/xq0;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    :try_start_1
    invoke-virtual {p1}, Landroid/support/v4/t51;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while([BLandroid/support/v4/yc1;[C)V
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/v51;->case()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Landroid/support/v4/v51;->try()Lorg/bouncycastle/asn1/break;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/zx1;->try(Ljava/lang/Object;)Landroid/support/v4/zx1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/zx1;->else()Landroid/support/v4/b1;

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Landroid/support/v4/zx1;->new()[Landroid/support/v4/rg;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v4, "X.509"

    invoke-interface {v3, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    array-length v4, v2

    new-array v5, v4, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-eq v7, v4, :cond_2

    new-instance v8, Ljava/io/ByteArrayInputStream;

    aget-object v9, v2, v7

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    invoke-interface {v2, v5}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;->isValid([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/t51;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aget-object v3, v5, v6

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    :goto_1
    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->import(Lorg/bouncycastle/asn1/ASN1Encodable;Landroid/support/v4/zx1;Ljava/security/PublicKey;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "certificate chain in key store signature not valid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "validator specified but no certifcates in store"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/t51;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->do:Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/support/v4/t51;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Landroid/support/v4/l70;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/support/v4/l70;

    invoke-virtual {p1}, Landroid/support/v4/l70;->try()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/l70;->new()Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    const-string v2, "STORE_ENCRYPTION"

    invoke-direct {p0, v2, v0, p2, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try(Ljava/lang/String;Landroid/support/v4/b1;[C[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/u51;->case(Ljava/lang/Object;)Landroid/support/v4/u51;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Landroid/support/v4/u51;->case(Ljava/lang/Object;)Landroid/support/v4/u51;

    move-result-object p1

    :goto_3
    :try_start_3
    invoke-virtual {p1}, Landroid/support/v4/u51;->try()Lorg/bouncycastle/asn1/case;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/case;->const()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/support/v4/u51;->goto()Lorg/bouncycastle/asn1/case;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/case;->const()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p1}, Landroid/support/v4/u51;->else()Landroid/support/v4/b1;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/break;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/support/v4/u51;->this()Landroid/support/v4/p51;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/p51;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/o51;->goto(Ljava/lang/Object;)Landroid/support/v4/o51;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v4/o51;->else()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore unable to parse store data information."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error verifying signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore unable to recognize integrity check."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    instance-of v0, p1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->else()Landroid/support/v4/u91;

    move-result-object v1

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break(Landroid/support/v4/u91;I)Landroid/support/v4/xq0;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->try()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->case()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->this()Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->do:Ljava/security/PublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->for()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->do:Ljava/security/PublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->goto()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->class(Ljava/security/Key;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto:Landroid/support/v4/b1;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Landroid/support/v4/x5;->do()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->engineLoad(Ljava/io/InputStream;[C)V

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->else()Landroid/support/v4/u91;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->throw(Landroid/support/v4/u91;Landroid/support/v4/xq0;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "configuration parameters do not match existing store"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    instance-of v0, p1, Landroid/support/v4/x5;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/support/v4/x5;

    invoke-virtual {v0}, Landroid/support/v4/x5;->do()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->engineLoad(Ljava/io/InputStream;[C)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'parameter\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'parameter\' arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o51;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/o51;->break()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case(Landroid/support/v4/o51;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/security/KeyStoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCFKS KeyStore already has a key entry with alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v4, v8

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    new-instance v9, Landroid/support/v4/o51;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/o51;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v8, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCFKS KeyStore unable to handle certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o51;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case(Landroid/support/v4/o51;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/security/PrivateKey;

    const-string v1, "AES/CCM/NoPadding"

    const-string v2, "AESKWP"

    const/4 v4, 0x0

    const-string v8, "BCFKS KeyStore exception storing private key: "

    const/16 v5, 0x20

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch(Lorg/bouncycastle/asn1/catch;I)Landroid/support/v4/xq0;

    move-result-object v0

    const-string v6, "PRIVATE_KEY_ENCRYPTION"

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-array p3, v4, [C

    :goto_1
    invoke-direct {p0, v0, v6, p3, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto(Landroid/support/v4/xq0;Ljava/lang/String;[CI)[B

    move-result-object p3

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    new-instance v1, Landroid/support/v4/m91;

    new-instance v2, Landroid/support/v4/u70;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/me;->try(Ljava/lang/Object;)Landroid/support/v4/me;

    move-result-object p3

    invoke-direct {v2, v5, p3}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v0, v2}, Landroid/support/v4/m91;-><init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V

    new-instance p3, Landroid/support/v4/o70;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v2, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p3, v0, p2}, Landroid/support/v4/o70;-><init>(Landroid/support/v4/b1;[B)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, Landroid/support/v4/m91;

    new-instance v1, Landroid/support/v4/u70;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-direct {p3, v0, v1}, Landroid/support/v4/m91;-><init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V

    new-instance v0, Landroid/support/v4/o70;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2, p3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/o70;-><init>(Landroid/support/v4/b1;[B)V

    move-object p3, v0

    :goto_2
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for(Landroid/support/v4/o70;[Ljava/security/cert/Certificate;)Landroid/support/v4/n70;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    new-instance p4, Landroid/support/v4/o51;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->super:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/o51;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore requires a certificate chain for private key storage."

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_b

    if-nez p4, :cond_a

    :try_start_1
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p4

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch(Lorg/bouncycastle/asn1/catch;I)Landroid/support/v4/xq0;

    move-result-object v0

    const-string v6, "SECRET_KEY_ENCRYPTION"

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    new-array p3, v4, [C

    :goto_3
    invoke-direct {p0, v0, v6, p3, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto(Landroid/support/v4/xq0;Ljava/lang/String;[CI)[B

    move-result-object p3

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/for;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "AES"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_6

    new-instance p2, Landroid/support/v4/kw1;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p2, v4, p4}, Landroid/support/v4/kw1;-><init>(Lorg/bouncycastle/asn1/catch;[B)V

    goto :goto_4

    :cond_6
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->class:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/catch;

    if-eqz v5, :cond_7

    new-instance p2, Landroid/support/v4/kw1;

    invoke-direct {p2, v5, p4}, Landroid/support/v4/kw1;-><init>(Lorg/bouncycastle/asn1/catch;[B)V

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/catch;

    if-eqz v4, :cond_9

    new-instance p2, Landroid/support/v4/kw1;

    invoke-direct {p2, v4, p4}, Landroid/support/v4/kw1;-><init>(Lorg/bouncycastle/asn1/catch;[B)V

    :goto_4
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p4, v4}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-direct {p0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    new-instance p4, Landroid/support/v4/m91;

    new-instance v1, Landroid/support/v4/u70;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/me;->try(Ljava/lang/Object;)Landroid/support/v4/me;

    move-result-object p3

    invoke-direct {v1, v4, p3}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p4, v0, v1}, Landroid/support/v4/m91;-><init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V

    new-instance p3, Landroid/support/v4/p70;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1, p4}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p3, v0, p2}, Landroid/support/v4/p70;-><init>(Landroid/support/v4/b1;[B)V

    goto :goto_5

    :cond_8
    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->if(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, Landroid/support/v4/m91;

    new-instance p4, Landroid/support/v4/u70;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p4, v1}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-direct {p3, v0, p4}, Landroid/support/v4/m91;-><init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V

    new-instance p4, Landroid/support/v4/p70;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1, p3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p4, v0, p2}, Landroid/support/v4/p70;-><init>(Landroid/support/v4/b1;[B)V

    move-object p3, p4

    :goto_5
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    new-instance p4, Landroid/support/v4/o51;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->throw:Ljava/math/BigInteger;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/o51;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iput-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    return-void

    :cond_9
    :try_start_2
    new-instance p1, Ljava/security/KeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BCFKS KeyStore cannot recognize secret key ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") for storage."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore cannot store certificate chain with secret key."

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore unable to recognize key."

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/o51;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case(Landroid/support/v4/o51;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    const-string v8, "BCFKS KeyStore exception storing protected private key: "

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/support/v4/o70;->case(Ljava/lang/Object;)Landroid/support/v4/o70;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->try:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    new-instance v10, Landroid/support/v4/o51;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->while:Ljava/math/BigInteger;

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for(Landroid/support/v4/o70;[Ljava/security/cert/Certificate;)Landroid/support/v4/n70;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v10

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/o51;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;

    const-string p3, "BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :try_start_2
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    new-instance v9, Landroid/support/v4/o51;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->import:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/o51;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {p3, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    iput-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break:Ljava/util/Date;

    return-void

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do$new;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->new:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final(Landroid/support/v4/b1;[C)Landroid/support/v4/l70;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {v2}, Landroid/support/v4/xq0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {v1}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/os1;->case(Ljava/lang/Object;)Landroid/support/v4/os1;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {v1}, Landroid/support/v4/os1;->else()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {v1}, Landroid/support/v4/xq0;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t91;->new(Ljava/lang/Object;)Landroid/support/v4/t91;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {v1}, Landroid/support/v4/t91;->case()Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->this(Landroid/support/v4/xq0;I)Landroid/support/v4/xq0;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-direct {p0, v1, v2, v3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->do([BLandroid/support/v4/b1;Landroid/support/v4/xq0;[C)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/support/v4/t51;

    new-instance v2, Landroid/support/v4/v51;

    new-instance v3, Landroid/support/v4/yc1;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-direct {v3, v4, v5, p2}, Landroid/support/v4/yc1;-><init>(Landroid/support/v4/b1;Landroid/support/v4/xq0;[B)V

    invoke-direct {v2, v3}, Landroid/support/v4/v51;-><init>(Landroid/support/v4/yc1;)V

    invoke-direct {v1, v0, v2}, Landroid/support/v4/t51;-><init>(Landroid/support/v4/l70;Landroid/support/v4/v51;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot calculate mac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "KeyStore not initialized"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    instance-of v0, p1, Landroid/support/v4/u5;

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/u5;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/u5;->if()Landroid/support/v4/u91;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break(Landroid/support/v4/u91;I)Landroid/support/v4/xq0;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {v0}, Landroid/support/v4/u5;->do()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->engineStore(Ljava/io/OutputStream;[C)V

    goto/16 :goto_6

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->this()Ljava/security/Key;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->this()Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->goto()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->class(Ljava/security/Key;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto:Landroid/support/v4/b1;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->else()Landroid/support/v4/u91;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break(Landroid/support/v4/u91;I)Landroid/support/v4/xq0;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->try()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->case()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    sget-object v2, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/catch;

    sget-object v2, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto:Landroid/support/v4/b1;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->final(Landroid/support/v4/b1;[C)Landroid/support/v4/l70;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->for:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto:Landroid/support/v4/b1;

    invoke-virtual {v2}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->this()Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->new()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    new-array v4, v3, [Landroid/support/v4/rg;

    const/4 v5, 0x0

    :goto_2
    if-eq v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/support/v4/zx1;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto:Landroid/support/v4/b1;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Landroid/support/v4/zx1;-><init>(Landroid/support/v4/b1;[Landroid/support/v4/rg;[B)V

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/support/v4/zx1;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->goto:Landroid/support/v4/b1;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/support/v4/zx1;-><init>(Landroid/support/v4/b1;[B)V

    :goto_3
    new-instance v1, Landroid/support/v4/t51;

    new-instance v3, Landroid/support/v4/v51;

    invoke-direct {v3, v2}, Landroid/support/v4/v51;-><init>(Landroid/support/v4/zx1;)V

    invoke-direct {v1, v0, v3}, Landroid/support/v4/t51;-><init>(Landroid/support/v4/l70;Landroid/support/v4/v51;)V

    invoke-virtual {p1}, Landroid/support/v4/x5;->if()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Landroid/support/v4/x5;->if()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error creating signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->else()Landroid/support/v4/u91;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->break(Landroid/support/v4/u91;I)Landroid/support/v4/xq0;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else:Landroid/support/v4/xq0;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->try()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    if-ne v1, v2, :cond_6

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/catch;

    goto :goto_4

    :cond_6
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/catch;

    :goto_4
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->catch:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->case()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    if-ne v1, v2, :cond_7

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    :cond_7
    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_5
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->case:Landroid/support/v4/b1;

    invoke-virtual {p1}, Landroid/support/v4/x5;->if()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->engineStore(Ljava/io/OutputStream;[C)V

    goto :goto_6

    :cond_8
    instance-of v0, p1, Landroid/support/v4/x5;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/support/v4/x5;

    invoke-virtual {v0}, Landroid/support/v4/x5;->if()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->else(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/do;->engineStore(Ljava/io/OutputStream;[C)V

    :goto_6
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'parameter\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'parameter\' arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
