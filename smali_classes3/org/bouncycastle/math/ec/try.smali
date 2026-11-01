.class public Lorg/bouncycastle/math/ec/try;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lorg/bouncycastle/math/ec/if;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->extends()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static for(Lorg/bouncycastle/math/ec/new;)Landroid/support/v4/jc0;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/try$do;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/math/ec/try$do;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/math/ec/if;->strictfp(Lorg/bouncycastle/math/ec/new;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Landroid/support/v4/jc0;

    return-object p0
.end method

.method public static if(Lorg/bouncycastle/math/ec/PreCompInfo;)Landroid/support/v4/jc0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/jc0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/jc0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
