.class public Lorg/bouncycastle/jcajce/provider/symmetric/super;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/super$do;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$if;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$for;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$new;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$try;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$case;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$else;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$goto;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$this;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$break;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$catch;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$class;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$const;,
        Lorg/bouncycastle/jcajce/provider/symmetric/super$final;
    }
.end annotation


# static fields
.field private static final do:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/super;->do:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411Hmac:Lorg/bouncycastle/asn1/catch;

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/catch;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/catch;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/catch;

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/catch;

    const/16 v2, 0x8

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/catch;

    const/16 v2, 0x9

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_256:Lorg/bouncycastle/asn1/catch;

    const/16 v2, 0xb

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_224:Lorg/bouncycastle/asn1/catch;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_384:Lorg/bouncycastle/asn1/catch;

    const/16 v2, 0xc

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/catch;

    const/16 v2, 0xd

    invoke-static {v2}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/super;->do:Ljava/util/Map;

    return-object v0
.end method
