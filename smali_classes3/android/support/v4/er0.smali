.class public Landroid/support/v4/er0;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public case:Z

.field public do:Landroid/support/v4/g60;

.field public for:I

.field public if:Lorg/bouncycastle/crypto/generators/this;

.field public new:I

.field public try:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ElGamal"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/this;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/er0;->if:Lorg/bouncycastle/crypto/generators/this;

    const/16 v0, 0x400

    iput v0, p0, Landroid/support/v4/er0;->for:I

    const/16 v0, 0x14

    iput v0, p0, Landroid/support/v4/er0;->new:I

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/er0;->try:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/er0;->case:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Landroid/support/v4/er0;->case:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget v1, p0, Landroid/support/v4/er0;->for:I

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/g60;

    iget-object v2, p0, Landroid/support/v4/er0;->try:Ljava/security/SecureRandom;

    new-instance v3, Landroid/support/v4/l60;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-direct {v3, v4, v5, v0}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/g60;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/l60;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/generators/break;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/break;-><init>()V

    iget v1, p0, Landroid/support/v4/er0;->for:I

    iget v2, p0, Landroid/support/v4/er0;->new:I

    iget-object v3, p0, Landroid/support/v4/er0;->try:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/generators/break;->if(IILjava/security/SecureRandom;)V

    new-instance v1, Landroid/support/v4/g60;

    iget-object v2, p0, Landroid/support/v4/er0;->try:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/break;->do()Landroid/support/v4/l60;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/support/v4/g60;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/l60;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v4/er0;->do:Landroid/support/v4/g60;

    iget-object v0, p0, Landroid/support/v4/er0;->if:Lorg/bouncycastle/crypto/generators/this;

    iget-object v1, p0, Landroid/support/v4/er0;->do:Landroid/support/v4/g60;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/this;->init(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/er0;->case:Z

    :cond_1
    iget-object v0, p0, Landroid/support/v4/er0;->if:Lorg/bouncycastle/crypto/generators/this;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/this;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/o60;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/m60;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Landroid/support/v4/s5;

    invoke-direct {v3, v1}, Landroid/support/v4/s5;-><init>(Landroid/support/v4/o60;)V

    new-instance v1, Landroid/support/v4/r5;

    invoke-direct {v1, v0}, Landroid/support/v4/r5;-><init>(Landroid/support/v4/m60;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/er0;->for:I

    iput-object p2, p0, Landroid/support/v4/er0;->try:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/k60;

    if-nez v0, :cond_1

    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a DHParameterSpec or an ElGamalParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/k60;

    new-instance v0, Landroid/support/v4/g60;

    new-instance v1, Landroid/support/v4/l60;

    invoke-virtual {p1}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Landroid/support/v4/g60;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/l60;)V

    goto :goto_1

    :cond_2
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Landroid/support/v4/g60;

    new-instance v1, Landroid/support/v4/l60;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p2, v1}, Landroid/support/v4/g60;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/l60;)V

    :goto_1
    iput-object v0, p0, Landroid/support/v4/er0;->do:Landroid/support/v4/g60;

    iget-object p1, p0, Landroid/support/v4/er0;->if:Lorg/bouncycastle/crypto/generators/this;

    iget-object p2, p0, Landroid/support/v4/er0;->do:Landroid/support/v4/g60;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/generators/this;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/er0;->case:Z

    return-void
.end method
