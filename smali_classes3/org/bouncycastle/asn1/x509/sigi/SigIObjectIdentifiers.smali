.class public interface abstract Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_sigi:Lorg/bouncycastle/asn1/catch;

.field public static final id_sigi_cp:Lorg/bouncycastle/asn1/catch;

.field public static final id_sigi_cp_sigconform:Lorg/bouncycastle/asn1/catch;

.field public static final id_sigi_kp:Lorg/bouncycastle/asn1/catch;

.field public static final id_sigi_kp_directoryService:Lorg/bouncycastle/asn1/catch;

.field public static final id_sigi_on:Lorg/bouncycastle/asn1/catch;

.field public static final id_sigi_on_personalData:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi_kp:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi_cp:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi_on:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi_kp_directoryService:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi_on_personalData:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.36.8.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/sigi/SigIObjectIdentifiers;->id_sigi_cp_sigconform:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
