.class public Landroid/support/v4/ve0;
.super Landroid/support/v4/volatile;
.source "SourceFile"


# instance fields
.field public final do:Lorg/bouncycastle/math/ec/if;

.field public final if:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/volatile;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->extends()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/ve0;->do:Lorg/bouncycastle/math/ec/if;

    iput-object p2, p0, Landroid/support/v4/ve0;->if:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need curve with known group order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public if(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ve0;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/if;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->extends()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ve0;->if:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    iget-object v1, p0, Landroid/support/v4/ve0;->if:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v1}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/ve0;->if:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v2}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->hasEfficientPointMap()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/math/ec/do;->try(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v1, p1}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/math/ec/do;->new(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
