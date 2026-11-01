.class public Lorg/bouncycastle/crypto/generators/this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private do:Landroid/support/v4/g60;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 7

    sget-object v0, Lorg/bouncycastle/crypto/generators/try;->do:Lorg/bouncycastle/crypto/generators/try;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/this;->do:Landroid/support/v4/g60;

    invoke-virtual {v1}, Landroid/support/v4/g60;->for()Landroid/support/v4/l60;

    move-result-object v1

    new-instance v2, Landroid/support/v4/ou;

    invoke-virtual {v1}, Landroid/support/v4/l60;->for()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/l60;->do()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/l60;->if()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/this;->do:Landroid/support/v4/g60;

    invoke-virtual {v3}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/generators/try;->do(Landroid/support/v4/ou;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/generators/try;->if(Landroid/support/v4/ou;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Landroid/support/v4/y3;

    new-instance v4, Landroid/support/v4/o60;

    invoke-direct {v4, v0, v1}, Landroid/support/v4/o60;-><init>(Ljava/math/BigInteger;Landroid/support/v4/l60;)V

    new-instance v0, Landroid/support/v4/m60;

    invoke-direct {v0, v3, v1}, Landroid/support/v4/m60;-><init>(Ljava/math/BigInteger;Landroid/support/v4/l60;)V

    invoke-direct {v2, v4, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    check-cast p1, Landroid/support/v4/g60;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/this;->do:Landroid/support/v4/g60;

    return-void
.end method
