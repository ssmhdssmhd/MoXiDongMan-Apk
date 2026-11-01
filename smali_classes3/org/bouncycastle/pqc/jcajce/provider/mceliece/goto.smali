.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/goto;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public do:Landroid/support/v4/cz0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "McEliece"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/goto;->do:Landroid/support/v4/cz0;

    invoke-virtual {v0}, Landroid/support/v4/cz0;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/gz0;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/iz0;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Landroid/support/v4/z5;

    invoke-direct {v3, v0}, Landroid/support/v4/z5;-><init>(Landroid/support/v4/iz0;)V

    new-instance v0, Landroid/support/v4/y5;

    invoke-direct {v0, v1}, Landroid/support/v4/y5;-><init>(Landroid/support/v4/gz0;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Landroid/support/v4/az0;

    invoke-direct {p1}, Landroid/support/v4/az0;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/goto;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/cz0;

    invoke-direct {v0}, Landroid/support/v4/cz0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/goto;->do:Landroid/support/v4/cz0;

    check-cast p1, Landroid/support/v4/az0;

    new-instance v0, Landroid/support/v4/bz0;

    new-instance v1, Landroid/support/v4/ez0;

    invoke-virtual {p1}, Landroid/support/v4/az0;->if()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/az0;->new()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/support/v4/ez0;-><init>(II)V

    invoke-direct {v0, p2, v1}, Landroid/support/v4/bz0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/ez0;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/goto;->do:Landroid/support/v4/cz0;

    invoke-virtual {p1, v0}, Landroid/support/v4/cz0;->init(Landroid/support/v4/dr0;)V

    return-void
.end method
