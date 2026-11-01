.class public interface abstract Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_mod_cms_seed:Lorg/bouncycastle/asn1/catch;

.field public static final id_npki_app_cmsSeed_wrap:Lorg/bouncycastle/asn1/catch;

.field public static final id_seedCBC:Lorg/bouncycastle/asn1/catch;

.field public static final id_seedMAC:Lorg/bouncycastle/asn1/catch;

.field public static final pbeWithSHA1AndSEED_CBC:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.410.200004.1.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.410.200004.1.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedMAC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.410.200004.1.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->pbeWithSHA1AndSEED_CBC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.410.200004.7.1.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.840.113549.1.9.16.0.24"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_mod_cms_seed:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
