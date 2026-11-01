.class public Landroid/support/v4/kj2;
.super Landroid/support/v4/volatile;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/volatile;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    move-object v3, p1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_1

    :cond_0
    move-object v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/new;->a(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/new;->instanceof(I)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
