.class public Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public case:Z

.field public do:Landroid/support/v4/rf0;

.field public for:Landroid/support/v4/wf0;

.field public if:Landroid/support/v4/sf0;

.field public new:I

.field public try:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/sf0;

    invoke-direct {v0}, Landroid/support/v4/sf0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->if:Landroid/support/v4/sf0;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->new:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->try:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->case:Z

    return-void
.end method

.method private do(Landroid/support/v4/wf0;Ljava/security/SecureRandom;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v4/wf0;->getPublicKeyParameters()Landroid/support/v4/dg0;

    move-result-object v0

    new-instance v1, Landroid/support/v4/rf0;

    new-instance v2, Landroid/support/v4/yf0;

    invoke-virtual {v0}, Landroid/support/v4/dg0;->if()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/dg0;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/dg0;->do()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v4/yf0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Landroid/support/v4/rf0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/yf0;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->do:Landroid/support/v4/rf0;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->if:Landroid/support/v4/sf0;

    invoke-virtual {p2, v1}, Landroid/support/v4/sf0;->init(Landroid/support/v4/dr0;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->case:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->for:Landroid/support/v4/wf0;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->case:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/wf0;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_A:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/wf0;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->do(Landroid/support/v4/wf0;Ljava/security/SecureRandom;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->if:Landroid/support/v4/sf0;

    invoke-virtual {v0}, Landroid/support/v4/sf0;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/eg0;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ag0;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/new;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->for:Landroid/support/v4/wf0;

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/new;-><init>(Landroid/support/v4/eg0;Landroid/support/v4/wf0;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/for;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->for:Landroid/support/v4/wf0;

    invoke-direct {v1, v0, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/for;-><init>(Landroid/support/v4/ag0;Landroid/support/v4/wf0;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->new:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->try:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/wf0;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/wf0;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/gost/else;->do(Landroid/support/v4/wf0;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a GOST3410ParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
