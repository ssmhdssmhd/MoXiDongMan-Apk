.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/sy0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "McEliece-CCA2"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    invoke-virtual {v0}, Landroid/support/v4/sy0;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/zy0;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/if;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/if;-><init>(Landroid/support/v4/zy0;)V

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;-><init>(Landroid/support/v4/xy0;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    new-instance p1, Landroid/support/v4/sy0;

    invoke-direct {p1}, Landroid/support/v4/sy0;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    new-instance p1, Landroid/support/v4/ry0;

    new-instance v0, Landroid/support/v4/uy0;

    invoke-direct {v0}, Landroid/support/v4/uy0;-><init>()V

    invoke-direct {p1, p2, v0}, Landroid/support/v4/ry0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/uy0;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    invoke-virtual {p2, p1}, Landroid/support/v4/sy0;->init(Landroid/support/v4/dr0;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/sy0;

    invoke-direct {v0}, Landroid/support/v4/sy0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    check-cast p1, Landroid/support/v4/qy0;

    new-instance v0, Landroid/support/v4/ry0;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v1

    new-instance v2, Landroid/support/v4/uy0;

    invoke-virtual {p1}, Landroid/support/v4/qy0;->for()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/qy0;->try()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/qy0;->do()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Landroid/support/v4/uy0;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ry0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/uy0;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    invoke-virtual {p1, v0}, Landroid/support/v4/sy0;->init(Landroid/support/v4/dr0;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/sy0;

    invoke-direct {v0}, Landroid/support/v4/sy0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    check-cast p1, Landroid/support/v4/qy0;

    new-instance v0, Landroid/support/v4/ry0;

    new-instance v1, Landroid/support/v4/uy0;

    invoke-virtual {p1}, Landroid/support/v4/qy0;->for()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/qy0;->try()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/qy0;->do()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Landroid/support/v4/uy0;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, p2, v1}, Landroid/support/v4/ry0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/uy0;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/new;->do:Landroid/support/v4/sy0;

    invoke-virtual {p1, v0}, Landroid/support/v4/sy0;->init(Landroid/support/v4/dr0;)V

    return-void
.end method
