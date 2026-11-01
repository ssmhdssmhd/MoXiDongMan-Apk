.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$do;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$if;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$for;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$new;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$try;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$case;
    }
.end annotation


# static fields
.field private static final break:I = 0x3

.field private static final case:I = -0x2

.field private static final else:I = 0x0

.field private static final goto:I = 0x1

.field private static final this:I = 0x2

.field private static final try:I = -0x1


# instance fields
.field private do:I

.field private for:Z

.field private if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private new:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    return-void
.end method

.method private do(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    const-string v2, "parameterSpec for wrong curve type"

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, -0x2

    if-ne v0, v4, :cond_3

    if-eq p1, v1, :cond_3

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method private for(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for:Z

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    :cond_0
    const/4 v1, -0x2

    if-eq p1, v1, :cond_4

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Landroid/support/v4/rg2;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Landroid/support/v4/rg2;-><init>(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Landroid/support/v4/v50;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Landroid/support/v4/v50;-><init>(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Landroid/support/v4/s50;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Landroid/support/v4/s50;-><init>(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Landroid/support/v4/mg2;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Landroid/support/v4/mg2;-><init>(Ljava/security/SecureRandom;)V

    :goto_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Landroid/support/v4/dr0;)V

    :goto_1
    return-void
.end method

.method private if(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "Ed448"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "Ed25519"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "X448"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "X25519"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_3
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do(I)V

    new-instance v0, Landroid/support/v4/ng2;

    invoke-direct {v0}, Landroid/support/v4/ng2;-><init>()V

    goto :goto_3

    :cond_4
    :goto_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do(I)V

    new-instance v0, Landroid/support/v4/sg2;

    invoke-direct {v0}, Landroid/support/v4/sg2;-><init>()V

    goto :goto_3

    :cond_5
    :goto_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do(I)V

    new-instance v0, Landroid/support/v4/t50;

    invoke-direct {v0}, Landroid/support/v4/t50;-><init>()V

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do(I)V

    new-instance v0, Landroid/support/v4/w50;

    invoke-direct {v0}, Landroid/support/v4/w50;-><init>()V

    :goto_3
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    const-string v1, "generator not correctly initialized"

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for(I)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;-><init>(Landroid/support/v4/a4;)V

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;-><init>(Landroid/support/v4/a4;)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;-><init>(Landroid/support/v4/a4;)V

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;-><init>(Landroid/support/v4/a4;)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_3
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/if;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/if;-><init>(Landroid/support/v4/a4;)V

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;-><init>(Landroid/support/v4/a4;)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_4
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/if;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/if;-><init>(Landroid/support/v4/a4;)V

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;-><init>(Landroid/support/v4/a4;)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    const/16 p2, 0xff

    const-string v0, "key size not configurable"

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq p1, p2, :cond_3

    const/16 p2, 0x100

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1c0

    if-ne p1, p2, :cond_2

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    const/4 p2, 0x2

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for(I)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key size"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->do:I

    const/4 p2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_5

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-direct {p0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for(I)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->for(I)V

    :goto_1
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->new:Ljava/security/SecureRandom;

    instance-of p2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;->if(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of p2, p1, Landroid/support/v4/w40;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/support/v4/w40;

    invoke-virtual {p1}, Landroid/support/v4/w40;->do()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroid/support/v4/y50;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/support/v4/y50;

    invoke-virtual {p1}, Landroid/support/v4/y50;->do()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of p2, p1, Landroid/support/v4/zh2;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/support/v4/zh2;

    invoke-virtual {p1}, Landroid/support/v4/zh2;->do()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method
