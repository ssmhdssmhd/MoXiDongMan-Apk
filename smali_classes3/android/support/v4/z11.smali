.class public Landroid/support/v4/z11;
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

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    aget v3, p2, v1

    shr-int/lit8 v4, v3, 0x10

    const v5, 0xffff

    and-int/2addr v3, v5

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/new;->instanceof(I)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    if-gez v4, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, p1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
