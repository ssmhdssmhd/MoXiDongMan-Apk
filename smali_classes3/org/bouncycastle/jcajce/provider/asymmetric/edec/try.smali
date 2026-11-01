.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$do;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$if;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$for;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$new;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$try;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$case;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$else;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$goto;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$this;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$break;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$catch;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$class;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$const;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$final;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$super;
    }
.end annotation


# instance fields
.field private break:Landroid/support/v4/tu;

.field private catch:[B

.field private this:Lorg/bouncycastle/crypto/RawAgreement;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method

.method private case(Ljava/lang/String;)Lorg/bouncycastle/crypto/RawAgreement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    const-string v1, "XDH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inappropriate key for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "X448"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-lez v0, :cond_3

    if-eqz p1, :cond_2

    new-instance p1, Landroid/support/v4/ci2;

    new-instance v0, Landroid/support/v4/pg2;

    invoke-direct {v0}, Landroid/support/v4/pg2;-><init>()V

    invoke-direct {p1, v0}, Landroid/support/v4/ci2;-><init>(Lorg/bouncycastle/crypto/RawAgreement;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/support/v4/ci2;

    new-instance v0, Landroid/support/v4/kg2;

    invoke-direct {v0}, Landroid/support/v4/kg2;-><init>()V

    invoke-direct {p1, v0}, Landroid/support/v4/ci2;-><init>(Lorg/bouncycastle/crypto/RawAgreement;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, Landroid/support/v4/pg2;

    invoke-direct {p1}, Landroid/support/v4/pg2;-><init>()V

    return-object p1

    :cond_4
    new-instance p1, Landroid/support/v4/kg2;

    invoke-direct {p1}, Landroid/support/v4/kg2;-><init>()V

    return-object p1
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->catch:[B

    return-object v0
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;->engineGetKeyParameters()Landroid/support/v4/a4;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->catch:[B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->break:Landroid/support/v4/tu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    new-instance v2, Landroid/support/v4/bi2;

    invoke-virtual {v0}, Landroid/support/v4/tu;->for()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;->engineGetKeyParameters()Landroid/support/v4/a4;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/support/v4/bi2;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->catch:[B

    invoke-interface {p2, v2, p1, v1}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "cannot identify XDH private key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be between two parties."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not initialised."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;->engineGetKeyParameters()Landroid/support/v4/a4;

    move-result-object p1

    instance-of p2, p1, Lorg/bouncycastle/crypto/params/this;

    if-eqz p2, :cond_0

    const-string p2, "X448"

    goto :goto_0

    :cond_0
    const-string p2, "X25519"

    :goto_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->case(Ljava/lang/String;)Lorg/bouncycastle/crypto/RawAgreement;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->if:Lorg/bouncycastle/crypto/DerivationFunction;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "cannot identify XDH private key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of p3, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    if-eqz p3, :cond_6

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;->engineGetKeyParameters()Landroid/support/v4/a4;

    move-result-object p1

    instance-of p3, p1, Lorg/bouncycastle/crypto/params/this;

    if-eqz p3, :cond_0

    const-string p3, "X448"

    goto :goto_0

    :cond_0
    const-string p3, "X25519"

    :goto_0
    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->case(Ljava/lang/String;)Lorg/bouncycastle/crypto/RawAgreement;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    instance-of p3, p2, Landroid/support/v4/tu;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->do:Ljava/lang/String;

    const/16 v0, 0x55

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ltz p3, :cond_1

    check-cast p2, Landroid/support/v4/tu;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->break:Landroid/support/v4/tu;

    invoke-virtual {p2}, Landroid/support/v4/tu;->new()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    new-instance p3, Landroid/support/v4/ai2;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->break:Landroid/support/v4/tu;

    invoke-virtual {v0}, Landroid/support/v4/tu;->do()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/for;->engineGetKeyParameters()Landroid/support/v4/a4;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->break:Landroid/support/v4/tu;

    invoke-virtual {v1}, Landroid/support/v4/tu;->if()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/new;->engineGetKeyParameters()Landroid/support/v4/a4;

    move-result-object v1

    invoke-direct {p3, p1, v0, v1}, Landroid/support/v4/ai2;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    invoke-interface {p2, p3}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "agreement algorithm not DHU based"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;->this:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {p3, p1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    instance-of p1, p2, Landroid/support/v4/ld2;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->if:Lorg/bouncycastle/crypto/DerivationFunction;

    if-eqz p1, :cond_4

    check-cast p2, Landroid/support/v4/ld2;

    invoke-virtual {p2}, Landroid/support/v4/ld2;->do()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->if:Lorg/bouncycastle/crypto/DerivationFunction;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    if-nez p1, :cond_3

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;->for:[B

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown ParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "cannot identify XDH private key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
