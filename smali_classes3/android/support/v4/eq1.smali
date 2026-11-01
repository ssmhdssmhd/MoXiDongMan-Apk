.class public Landroid/support/v4/eq1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Landroid/support/v4/e40;

.field private final do:Lorg/bouncycastle/crypto/Digest;

.field private else:I

.field private for:Landroid/support/v4/h50;

.field private goto:Landroid/support/v4/h50;

.field private if:[B

.field private new:Lorg/bouncycastle/math/ec/new;

.field private this:Z

.field private try:Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/v4/lq1;

    invoke-direct {v0}, Landroid/support/v4/lq1;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/v4/eq1;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private break(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/new;)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->new(Lorg/bouncycastle/crypto/Digest;[B)V

    iget-object p2, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {p2}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p2, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {p2}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p2, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {p2}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p2, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {p2}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-direct {p0}, Landroid/support/v4/eq1;->this()[B

    move-result-object p1

    return-object p1
.end method

.method private class(Lorg/bouncycastle/math/ec/new;[B[BI)[B
    .locals 11

    iget-object v0, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    add-int/lit8 p4, p4, 0x7

    div-int/lit8 p4, p4, 0x8

    new-array v3, p4, [B

    iget-object v4, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    instance-of v5, v4, Lorg/bouncycastle/util/Memoable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v4, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v4, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v5, p2

    invoke-interface {v4, p2, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v5, p3

    invoke-interface {v4, p3, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    move-object v6, v4

    check-cast v6, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v6}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v5, p4, :cond_2

    if-eqz v6, :cond_1

    invoke-interface {v6, v4}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    goto :goto_2

    :cond_1
    iget-object v9, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v9, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v9, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v10, p2

    invoke-interface {v9, p2, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v9, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v10, p3

    invoke-interface {v9, p3, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    invoke-static {v8, v2, v7}, Landroid/support/v4/ib1;->case(I[BI)V

    iget-object v9, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v2, v7, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v9, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int v9, p4, v5

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v7, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v9

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private const(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/eq1;->else:I

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/eq1;->else:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0}, Landroid/support/v4/eq1;->this()[B

    move-result-object p1

    return-object p1
.end method

.method private for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V
    .locals 2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private goto(Landroid/support/v4/gq1;)Lorg/bouncycastle/math/ec/new;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/eq1;->for:Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/gq1;->if()Landroid/support/v4/k50;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/do;->do(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/gq1;->do()Landroid/support/v4/k50;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/do;->do(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/eq1;->try:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/eq1;->const(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v4/eq1;->const(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/eq1;->for:Landroid/support/v4/h50;

    invoke-virtual {v3}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/eq1;->goto:Landroid/support/v4/h50;

    invoke-virtual {v4}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {v3}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {v3}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {v3}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lorg/bouncycastle/math/ec/do;->return(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method private if(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)[B
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0}, Landroid/support/v4/eq1;->this()[B

    move-result-object p1

    return-object p1
.end method

.method private new(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private this()[B
    .locals 3

    iget-object v0, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private try(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B[BLorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/new;)[B
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p2, p4

    invoke-interface {p1, p4, v0, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {p5}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p5}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/eq1;->for(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-direct {p0}, Landroid/support/v4/eq1;->this()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public case(ILorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 4

    instance-of v0, p2, Landroid/support/v4/ac1;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v4/ac1;

    invoke-virtual {p2}, Landroid/support/v4/ac1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Landroid/support/v4/gq1;

    invoke-virtual {p2}, Landroid/support/v4/ac1;->do()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/support/v4/gq1;

    const/4 p2, 0x0

    new-array p2, p2, [B

    :goto_0
    iget-object v1, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Landroid/support/v4/eq1;->if:[B

    iget-object v3, p0, Landroid/support/v4/eq1;->new:Lorg/bouncycastle/math/ec/new;

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/eq1;->break(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/new;)[B

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v0}, Landroid/support/v4/gq1;->if()Landroid/support/v4/k50;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/eq1;->break(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/new;)[B

    move-result-object p2

    invoke-direct {p0, v0}, Landroid/support/v4/eq1;->goto(Landroid/support/v4/gq1;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    iget-boolean v2, p0, Landroid/support/v4/eq1;->this:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1, p2, p1}, Landroid/support/v4/eq1;->class(Lorg/bouncycastle/math/ec/new;[B[BI)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, p2, v1, p1}, Landroid/support/v4/eq1;->class(Lorg/bouncycastle/math/ec/new;[B[BI)[B

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public catch(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/ac1;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ac1;

    invoke-virtual {p1}, Landroid/support/v4/ac1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Landroid/support/v4/fq1;

    invoke-virtual {p1}, Landroid/support/v4/ac1;->do()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eq1;->if:[B

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/fq1;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/support/v4/eq1;->if:[B

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/fq1;->try()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/eq1;->this:Z

    invoke-virtual {v0}, Landroid/support/v4/fq1;->for()Landroid/support/v4/h50;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eq1;->for:Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/fq1;->do()Landroid/support/v4/h50;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eq1;->goto:Landroid/support/v4/h50;

    iget-object p1, p0, Landroid/support/v4/eq1;->for:Landroid/support/v4/h50;

    invoke-virtual {p1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/fq1;->new()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eq1;->new:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Landroid/support/v4/fq1;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eq1;->try:Lorg/bouncycastle/math/ec/new;

    iget-object p1, p0, Landroid/support/v4/eq1;->case:Landroid/support/v4/e40;

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v4/eq1;->else:I

    return-void
.end method

.method public else(I[BLorg/bouncycastle/crypto/CipherParameters;)[[B
    .locals 15

    move-object v7, p0

    move/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Landroid/support/v4/ac1;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/support/v4/ac1;

    invoke-virtual {v1}, Landroid/support/v4/ac1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Landroid/support/v4/gq1;

    invoke-virtual {v1}, Landroid/support/v4/ac1;->do()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/support/v4/gq1;

    new-array v1, v9, [B

    :goto_0
    iget-boolean v3, v7, Landroid/support/v4/eq1;->this:Z

    if-eqz v3, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if initiating, confirmationTag must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v3, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, v7, Landroid/support/v4/eq1;->if:[B

    iget-object v5, v7, Landroid/support/v4/eq1;->new:Lorg/bouncycastle/math/ec/new;

    invoke-direct {p0, v3, v4, v5}, Landroid/support/v4/eq1;->break(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/new;)[B

    move-result-object v4

    iget-object v3, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v2}, Landroid/support/v4/gq1;->if()Landroid/support/v4/k50;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-direct {p0, v3, v1, v5}, Landroid/support/v4/eq1;->break(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/new;)[B

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/support/v4/eq1;->goto(Landroid/support/v4/gq1;)Lorg/bouncycastle/math/ec/new;

    move-result-object v10

    iget-boolean v1, v7, Landroid/support/v4/eq1;->this:Z

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_4

    invoke-direct {p0, v10, v4, v5, v0}, Landroid/support/v4/eq1;->class(Lorg/bouncycastle/math/ec/new;[B[BI)[B

    move-result-object v13

    iget-object v1, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, v7, Landroid/support/v4/eq1;->try:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v2}, Landroid/support/v4/gq1;->do()Landroid/support/v4/k50;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v14

    move-object v0, p0

    move-object v2, v10

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/eq1;->try(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B[BLorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/new;)[B

    move-result-object v0

    iget-object v1, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v1, v10, v0}, Landroid/support/v4/eq1;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)[B

    move-result-object v1

    invoke-static {v1, v8}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v11, [[B

    aput-object v13, v1, v9

    iget-object v2, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v2, v10, v0}, Landroid/support/v4/eq1;->if(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)[B

    move-result-object v0

    aput-object v0, v1, v12

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "confirmation tag mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, v10, v5, v4, v0}, Landroid/support/v4/eq1;->class(Lorg/bouncycastle/math/ec/new;[B[BI)[B

    move-result-object v8

    iget-object v1, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v2}, Landroid/support/v4/gq1;->do()Landroid/support/v4/k50;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v6

    iget-object v13, v7, Landroid/support/v4/eq1;->try:Lorg/bouncycastle/math/ec/new;

    move-object v0, p0

    move-object v2, v10

    move-object v3, v5

    move-object v5, v6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/eq1;->try(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B[BLorg/bouncycastle/math/ec/new;Lorg/bouncycastle/math/ec/new;)[B

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [[B

    aput-object v8, v1, v9

    iget-object v2, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v2, v10, v0}, Landroid/support/v4/eq1;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)[B

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v7, Landroid/support/v4/eq1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v2, v10, v0}, Landroid/support/v4/eq1;->if(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)[B

    move-result-object v0

    aput-object v0, v1, v11

    return-object v1
.end method
