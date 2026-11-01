.class public Landroid/support/v4/uw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Landroid/support/v4/h50;

.field private for:Landroid/support/v4/k50;

.field private if:Landroid/support/v4/h50;


# direct methods
.method public constructor <init>(Landroid/support/v4/h50;Landroid/support/v4/h50;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/uw0;-><init>(Landroid/support/v4/h50;Landroid/support/v4/h50;Landroid/support/v4/k50;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/h50;Landroid/support/v4/h50;Landroid/support/v4/k50;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "staticPrivateKey cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ephemeralPrivateKey cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e40;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    new-instance p3, Landroid/support/v4/k50;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-direct {p3, v1, v0}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e40;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/uw0;->do:Landroid/support/v4/h50;

    iput-object p2, p0, Landroid/support/v4/uw0;->if:Landroid/support/v4/h50;

    iput-object p3, p0, Landroid/support/v4/uw0;->for:Landroid/support/v4/k50;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ephemeral public key has different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Landroid/support/v4/h50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uw0;->if:Landroid/support/v4/h50;

    return-object v0
.end method

.method public for()Landroid/support/v4/h50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uw0;->do:Landroid/support/v4/h50;

    return-object v0
.end method

.method public if()Landroid/support/v4/k50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uw0;->for:Landroid/support/v4/k50;

    return-object v0
.end method
