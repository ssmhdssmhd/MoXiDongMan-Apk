.class public Lorg/bouncycastle/crypto/engines/extends;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Ljava/security/SecureRandom;

.field private final do:Lorg/bouncycastle/crypto/Digest;

.field private for:Landroid/support/v4/s40;

.field private if:Z

.field private new:Landroid/support/v4/e40;

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/v4/lq1;

    invoke-direct {v0}, Landroid/support/v4/lq1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/extends;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private catch([B[BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p4, :cond_0

    add-int v1, p3, v0

    aget-byte v2, p1, v1

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/extends;->try:I

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private else(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)V
    .locals 9

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    instance-of v3, p1, Lorg/bouncycastle/util/Memoable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    move-object v4, p1

    check-cast v4, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v4}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    array-length v8, p3

    if-ge v6, v8, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v2, v5}, Landroid/support/v4/ib1;->case(I[BI)V

    invoke-interface {p1, v2, v5, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v8, p3

    sub-int/2addr v8, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {p0, p3, v2, v6, v8}, Lorg/bouncycastle/crypto/engines/extends;->catch([B[BII)V

    add-int/2addr v6, v8

    goto :goto_1

    :cond_2
    return-void
.end method

.method private for([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/engines/extends;->try:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {v3}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/if;->class([B)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {v4}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/extends;->for:Landroid/support/v4/s40;

    check-cast v4, Landroid/support/v4/h50;

    invoke-virtual {v4}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    sub-int/2addr p3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr p3, v4

    new-array v4, p3, [B

    add-int/2addr p2, v0

    invoke-static {p1, p2, v4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v0, v3, v4}, Lorg/bouncycastle/crypto/engines/extends;->else(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v5, v0, [B

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v4, v2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v5, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-eq v3, v0, :cond_0

    aget-byte v7, v5, v3

    add-int v8, p2, p3

    add-int/2addr v8, v3

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Landroid/support/v4/q3;->c([BB)V

    invoke-static {v5, v2}, Landroid/support/v4/q3;->c([BB)V

    if-nez v6, :cond_1

    return-object v4

    :cond_1
    invoke-static {v4, v2}, Landroid/support/v4/q3;->c([BB)V

    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "invalid cipher text"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "[h]C1 at infinity"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private goto()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/extends;->case:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/util/do;->new(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {v2}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v1
.end method

.method private new([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/extends;->if()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/extends;->goto()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {v4}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/extends;->for:Landroid/support/v4/s40;

    check-cast v5, Landroid/support/v4/k50;

    invoke-virtual {v5}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v5, v3, v0}, Lorg/bouncycastle/crypto/engines/extends;->else(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/new;[B)V

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/engines/extends;->this([B[BI)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/extends;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v4, v0, v2}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private this([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    aget-byte v2, p1, v1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public break([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/extends;->if:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/extends;->new([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/extends;->for([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public case(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/extends;->if:Z

    if-eqz p1, :cond_1

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/s40;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->for:Landroid/support/v4/s40;

    invoke-virtual {p1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->for:Landroid/support/v4/s40;

    check-cast p1, Landroid/support/v4/k50;

    invoke-virtual {p1}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->case:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key: [h]Q at infinity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, Landroid/support/v4/s40;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/extends;->for:Landroid/support/v4/s40;

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->new:Landroid/support/v4/e40;

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/engines/extends;->try:I

    return-void
.end method

.method public if()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Landroid/support/v4/ic0;

    invoke-direct {v0}, Landroid/support/v4/ic0;-><init>()V

    return-object v0
.end method

.method public try(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/extends;->try:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/extends;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
