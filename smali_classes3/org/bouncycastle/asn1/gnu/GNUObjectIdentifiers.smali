.class public interface abstract Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CRC:Lorg/bouncycastle/asn1/catch;

.field public static final CRC32:Lorg/bouncycastle/asn1/catch;

.field public static final Ed25519:Lorg/bouncycastle/asn1/catch;

.field public static final GNU:Lorg/bouncycastle/asn1/catch;

.field public static final GnuPG:Lorg/bouncycastle/asn1/catch;

.field public static final GnuRadar:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_128_CBC:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_128_CFB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_128_ECB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_128_OFB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_192_CBC:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_192_CFB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_192_ECB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_192_OFB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_256_CBC:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_256_CFB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_256_ECB:Lorg/bouncycastle/asn1/catch;

.field public static final Serpent_256_OFB:Lorg/bouncycastle/asn1/catch;

.field public static final Tiger_192:Lorg/bouncycastle/asn1/catch;

.field public static final digestAlgorithm:Lorg/bouncycastle/asn1/catch;

.field public static final ellipticCurve:Lorg/bouncycastle/asn1/catch;

.field public static final encryptionAlgorithm:Lorg/bouncycastle/asn1/catch;

.field public static final notation:Lorg/bouncycastle/asn1/catch;

.field public static final pkaAddress:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->GNU:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->GnuPG:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->notation:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.2.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->pkaAddress:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->GnuRadar:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->digestAlgorithm:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.12.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Tiger_192:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->encryptionAlgorithm:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_ECB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CBC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_OFB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CFB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_ECB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.22"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CBC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.23"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_OFB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.24"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CFB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.41"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_ECB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CBC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_OFB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.13.2.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CFB:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->CRC:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.14.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->CRC32:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.11591.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->ellipticCurve:Lorg/bouncycastle/asn1/catch;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Ed25519:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
