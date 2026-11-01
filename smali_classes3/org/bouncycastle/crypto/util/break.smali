.class public Lorg/bouncycastle/crypto/util/break;
.super Landroid/support/v4/u91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/break$if;
    }
.end annotation


# static fields
.field private static final break:Ljava/util/Map;

.field public static final case:Landroid/support/v4/b1;

.field public static final else:Landroid/support/v4/b1;

.field public static final goto:Landroid/support/v4/b1;

.field public static final this:Landroid/support/v4/b1;

.field public static final try:Landroid/support/v4/b1;


# instance fields
.field private final for:I

.field private final if:I

.field private final new:Landroid/support/v4/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/catch;

    sget-object v2, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/break;->try:Landroid/support/v4/b1;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v3, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/break;->case:Landroid/support/v4/b1;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v4, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/break;->else:Landroid/support/v4/b1;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_256:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v5, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/break;->goto:Landroid/support/v4/b1;

    new-instance v0, Landroid/support/v4/b1;

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v6, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/break;->this:Landroid/support/v4/b1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/util/break;->break:Ljava/util/Map;

    const/16 v2, 0x14

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x40

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/catch;

    const/16 v4, 0x1c

    invoke-static {v4}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/catch;

    const/16 v7, 0x30

    invoke-static {v7}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_224:Lorg/bouncycastle/asn1/catch;

    invoke-static {v4}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_384:Lorg/bouncycastle/asn1/catch;

    invoke-static {v7}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411Hmac:Lorg/bouncycastle/asn1/catch;

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_hmac_gost_3411_12_256:Lorg/bouncycastle/asn1/catch;

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_hmac_gost_3411_12_512:Lorg/bouncycastle/asn1/catch;

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->hmac_sm3:Lorg/bouncycastle/asn1/catch;

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/util/break$if;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, v0}, Landroid/support/v4/u91;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/break$if;->do(Lorg/bouncycastle/crypto/util/break$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/break;->if:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/break$if;->if(Lorg/bouncycastle/crypto/util/break$if;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/break;->new:Landroid/support/v4/b1;

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/break$if;->for(Lorg/bouncycastle/crypto/util/break$if;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/break;->try(Lorg/bouncycastle/asn1/catch;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/break$if;->for(Lorg/bouncycastle/crypto/util/break$if;)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/util/break;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/break$if;Lorg/bouncycastle/crypto/util/break$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/break;-><init>(Lorg/bouncycastle/crypto/util/break$if;)V

    return-void
.end method

.method public static try(Lorg/bouncycastle/asn1/catch;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/util/break;->break:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no salt size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public for()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/break;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/break;->if:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/break;->for:I

    return v0
.end method
