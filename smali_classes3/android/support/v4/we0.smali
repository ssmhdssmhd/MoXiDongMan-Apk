.class public Landroid/support/v4/we0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field public final do:Lorg/bouncycastle/math/ec/if;

.field public final for:Lorg/bouncycastle/math/ec/ECPointMap;

.field public final if:Landroid/support/v4/xe0;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/xe0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/we0;->do:Lorg/bouncycastle/math/ec/if;

    iput-object p2, p0, Landroid/support/v4/we0;->if:Landroid/support/v4/xe0;

    new-instance v0, Landroid/support/v4/xr1;

    invoke-virtual {p2}, Landroid/support/v4/xe0;->if()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/if;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/xr1;-><init>(Lorg/bouncycastle/math/ec/for;)V

    iput-object v0, p0, Landroid/support/v4/we0;->for:Lorg/bouncycastle/math/ec/ECPointMap;

    return-void
.end method


# virtual methods
.method public decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/we0;->if:Landroid/support/v4/xe0;

    invoke-virtual {v0}, Landroid/support/v4/xe0;->for()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/we0;->if:Landroid/support/v4/xe0;

    invoke-virtual {v1}, Landroid/support/v4/xe0;->new()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/we0;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/we0;->if:Landroid/support/v4/xe0;

    invoke-virtual {v2}, Landroid/support/v4/xe0;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Landroid/support/v4/we0;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/we0;->if:Landroid/support/v4/xe0;

    invoke-virtual {v2}, Landroid/support/v4/xe0;->goto()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/xe0;->catch()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2}, Landroid/support/v4/xe0;->this()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Landroid/support/v4/xe0;->class()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    return-object v1
.end method

.method public do(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 p2, p3, -0x1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p2, :cond_1

    sget-object p2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/we0;->for:Lorg/bouncycastle/math/ec/ECPointMap;

    return-object v0
.end method

.method public hasEfficientPointMap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
