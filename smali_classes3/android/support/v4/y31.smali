.class public Landroid/support/v4/y31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final case:I = 0x10

.field private static final else:[I

.field private static final goto:[I


# instance fields
.field private do:[I

.field private for:[I

.field private if:[I

.field private new:Z

.field private try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/y31;->else:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/v4/y31;->goto:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/y31;->do:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/y31;->if:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/y31;->for:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/y31;->new:Z

    return-void
.end method

.method private break([I[I)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    xor-int/2addr v1, v3

    const/16 v3, 0x8

    invoke-direct {p0, v1, v3}, Landroid/support/v4/y31;->goto(II)I

    move-result v4

    const/16 v5, 0x18

    invoke-direct {p0, v1, v5}, Landroid/support/v4/y31;->goto(II)I

    move-result v6

    xor-int/2addr v4, v6

    xor-int/2addr v1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    xor-int/2addr v6, v1

    aput v6, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    xor-int/2addr v1, v7

    aput v1, p1, v6

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v1, v7, :cond_0

    aget v7, p1, v1

    aget v8, p2, v1

    xor-int/2addr v7, v8

    aput v7, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget p2, p1, v4

    aget v1, p1, v6

    xor-int/2addr p2, v1

    invoke-direct {p0, p2, v3}, Landroid/support/v4/y31;->goto(II)I

    move-result v1

    invoke-direct {p0, p2, v5}, Landroid/support/v4/y31;->goto(II)I

    move-result v3

    xor-int/2addr v1, v3

    xor-int/2addr p2, v1

    aget v1, p1, v0

    xor-int/2addr v1, p2

    aput v1, p1, v0

    aget v0, p1, v2

    xor-int/2addr p2, v0

    aput p2, p1, v2

    return-void
.end method

.method private case([I)V
    .locals 3

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-direct {p0, v1, v0}, Landroid/support/v4/y31;->goto(II)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Landroid/support/v4/y31;->goto(II)I

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x3

    aget v2, p1, v1

    invoke-direct {p0, v2, v0}, Landroid/support/v4/y31;->goto(II)I

    move-result v0

    aput v0, p1, v1

    return-void
.end method

.method private do([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    return p1
.end method

.method private else([I)V
    .locals 3

    const/4 v0, 0x1

    aget v1, p1, v0

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Landroid/support/v4/y31;->goto(II)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2}, Landroid/support/v4/y31;->goto(II)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p1, v0

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Landroid/support/v4/y31;->goto(II)I

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method private for([BI[BI)I
    .locals 7

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Landroid/support/v4/y31;->do([BI)I

    move-result p1

    const/4 p2, 0x3

    aput p1, v0, p2

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    aget v1, v0, v2

    sget-object v5, Landroid/support/v4/y31;->goto:[I

    aget v5, v5, p1

    xor-int/2addr v1, v5

    aput v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/y31;->if:[I

    invoke-direct {p0, v0, v1}, Landroid/support/v4/y31;->break([I[I)V

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, v0}, Landroid/support/v4/y31;->case([I)V

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, v0}, Landroid/support/v4/y31;->new([I)V

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, v0}, Landroid/support/v4/y31;->else([I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/y31;->do:[I

    aget v5, v1, v2

    sget-object v6, Landroid/support/v4/y31;->goto:[I

    aget p1, v6, p1

    xor-int/2addr p1, v5

    aput p1, v1, v2

    iget-object p1, p0, Landroid/support/v4/y31;->if:[I

    invoke-direct {p0, v1, p1}, Landroid/support/v4/y31;->break([I[I)V

    iget-object p1, p0, Landroid/support/v4/y31;->do:[I

    aget p1, p1, v2

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/y31;->try(I[BI)V

    iget-object p1, p0, Landroid/support/v4/y31;->do:[I

    aget p1, p1, v3

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, p1, p3, v1}, Landroid/support/v4/y31;->try(I[BI)V

    iget-object p1, p0, Landroid/support/v4/y31;->do:[I

    aget p1, p1, v4

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, p1, p3, v1}, Landroid/support/v4/y31;->try(I[BI)V

    iget-object p1, p0, Landroid/support/v4/y31;->do:[I

    aget p1, p1, p2

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/y31;->try(I[BI)V

    return v0
.end method

.method private goto(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private if([BI[BI)I
    .locals 7

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Landroid/support/v4/y31;->do([BI)I

    move-result p1

    const/4 p2, 0x3

    aput p1, v0, p2

    iget-object p1, p0, Landroid/support/v4/y31;->if:[I

    iget-object v0, p0, Landroid/support/v4/y31;->for:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroid/support/v4/y31;->for:[I

    sget-object v0, Landroid/support/v4/y31;->else:[I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/y31;->break([I[I)V

    const/16 p1, 0x10

    const/16 v0, 0x10

    :goto_0
    iget-object v1, p0, Landroid/support/v4/y31;->do:[I

    iget-object v5, p0, Landroid/support/v4/y31;->for:[I

    if-lez v0, :cond_0

    invoke-direct {p0, v1, v5}, Landroid/support/v4/y31;->break([I[I)V

    iget-object v1, p0, Landroid/support/v4/y31;->do:[I

    aget v5, v1, v2

    sget-object v6, Landroid/support/v4/y31;->goto:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    aput v5, v1, v2

    invoke-direct {p0, v1}, Landroid/support/v4/y31;->case([I)V

    iget-object v1, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, v1}, Landroid/support/v4/y31;->new([I)V

    iget-object v1, p0, Landroid/support/v4/y31;->do:[I

    invoke-direct {p0, v1}, Landroid/support/v4/y31;->else([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v5}, Landroid/support/v4/y31;->break([I[I)V

    iget-object v1, p0, Landroid/support/v4/y31;->do:[I

    aget v5, v1, v2

    sget-object v6, Landroid/support/v4/y31;->goto:[I

    aget v0, v6, v0

    xor-int/2addr v0, v5

    aput v0, v1, v2

    aget v0, v1, v2

    invoke-direct {p0, v0, p3, p4}, Landroid/support/v4/y31;->try(I[BI)V

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    aget v0, v0, v3

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/y31;->try(I[BI)V

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    aget v0, v0, v4

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/y31;->try(I[BI)V

    iget-object v0, p0, Landroid/support/v4/y31;->do:[I

    aget p2, v0, p2

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/y31;->try(I[BI)V

    return p1
.end method

.method private new([I)V
    .locals 7

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x3

    aget v3, p1, v2

    xor-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    aget v5, p1, v4

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v3, v5

    xor-int/2addr v1, v3

    aput v1, p1, v0

    const/4 v1, 0x0

    aget v3, p1, v1

    aget v5, p1, v4

    aget v6, p1, v0

    and-int/2addr v5, v6

    xor-int/2addr v3, v5

    aput v3, p1, v1

    aget v3, p1, v2

    aget v5, p1, v1

    aput v5, p1, v2

    aput v3, p1, v1

    aget v3, p1, v4

    aget v5, p1, v1

    aget v6, p1, v0

    xor-int/2addr v5, v6

    aget v6, p1, v2

    xor-int/2addr v5, v6

    xor-int/2addr v3, v5

    aput v3, p1, v4

    aget v3, p1, v0

    aget v2, p1, v2

    xor-int/lit8 v2, v2, -0x1

    aget v5, p1, v4

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    xor-int/2addr v2, v3

    aput v2, p1, v0

    aget v2, p1, v1

    aget v3, p1, v4

    aget v0, p1, v0

    and-int/2addr v0, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method private this([B)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/y31;->if:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v4/y31;->if:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v4/y31;->if:[I

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/v4/y31;->if:[I

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y31;->do([BI)I

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-void
.end method

.method private try(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Landroid/support/v4/gr0;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/y31;->try:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/y31;->new:Z

    check-cast p2, Landroid/support/v4/gr0;

    invoke-virtual {p2}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/y31;->this([B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/y31;->new:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/y31;->try:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/y31;->for([BI[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/y31;->if([BI[BI)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/y31;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
