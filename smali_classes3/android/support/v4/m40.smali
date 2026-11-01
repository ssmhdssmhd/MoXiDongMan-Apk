.class public Landroid/support/v4/m40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DSAExt;


# instance fields
.field public do:Landroid/support/v4/s40;

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

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 10

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    invoke-virtual {v1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    check-cast v4, Landroid/support/v4/h50;

    invoke-virtual {v4}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/m40;->do()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v5

    :cond_1
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    iget-object v7, p0, Landroid/support/v4/m40;->if:Ljava/security/SecureRandom;

    invoke-static {v6, v7}, Lorg/bouncycastle/util/do;->new(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v8

    invoke-interface {v5, v8, v6}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/math/BigInteger;

    aput-object v8, p1, v2

    aput-object v6, p1, v0

    return-object p1
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/m40;->if:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/h50;

    iput-object p1, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/m40;->if:Ljava/security/SecureRandom;

    check-cast p2, Landroid/support/v4/h50;

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/support/v4/k50;

    :goto_0
    iput-object p2, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    :goto_1
    return-void
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v0, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    invoke-virtual {v1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/m40;->do:Landroid/support/v4/s40;

    check-cast v3, Landroid/support/v4/k50;

    invoke-virtual {v3}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-static {v1, p3, v3, p1}, Lorg/bouncycastle/math/ec/do;->return(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result p3

    if-eqz p3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v2
.end method
