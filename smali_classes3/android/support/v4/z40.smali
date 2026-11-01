.class public Landroid/support/v4/z40;
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

    invoke-static {}, Landroid/support/v4/a50;->case()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static if(Ljava/lang/String;)Landroid/support/v4/x40;
    .locals 8

    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/do;->goto(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/ec/do;->this(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/a50;->for(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/support/v4/a50;->new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v7, Landroid/support/v4/x40;

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/th2;->class()[B

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/x40;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
