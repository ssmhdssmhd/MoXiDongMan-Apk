.class public Landroid/support/v4/p11;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/pqc/crypto/newhope/try;

.field public for:Z

.field public if:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "NH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/try;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/newhope/try;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p11;->do:Lorg/bouncycastle/pqc/crypto/newhope/try;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/p11;->if:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/p11;->for:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/p11;->for:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/p11;->do:Lorg/bouncycastle/pqc/crypto/newhope/try;

    new-instance v1, Landroid/support/v4/dr0;

    iget-object v2, p0, Landroid/support/v4/p11;->if:Ljava/security/SecureRandom;

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/try;->init(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/p11;->for:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/p11;->do:Lorg/bouncycastle/pqc/crypto/newhope/try;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/try;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/s11;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/r11;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Landroid/support/v4/c6;

    invoke-direct {v3, v1}, Landroid/support/v4/c6;-><init>(Landroid/support/v4/s11;)V

    new-instance v1, Landroid/support/v4/b6;

    invoke-direct {v1, v0}, Landroid/support/v4/b6;-><init>(Landroid/support/v4/r11;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/p11;->do:Lorg/bouncycastle/pqc/crypto/newhope/try;

    new-instance v1, Landroid/support/v4/dr0;

    invoke-direct {v1, p2, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/newhope/try;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/p11;->for:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "strength must be 1024 bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not recognised"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
