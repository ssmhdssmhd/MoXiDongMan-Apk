.class public Lorg/bouncycastle/crypto/ec/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ec/ECPairTransform;


# instance fields
.field private do:Landroid/support/v4/k50;

.field private if:Ljava/security/SecureRandom;


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

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v4/cc1;

    const-string v1, "ECPublicKeyParameters are required for new public key transform."

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/cc1;

    invoke-virtual {p1}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/k50;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k50;

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/for;->do:Landroid/support/v4/k50;

    invoke-virtual {p1}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v0, p1, Landroid/support/v4/k50;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/k50;

    iput-object p1, p0, Lorg/bouncycastle/crypto/ec/for;->do:Landroid/support/v4/k50;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/ec/for;->if:Ljava/security/SecureRandom;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Landroid/support/v4/c50;)Landroid/support/v4/c50;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/for;->do:Landroid/support/v4/k50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/for;->do()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/ec/for;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/ec/try;->do(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/ec/for;->do:Landroid/support/v4/k50;

    invoke-virtual {v2}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/c50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/math/ec/do;->do(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/if;->abstract([Lorg/bouncycastle/math/ec/new;)V

    new-instance p1, Landroid/support/v4/c50;

    aget-object v0, v3, v4

    aget-object v1, v3, v1

    invoke-direct {p1, v0, v1}, Landroid/support/v4/c50;-><init>(Lorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/new;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECNewPublicKeyTransform not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
