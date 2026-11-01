.class Lorg/bouncycastle/math/ec/this;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:[Lorg/bouncycastle/math/ec/super;

.field private static final do:Ljava/math/BigInteger;

.field public static final else:[[B

.field private static final for:Ljava/math/BigInteger;

.field public static final goto:[Lorg/bouncycastle/math/ec/super;

.field private static final if:Ljava/math/BigInteger;

.field public static final new:B = 0x4t

.field public static final this:[[B

.field public static final try:B = 0x10t


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/math/ec/this;->do:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/math/ec/this;->if:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/math/ec/this;->for:Ljava/math/BigInteger;

    const/16 v3, 0x9

    new-array v4, v3, [Lorg/bouncycastle/math/ec/super;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    new-instance v7, Lorg/bouncycastle/math/ec/super;

    sget-object v8, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v7, v0, v8}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x1

    aput-object v7, v4, v9

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-instance v10, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v10, v2, v1}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x3

    aput-object v10, v4, v11

    const/4 v10, 0x4

    aput-object v6, v4, v10

    new-instance v12, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v12, v1, v1}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v13, 0x5

    aput-object v12, v4, v13

    const/4 v12, 0x6

    aput-object v6, v4, v12

    new-instance v14, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v14, v0, v1}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v15, 0x7

    aput-object v14, v4, v15

    const/16 v14, 0x8

    aput-object v6, v4, v14

    sput-object v4, Lorg/bouncycastle/math/ec/this;->case:[Lorg/bouncycastle/math/ec/super;

    new-array v4, v14, [[B

    aput-object v6, v4, v5

    new-array v14, v9, [B

    aput-byte v9, v14, v5

    aput-object v14, v4, v9

    aput-object v6, v4, v7

    new-array v14, v11, [B

    fill-array-data v14, :array_0

    aput-object v14, v4, v11

    aput-object v6, v4, v10

    new-array v14, v11, [B

    fill-array-data v14, :array_1

    aput-object v14, v4, v13

    aput-object v6, v4, v12

    new-array v14, v10, [B

    fill-array-data v14, :array_2

    aput-object v14, v4, v15

    sput-object v4, Lorg/bouncycastle/math/ec/this;->else:[[B

    new-array v3, v3, [Lorg/bouncycastle/math/ec/super;

    aput-object v6, v3, v5

    new-instance v4, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v4, v0, v8}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v4, v3, v9

    aput-object v6, v3, v7

    new-instance v4, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v4, v2, v0}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v4, v3, v11

    aput-object v6, v3, v10

    new-instance v2, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v3, v13

    aput-object v6, v3, v12

    new-instance v1, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v1, v0, v0}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v3, v15

    const/16 v0, 0x8

    aput-object v6, v3, v0

    sput-object v3, Lorg/bouncycastle/math/ec/this;->goto:[Lorg/bouncycastle/math/ec/super;

    new-array v0, v0, [[B

    aput-object v6, v0, v5

    new-array v1, v9, [B

    aput-byte v9, v1, v5

    aput-object v1, v0, v9

    aput-object v6, v0, v7

    new-array v1, v11, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v11

    aput-object v6, v0, v10

    new-array v1, v11, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v13

    aput-object v6, v0, v12

    new-array v1, v10, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v15

    sput-object v0, Lorg/bouncycastle/math/ec/this;->this:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(BI)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x6

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 p0, 0xa

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/this;->if(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static case(Lorg/bouncycastle/math/ec/new$if;B)[Lorg/bouncycastle/math/ec/new$if;
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/math/ec/this;->else:[[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/math/ec/this;->this:[[B

    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/math/ec/new$if;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    array-length v1, p1

    const/4 v2, 0x3

    :goto_1
    if-ge v2, v1, :cond_1

    ushr-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {p0, v4}, Lorg/bouncycastle/math/ec/this;->catch(Lorg/bouncycastle/math/ec/new$if;[B)Lorg/bouncycastle/math/ec/new$if;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/if;->abstract([Lorg/bouncycastle/math/ec/new;)V

    return-object v0
.end method

.method public static catch(Lorg/bouncycastle/math/ec/new$if;[B)Lorg/bouncycastle/math/ec/new$if;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/new$if;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/new$if;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p1, v2

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/new$if;->c(I)Lorg/bouncycastle/math/ec/new$if;

    move-result-object v0

    if-lez v5, :cond_0

    move-object v4, p0

    goto :goto_1

    :cond_0
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/new$if;

    const/4 v4, 0x0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/new$if;->c(I)Lorg/bouncycastle/math/ec/new$if;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static class(Lorg/bouncycastle/math/ec/new$if;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new$if;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/if$if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/this;->for(I)B

    move-result v5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if$if;->implements()[Ljava/math/BigInteger;

    move-result-object v4

    int-to-byte v3, v1

    const/16 v6, 0xa

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/this;->throw(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/super;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/this;->const(Lorg/bouncycastle/math/ec/new$if;Lorg/bouncycastle/math/ec/super;)Lorg/bouncycastle/math/ec/new$if;

    move-result-object p0

    return-object p0
.end method

.method public static const(Lorg/bouncycastle/math/ec/new$if;Lorg/bouncycastle/math/ec/super;)Lorg/bouncycastle/math/ec/new$if;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/if$if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/this;->try(Lorg/bouncycastle/math/ec/for;)B

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/this;->native(BLorg/bouncycastle/math/ec/super;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/this;->catch(Lorg/bouncycastle/math/ec/new$if;[B)Lorg/bouncycastle/math/ec/new$if;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/goto;
    .locals 2

    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p5

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    new-instance p0, Lorg/bouncycastle/math/ec/goto;

    invoke-direct {p0, p1, p5}, Lorg/bouncycastle/math/ec/goto;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static else(Ljava/math/BigInteger;)I
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final(BLorg/bouncycastle/math/ec/super;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object p1, p1, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static for(I)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static goto(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/math/ec/this;->for(I)B

    move-result v0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/this;->else(Ljava/math/BigInteger;)I

    move-result p2

    add-int/lit8 p0, p0, 0x3

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/this;->if(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, p1

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/math/BigInteger;

    aput-object v2, p2, p1

    aput-object p0, p2, v1

    return-object p2
.end method

.method public static if(BIZ)[Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object p2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-ge v2, p1, :cond_4

    if-ne p0, v0, :cond_3

    move-object v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :goto_3
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_2

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    aput-object v1, p0, v0

    return-object p0
.end method

.method public static import(Lorg/bouncycastle/math/ec/new$if;)Lorg/bouncycastle/math/ec/new$if;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new$if;->b()Lorg/bouncycastle/math/ec/new$if;

    move-result-object p0

    return-object p0
.end method

.method public static native(BLorg/bouncycastle/math/ec/super;)[B
    .locals 9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/this;->final(BLorg/bouncycastle/math/ec/super;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    :goto_1
    new-array v1, v1, [B

    iget-object v2, p1, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v4, v0

    new-array p0, v4, [B

    invoke-static {v1, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    aget-byte v4, v1, v5

    if-ne v4, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_4

    :cond_5
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_4
    move v4, v5

    goto :goto_5

    :cond_6
    aput-byte v3, v1, v5

    :goto_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ne p0, v0, :cond_7

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    goto :goto_2
.end method

.method public static new(Lorg/bouncycastle/math/ec/if$if;)B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if$if;->synchronized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static public(BLorg/bouncycastle/math/ec/super;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/super;)[B
    .locals 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/this;->final(BLorg/bouncycastle/math/ec/super;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p2, 0x22

    :goto_1
    new-array p2, v1, [B

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    return-object p2

    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_5

    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_5
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    if-gez v5, :cond_6

    neg-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_7

    aget-object v6, p5, v5

    iget-object v6, v6, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v5, p5, v5

    iget-object v5, v5, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_5

    :cond_7
    aget-object v6, p5, v5

    iget-object v6, v6, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v5, p5, v5

    iget-object v5, v5, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_5

    :cond_8
    aput-byte v3, p2, v4

    :goto_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    if-ne p0, v0, :cond_9

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_2
.end method

.method public static super(BLorg/bouncycastle/math/ec/goto;Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;
    .locals 2

    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/goto;->super(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/goto;->super(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p1

    invoke-virtual {p2, p2}, Lorg/bouncycastle/math/ec/goto;->super(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/math/ec/goto;->import(I)Lorg/bouncycastle/math/ec/goto;

    move-result-object p2

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/goto;->public(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static this(Lorg/bouncycastle/math/ec/if$if;)[Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if$if;->synchronized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/this;->for(I)B

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->native()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/this;->else(Ljava/math/BigInteger;)I

    move-result p0

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/ec/this;->if(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    aput-object v4, v0, v1

    aput-object p0, v0, v3

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static throw(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/super;
    .locals 13

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    move v10, p1

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/math/ec/this;->if(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    aget-object v11, v4, v2

    aget-object v5, p3, v1

    move-object v4, p0

    move-object v6, v11

    move v7, p2

    move v8, p1

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/this;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/goto;

    move-result-object v12

    aget-object v5, p3, v2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/ec/this;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/goto;

    move-result-object v4

    invoke-static {v12, v4, v0}, Lorg/bouncycastle/math/ec/this;->while(Lorg/bouncycastle/math/ec/goto;Lorg/bouncycastle/math/ec/goto;B)Lorg/bouncycastle/math/ec/super;

    move-result-object v0

    iget-object v4, v0, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, v0, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v2, p3, v2

    iget-object v4, v0, Lorg/bouncycastle/math/ec/super;->do:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v1, p3, v1

    iget-object v0, v0, Lorg/bouncycastle/math/ec/super;->if:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/super;

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static try(Lorg/bouncycastle/math/ec/for;)B
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static while(Lorg/bouncycastle/math/ec/goto;Lorg/bouncycastle/math/ec/goto;B)Lorg/bouncycastle/math/ec/super;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/goto;->catch()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/goto;->catch()I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/goto;->while()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/goto;->while()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/goto;->native(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/goto;->native(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p1

    invoke-virtual {p0, p0}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v4

    if-ne p2, v1, :cond_2

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/goto;->public(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p1

    if-ne p2, v1, :cond_3

    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/goto;->public(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/goto;->if(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object v5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/goto;->public(Lorg/bouncycastle/math/ec/goto;)Lorg/bouncycastle/math/ec/goto;

    move-result-object p0

    :goto_2
    sget-object p1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/goto;->try(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x0

    if-ltz v6, :cond_4

    sget-object v6, Lorg/bouncycastle/math/ec/this;->do:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/goto;->try(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_6

    goto :goto_3

    :cond_4
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/goto;->try(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_5

    :goto_3
    move v7, p2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    sget-object v6, Lorg/bouncycastle/math/ec/this;->do:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/goto;->try(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_7

    invoke-virtual {v5, p1}, Lorg/bouncycastle/math/ec/goto;->try(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_9

    goto :goto_4

    :cond_7
    sget-object p1, Lorg/bouncycastle/math/ec/this;->if:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/goto;->try(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_8

    :goto_4
    neg-int p0, p2

    int-to-byte v7, p0

    :cond_8
    move v0, v1

    :cond_9
    int-to-long p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long p1, v7

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/math/ec/super;

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/math/ec/super;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
