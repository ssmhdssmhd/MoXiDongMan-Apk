.class public Landroid/support/v4/g40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ec/ECPairFactorTransform;


# instance fields
.field private do:Landroid/support/v4/k50;

.field private if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g40;->if:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Landroid/support/v4/ic0;

    invoke-direct {v0}, Landroid/support/v4/ic0;-><init>()V

    return-object v0
.end method

.method public getTransformValue()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g40;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/k50;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/k50;

    iput-object p1, p0, Landroid/support/v4/g40;->do:Landroid/support/v4/k50;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECPublicKeyParameters are required for fixed transform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Landroid/support/v4/c50;)Landroid/support/v4/c50;
    .locals 6

    iget-object v0, p0, Landroid/support/v4/g40;->do:Landroid/support/v4/k50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/g40;->do()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/g40;->if:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/c50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/math/ec/do;->do(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, p0, Landroid/support/v4/g40;->do:Landroid/support/v4/k50;

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

    const-string v0, "ECFixedTransform not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
