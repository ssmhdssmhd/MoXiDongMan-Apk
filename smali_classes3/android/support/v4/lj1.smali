.class public Landroid/support/v4/lj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final case:J = -0x481eae9d7512d595L

.field private static final else:J = -0x61c8864680b583ebL

.field private static final new:I = 0x40

.field private static final try:I = 0x8


# instance fields
.field private do:I

.field private for:Z

.field private if:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Landroid/support/v4/lj1;->do:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/lj1;->if:[J

    return-void
.end method

.method private case([B)V
    .locals 13

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-eq v3, v4, :cond_0

    div-int/lit8 v4, v3, 0x8

    aget-wide v5, v1, v4

    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    rem-int/lit8 v9, v3, 0x8

    mul-int/lit8 v9, v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/support/v4/lj1;->do:I

    const/4 v3, 0x1

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/support/v4/lj1;->if:[J

    const-wide v4, -0x481eae9d7512d595L    # -1.590398847350152E-39

    aput-wide v4, p1, v2

    const/4 p1, 0x1

    :goto_1
    iget-object v4, p0, Landroid/support/v4/lj1;->if:[J

    array-length v5, v4

    if-ge p1, v5, :cond_1

    add-int/lit8 v5, p1, -0x1

    aget-wide v5, v4, v5

    const-wide v7, -0x61c8864680b583ebL

    add-long/2addr v5, v7

    aput-wide v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    array-length p1, v4

    if-le v0, p1, :cond_2

    mul-int/lit8 p1, v0, 0x3

    goto :goto_2

    :cond_2
    array-length p1, v4

    mul-int/lit8 p1, p1, 0x3

    :goto_2
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v2, p1, :cond_3

    iget-object v10, p0, Landroid/support/v4/lj1;->if:[J

    aget-wide v11, v10, v4

    add-long/2addr v11, v6

    add-long/2addr v11, v8

    const-wide/16 v6, 0x3

    invoke-direct {p0, v11, v12, v6, v7}, Landroid/support/v4/lj1;->new(JJ)J

    move-result-wide v6

    aput-wide v6, v10, v4

    aget-wide v10, v1, v5

    add-long/2addr v10, v6

    add-long/2addr v10, v8

    add-long/2addr v8, v6

    invoke-direct {p0, v10, v11, v8, v9}, Landroid/support/v4/lj1;->new(JJ)J

    move-result-wide v8

    aput-wide v8, v1, v5

    add-int/2addr v4, v3

    iget-object v10, p0, Landroid/support/v4/lj1;->if:[J

    array-length v10, v10

    rem-int/2addr v4, v10

    add-int/2addr v5, v3

    rem-int/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private do([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, v2, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private else(J[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, v0, p4

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private for([BI[BI)I
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/support/v4/lj1;->do([BI)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v4/lj1;->if:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x8

    invoke-direct {p0, p1, p2}, Landroid/support/v4/lj1;->do([BI)J

    move-result-wide p1

    iget-object v2, p0, Landroid/support/v4/lj1;->if:[J

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    add-long/2addr p1, v4

    const/4 v2, 0x1

    :goto_0
    iget v4, p0, Landroid/support/v4/lj1;->do:I

    if-gt v2, v4, :cond_0

    xor-long/2addr v0, p1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v4/lj1;->new(JJ)J

    move-result-wide v0

    iget-object v4, p0, Landroid/support/v4/lj1;->if:[J

    mul-int/lit8 v5, v2, 0x2

    aget-wide v6, v4, v5

    add-long/2addr v0, v6

    xor-long/2addr p1, v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/lj1;->new(JJ)J

    move-result-wide p1

    iget-object v4, p0, Landroid/support/v4/lj1;->if:[J

    add-int/2addr v5, v3

    aget-wide v5, v4, v5

    add-long/2addr p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/support/v4/lj1;->else(J[BI)V

    add-int/lit8 p4, p4, 0x8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/lj1;->else(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private if([BI[BI)I
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/support/v4/lj1;->do([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x8

    invoke-direct {p0, p1, p2}, Landroid/support/v4/lj1;->do([BI)J

    move-result-wide p1

    iget v2, p0, Landroid/support/v4/lj1;->do:I

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/lj1;->if:[J

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-wide v5, v3, v5

    sub-long/2addr p1, v5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/lj1;->try(JJ)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iget-object v3, p0, Landroid/support/v4/lj1;->if:[J

    aget-wide v4, v3, v4

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v4/lj1;->try(JJ)J

    move-result-wide v0

    xor-long/2addr v0, p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v4/lj1;->if:[J

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/support/v4/lj1;->else(J[BI)V

    iget-object v0, p0, Landroid/support/v4/lj1;->if:[J

    aget-wide v1, v0, v3

    sub-long/2addr p1, v1

    add-int/lit8 p4, p4, 0x8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/lj1;->else(J[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private new(JJ)J
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr p3, v0

    long-to-int v0, p3

    shl-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    ushr-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private try(JJ)J
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr p3, v0

    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC5-64"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Landroid/support/v4/mj1;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v4/mj1;

    iput-boolean p1, p0, Landroid/support/v4/lj1;->for:Z

    invoke-virtual {p2}, Landroid/support/v4/mj1;->if()I

    move-result p1

    iput p1, p0, Landroid/support/v4/lj1;->do:I

    invoke-virtual {p2}, Landroid/support/v4/mj1;->do()[B

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/lj1;->case([B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC564 init - "

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
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/lj1;->for:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/lj1;->for([BI[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/lj1;->if([BI[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
