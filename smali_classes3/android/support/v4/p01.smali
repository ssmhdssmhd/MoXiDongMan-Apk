.class public Landroid/support/v4/p01;
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
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/math/ec/new;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    rsub-int/lit8 v3, v1, 0x1

    aget-object v4, v0, v3

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    aput-object v4, v0, v3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_0

    :cond_0
    aget-object p1, v0, v2

    return-object p1
.end method
