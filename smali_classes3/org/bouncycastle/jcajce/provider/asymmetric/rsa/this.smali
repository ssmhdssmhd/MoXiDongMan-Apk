.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static final for:Ljava/math/BigInteger;


# instance fields
.field public do:Landroid/support/v4/ak1;

.field public if:Landroid/support/v4/bk1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "RSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/bk1;

    invoke-direct {v0}, Landroid/support/v4/bk1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->if:Landroid/support/v4/bk1;

    new-instance v0, Landroid/support/v4/ak1;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->for:Ljava/math/BigInteger;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Landroid/support/v4/ff1;->do(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/ak1;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->do:Landroid/support/v4/ak1;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->if:Landroid/support/v4/bk1;

    invoke-virtual {v1, v0}, Landroid/support/v4/bk1;->init(Landroid/support/v4/dr0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->if:Landroid/support/v4/bk1;

    invoke-virtual {v0}, Landroid/support/v4/bk1;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dk1;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/new;

    invoke-direct {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/new;-><init>(Landroid/support/v4/ck1;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/if;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/if;-><init>(Landroid/support/v4/dk1;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    new-instance v0, Landroid/support/v4/ak1;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->for:Ljava/math/BigInteger;

    invoke-static {p1}, Landroid/support/v4/ff1;->do(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Landroid/support/v4/ak1;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->do:Landroid/support/v4/ak1;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->if:Landroid/support/v4/bk1;

    invoke-virtual {p1, v0}, Landroid/support/v4/bk1;->init(Landroid/support/v4/dr0;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    new-instance v0, Landroid/support/v4/ak1;

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result p1

    const/16 v2, 0x800

    invoke-static {v2}, Landroid/support/v4/ff1;->do(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Landroid/support/v4/ak1;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->do:Landroid/support/v4/ak1;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/this;->if:Landroid/support/v4/bk1;

    invoke-virtual {p1, v0}, Landroid/support/v4/bk1;->init(Landroid/support/v4/dr0;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
