.class public Landroid/support/v4/d50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private do:Lorg/bouncycastle/math/ec/if;

.field private for:Lorg/bouncycastle/math/ec/new;

.field private if:[B

.field private new:Ljava/math/BigInteger;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d50;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d50;->for:Lorg/bouncycastle/math/ec/new;

    iput-object p3, p0, Landroid/support/v4/d50;->new:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d50;->try:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/d50;->if:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d50;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d50;->for:Lorg/bouncycastle/math/ec/new;

    iput-object p3, p0, Landroid/support/v4/d50;->new:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/d50;->try:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/d50;->if:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d50;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/d50;->for:Lorg/bouncycastle/math/ec/new;

    iput-object p3, p0, Landroid/support/v4/d50;->new:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/d50;->try:Ljava/math/BigInteger;

    iput-object p5, p0, Landroid/support/v4/d50;->if:[B

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/math/ec/if;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d50;->do:Lorg/bouncycastle/math/ec/if;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/d50;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/d50;

    invoke-virtual {p0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/if;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/new;->try(Lorg/bouncycastle/math/ec/new;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d50;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d50;->for:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d50;->new:Ljava/math/BigInteger;

    return-object v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d50;->if:[B

    return-object v0
.end method
