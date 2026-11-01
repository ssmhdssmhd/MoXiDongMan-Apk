.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/for;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "SourceFile"


# instance fields
.field public do:Ljava/lang/String;

.field public for:I

.field public if:I

.field public new:Landroid/support/v4/rl;

.field public try:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/support/v4/rl;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->do:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->for:I

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->if:I

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    new-instance v1, Landroid/support/v4/dr0;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->for:I

    invoke-direct {v1, v2, v3}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/rl;->if(Landroid/support/v4/dr0;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    invoke-virtual {v1}, Landroid/support/v4/rl;->do()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->do:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    new-instance v1, Landroid/support/v4/dr0;

    invoke-direct {v1, p2, p1}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/rl;->if(Landroid/support/v4/dr0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidParameterException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(Ljava/security/SecureRandom;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    new-instance v1, Landroid/support/v4/dr0;

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->for:I

    invoke-direct {v1, p1, v2}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/rl;->if(Landroid/support/v4/dr0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    :cond_0
    return-void
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
