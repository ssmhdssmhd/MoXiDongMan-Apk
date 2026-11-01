.class public interface abstract Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_icao:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_aaProtocolObject:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_cscaMasterList:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_cscaMasterListSigningKey:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_documentTypeList:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_extensions:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_extensions_namechangekeyrollover:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_ldsSecurityObject:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_mrtd:Lorg/bouncycastle/asn1/catch;

.field public static final id_icao_mrtd_security:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "2.23.136"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao:Lorg/bouncycastle/asn1/catch;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_ldsSecurityObject:Lorg/bouncycastle/asn1/catch;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_cscaMasterList:Lorg/bouncycastle/asn1/catch;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_cscaMasterListSigningKey:Lorg/bouncycastle/asn1/catch;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_documentTypeList:Lorg/bouncycastle/asn1/catch;

    const-string v2, "5"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_aaProtocolObject:Lorg/bouncycastle/asn1/catch;

    const-string v2, "6"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions_namechangekeyrollover:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
