.class public Landroid/support/v4/y11;
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

    invoke-static {p2}, Lorg/bouncycastle/math/ec/class;->for(Ljava/math/BigInteger;)[I

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    array-length v2, p2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    aget v3, p2, v2

    shr-int/lit8 v4, v3, 0x10

    const v5, 0xffff

    and-int/2addr v3, v5

    if-gez v4, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    move-object v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Lorg/bouncycastle/math/ec/new;->a(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/new;->instanceof(I)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method
