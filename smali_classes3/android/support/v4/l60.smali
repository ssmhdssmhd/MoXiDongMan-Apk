.class public Landroid/support/v4/l60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Ljava/math/BigInteger;

.field private for:I

.field private if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/l60;->do:Ljava/math/BigInteger;

    iput-object p1, p0, Landroid/support/v4/l60;->if:Ljava/math/BigInteger;

    iput p3, p0, Landroid/support/v4/l60;->for:I

    return-void
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/l60;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/l60;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/l60;

    invoke-virtual {p1}, Landroid/support/v4/l60;->for()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/l60;->if:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/l60;->do()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/l60;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/l60;->if()I

    move-result p1

    iget v0, p0, Landroid/support/v4/l60;->for:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/l60;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/l60;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/l60;->do()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/l60;->for:I

    add-int/2addr v0, v1

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/l60;->for:I

    return v0
.end method
