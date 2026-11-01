.class public Landroid/support/v4/l40;
.super Landroid/support/v4/b50;
.source "SourceFile"


# instance fields
.field private final break:Lorg/bouncycastle/asn1/catch;

.field private final goto:Lorg/bouncycastle/asn1/catch;

.field private final this:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public constructor <init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V
    .locals 7

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/e40;->case()[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    instance-of v0, p1, Landroid/support/v4/b50;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/b50;

    invoke-virtual {p1}, Landroid/support/v4/b50;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "named parameters do not match publicKeyParamSet value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Landroid/support/v4/l40;->goto:Lorg/bouncycastle/asn1/catch;

    iput-object p3, p0, Landroid/support/v4/l40;->this:Lorg/bouncycastle/asn1/catch;

    iput-object p4, p0, Landroid/support/v4/l40;->break:Lorg/bouncycastle/asn1/catch;

    return-void
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/l40;->break:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/l40;->goto:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/l40;->this:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
