.class public Landroid/support/v4/yf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Ljava/math/BigInteger;

.field private for:Ljava/math/BigInteger;

.field private if:Ljava/math/BigInteger;

.field private new:Landroid/support/v4/hg0;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/yf0;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/yf0;->if:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/yf0;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/hg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/support/v4/yf0;->for:Ljava/math/BigInteger;

    iput-object p1, p0, Landroid/support/v4/yf0;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/yf0;->if:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/yf0;->new:Landroid/support/v4/hg0;

    return-void
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yf0;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/yf0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/yf0;

    invoke-virtual {p1}, Landroid/support/v4/yf0;->if()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/yf0;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/yf0;->for()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/yf0;->if:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/yf0;->do()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/yf0;->for:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yf0;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/yf0;->do:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/yf0;->if:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/yf0;->for:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yf0;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public new()Landroid/support/v4/hg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yf0;->new:Landroid/support/v4/hg0;

    return-object v0
.end method
