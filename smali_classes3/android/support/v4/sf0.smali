.class public Landroid/support/v4/sf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private do:Landroid/support/v4/rf0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 8

    iget-object v0, p0, Landroid/support/v4/sf0;->do:Landroid/support/v4/rf0;

    invoke-virtual {v0}, Landroid/support/v4/rf0;->for()Landroid/support/v4/yf0;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/sf0;->do:Landroid/support/v4/rf0;

    invoke-virtual {v1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/yf0;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/yf0;->if()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/yf0;->do()Ljava/math/BigInteger;

    move-result-object v4

    :cond_0
    :goto_0
    const/16 v5, 0x100

    invoke-static {v5, v1}, Lorg/bouncycastle/util/do;->new(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lorg/bouncycastle/math/ec/class;->goto(Ljava/math/BigInteger;)I

    move-result v6

    const/16 v7, 0x40

    if-ge v6, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Landroid/support/v4/y3;

    new-instance v3, Landroid/support/v4/eg0;

    invoke-direct {v3, v1, v0}, Landroid/support/v4/eg0;-><init>(Ljava/math/BigInteger;Landroid/support/v4/yf0;)V

    new-instance v1, Landroid/support/v4/ag0;

    invoke-direct {v1, v5, v0}, Landroid/support/v4/ag0;-><init>(Ljava/math/BigInteger;Landroid/support/v4/yf0;)V

    invoke-direct {v2, v3, v1}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    check-cast p1, Landroid/support/v4/rf0;

    iput-object p1, p0, Landroid/support/v4/sf0;->do:Landroid/support/v4/rf0;

    return-void
.end method
