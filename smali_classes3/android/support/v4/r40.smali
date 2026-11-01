.class public Landroid/support/v4/r40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field public do:Landroid/support/v4/e40;

.field public if:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Landroid/support/v4/ic0;

    invoke-direct {v0}, Landroid/support/v4/ic0;-><init>()V

    return-object v0
.end method

.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/r40;->do:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x2

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/support/v4/r40;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/do;->new(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/bouncycastle/math/ec/class;->goto(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/r40;->do()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/r40;->do:Landroid/support/v4/e40;

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/y3;

    new-instance v2, Landroid/support/v4/k50;

    iget-object v4, p0, Landroid/support/v4/r40;->do:Landroid/support/v4/e40;

    invoke-direct {v2, v0, v4}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    new-instance v0, Landroid/support/v4/h50;

    iget-object v4, p0, Landroid/support/v4/r40;->do:Landroid/support/v4/e40;

    invoke-direct {v0, v3, v4}, Landroid/support/v4/h50;-><init>(Ljava/math/BigInteger;Landroid/support/v4/e40;)V

    invoke-direct {v1, v2, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v1
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 1

    check-cast p1, Landroid/support/v4/q40;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r40;->if:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/q40;->for()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/r40;->do:Landroid/support/v4/e40;

    iget-object p1, p0, Landroid/support/v4/r40;->if:Ljava/security/SecureRandom;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/r40;->if:Ljava/security/SecureRandom;

    :cond_0
    return-void
.end method
