.class public Lorg/bouncycastle/crypto/generators/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private do:Landroid/support/v4/ju;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 5

    sget-object v0, Lorg/bouncycastle/crypto/generators/try;->do:Lorg/bouncycastle/crypto/generators/try;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/case;->do:Landroid/support/v4/ju;

    invoke-virtual {v1}, Landroid/support/v4/ju;->for()Landroid/support/v4/ou;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/case;->do:Landroid/support/v4/ju;

    invoke-virtual {v2}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/try;->do(Landroid/support/v4/ou;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/try;->if(Landroid/support/v4/ou;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v3, Landroid/support/v4/y3;

    new-instance v4, Landroid/support/v4/ru;

    invoke-direct {v4, v0, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    new-instance v0, Landroid/support/v4/pu;

    invoke-direct {v0, v2, v1}, Landroid/support/v4/pu;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    invoke-direct {v3, v4, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v3
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    check-cast p1, Landroid/support/v4/ju;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/case;->do:Landroid/support/v4/ju;

    return-void
.end method
