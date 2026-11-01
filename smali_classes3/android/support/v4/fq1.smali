.class public Landroid/support/v4/fq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final do:Z

.field private final for:Lorg/bouncycastle/math/ec/new;

.field private final if:Landroid/support/v4/h50;

.field private final new:Landroid/support/v4/h50;

.field private final try:Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>(ZLandroid/support/v4/h50;Landroid/support/v4/h50;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "staticPrivateKey cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ephemeralPrivateKey cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {p3}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e40;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/fq1;->do:Z

    iput-object p2, p0, Landroid/support/v4/fq1;->if:Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fq1;->for:Lorg/bouncycastle/math/ec/new;

    iput-object p3, p0, Landroid/support/v4/fq1;->new:Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p3}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fq1;->try:Lorg/bouncycastle/math/ec/new;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Landroid/support/v4/h50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fq1;->new:Landroid/support/v4/h50;

    return-object v0
.end method

.method public for()Landroid/support/v4/h50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fq1;->if:Landroid/support/v4/h50;

    return-object v0
.end method

.method public if()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fq1;->try:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fq1;->for:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public try()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/fq1;->do:Z

    return v0
.end method
