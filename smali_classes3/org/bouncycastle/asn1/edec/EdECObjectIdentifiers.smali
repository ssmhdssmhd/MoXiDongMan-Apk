.class public interface abstract Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_Ed25519:Lorg/bouncycastle/asn1/catch;

.field public static final id_Ed448:Lorg/bouncycastle/asn1/catch;

.field public static final id_X25519:Lorg/bouncycastle/asn1/catch;

.field public static final id_X448:Lorg/bouncycastle/asn1/catch;

.field public static final id_edwards_curve_algs:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.101"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_edwards_curve_algs:Lorg/bouncycastle/asn1/catch;

    const-string v1, "110"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->import()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/catch;

    const-string v1, "111"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->import()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/catch;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->import()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/catch;

    const-string v1, "113"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->import()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
