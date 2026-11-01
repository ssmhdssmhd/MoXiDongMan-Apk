.class public Landroid/support/v4/uu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Landroid/support/v4/pu;

.field private for:Landroid/support/v4/ru;

.field private if:Landroid/support/v4/pu;


# direct methods
.method public constructor <init>(Landroid/support/v4/pu;Landroid/support/v4/pu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/uu;-><init>(Landroid/support/v4/pu;Landroid/support/v4/pu;Landroid/support/v4/ru;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/pu;Landroid/support/v4/pu;Landroid/support/v4/ru;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "staticPrivateKey cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ephemeralPrivateKey cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/ou;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    new-instance p3, Landroid/support/v4/ru;

    invoke-virtual {v0}, Landroid/support/v4/ou;->if()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/pu;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p3, v1, v0}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/ou;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/uu;->do:Landroid/support/v4/pu;

    iput-object p2, p0, Landroid/support/v4/uu;->if:Landroid/support/v4/pu;

    iput-object p3, p0, Landroid/support/v4/uu;->for:Landroid/support/v4/ru;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ephemeral public key has different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Landroid/support/v4/pu;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uu;->if:Landroid/support/v4/pu;

    return-object v0
.end method

.method public for()Landroid/support/v4/pu;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uu;->do:Landroid/support/v4/pu;

    return-object v0
.end method

.method public if()Landroid/support/v4/ru;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uu;->for:Landroid/support/v4/ru;

    return-object v0
.end method
