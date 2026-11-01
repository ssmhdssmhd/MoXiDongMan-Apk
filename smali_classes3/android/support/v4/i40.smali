.class public Landroid/support/v4/i40;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Ljava/util/Enumeration;
    .locals 1

    invoke-static {}, Landroid/support/v4/j40;->new()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static if(Ljava/lang/String;)Landroid/support/v4/x40;
    .locals 9

    invoke-static {p0}, Landroid/support/v4/j40;->do(Ljava/lang/String;)Landroid/support/v4/e40;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/j40;->if(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroid/support/v4/x40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Landroid/support/v4/e40;->case()[B

    move-result-object v8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/x40;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
