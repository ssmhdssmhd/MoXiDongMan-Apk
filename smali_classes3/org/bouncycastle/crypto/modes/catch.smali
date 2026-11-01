.class public Lorg/bouncycastle/crypto/modes/catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final default:I = 0x10


# instance fields
.field private break:[B

.field private case:I

.field private catch:[B

.field private class:[B

.field private const:[B

.field private do:Lorg/bouncycastle/crypto/BlockCipher;

.field private else:[B

.field private final:[B

.field private for:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private goto:[B

.field private if:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private import:I

.field private native:I

.field private new:Z

.field private public:J

.field private return:[B

.field private static:I

.field private super:[B

.field private switch:J

.field private this:[B

.field private throw:[B

.field private throws:J

.field private try:Z

.field private while:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/modes/catch;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Landroid/support/v4/f42;

    invoke-direct {p2}, Landroid/support/v4/f42;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->if:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipher required with a block size of 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private break(Z)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->throw:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->return:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/catch;->catch:[B

    invoke-static {v3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/modes/catch;->while:[B

    const/4 v3, -0x2

    iput v3, p0, Lorg/bouncycastle/crypto/modes/catch;->import:I

    iput v0, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    iput-wide v1, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Landroid/support/v4/q3;->c([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->const:[B

    :cond_1
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->try:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->this:[B

    if-eqz p1, :cond_3

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/modes/catch;->processAADBytes([BII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private case([B)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->import:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/catch;->import:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->while:[B

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    ushr-int/lit8 v1, v2, 0x8

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xd

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xc

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to process too many blocks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private do()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->try:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher needs to be initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private else()V
    .locals 8

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-lez v6, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->throw:[B

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->throw:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/catch;->return:[B

    invoke-direct {p0, v1, v6, v5, v0}, Lorg/bouncycastle/crypto/modes/catch;->try([B[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    iget v6, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    int-to-long v6, v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->throw:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private for([B[B)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/ne0;->volatile([B[B)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->if:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private goto([BI[BI)V
    .locals 8

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->else()V

    :cond_0
    new-array v2, v1, [B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/catch;->case([B)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    if-eqz v0, :cond_1

    invoke-static {v2, p1, p2}, Landroid/support/v4/ne0;->interface([B[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/modes/catch;->for([B[B)V

    const/4 p1, 0x0

    invoke-static {v2, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/modes/catch;->new([B[BI)V

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroid/support/v4/ne0;->strictfp([BI[BI[BI)V

    :goto_0
    iget-wide p1, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    return-void

    :cond_2
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private if([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/modes/catch;->try([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private new([B[BI)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/ne0;->interface([B[BI)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->if:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private this([BII[BI)V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/catch;->case([B)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, p2, v0, v2, p3}, Landroid/support/v4/ne0;->continue([BI[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/catch;->try([B[BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/catch;->try([B[BII)V

    invoke-static {p1, p2, v0, v2, p3}, Landroid/support/v4/ne0;->continue([BI[BII)V

    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    return-void
.end method

.method private try([B[BII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/ne0;->protected([B[BII)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->if:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/support/v4/tn0;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->do()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->else()V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/support/v4/f91;

    invoke-direct {p1, v4}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v1, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    if-lt v0, v1, :cond_b

    sub-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_a

    :goto_0
    if-lez v0, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    const/4 v7, 0x0

    move-object v5, p0

    move v8, v0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/modes/catch;->this([BII[BI)V

    :cond_3
    iget-wide v4, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    iget v1, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    const-wide/16 v8, 0x8

    const/16 v10, 0x10

    const/4 v11, 0x0

    cmp-long v12, v4, v6

    if-lez v12, :cond_7

    if-lez v1, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/catch;->return:[B

    invoke-direct {p0, v4, v5, v11, v1}, Lorg/bouncycastle/crypto/modes/catch;->try([B[BII)V

    :cond_4
    iget-wide v4, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->throw:[B

    invoke-static {v1, v2}, Landroid/support/v4/ne0;->volatile([B[B)V

    :cond_5
    iget-wide v1, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    mul-long v1, v1, v8

    const-wide/16 v3, 0x7f

    add-long/2addr v1, v3

    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    new-array v3, v10, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/catch;->for:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v4, :cond_6

    new-instance v4, Landroid/support/v4/w7;

    invoke-direct {v4}, Landroid/support/v4/w7;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/catch;->for:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/catch;->break:[B

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    :cond_6
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/catch;->for:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v4, v1, v2, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    invoke-static {v1, v3}, Landroid/support/v4/ne0;->class([B[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    invoke-static {v1, v2}, Landroid/support/v4/ne0;->volatile([B[B)V

    :cond_7
    new-array v1, v10, [B

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    mul-long v2, v2, v8

    invoke-static {v2, v3, v1, v11}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    mul-long v2, v2, v8

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/modes/catch;->for([B[B)V

    new-array v1, v10, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/catch;->catch:[B

    invoke-interface {v2, v3, v11, v1, v11}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    invoke-static {v1, v2}, Landroid/support/v4/ne0;->volatile([B[B)V

    iget v2, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/modes/catch;->const:[B

    invoke-static {v1, v11, v3, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->const:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    add-int/2addr p2, v2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    invoke-static {v1, v11, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    add-int/2addr v0, p1

    goto :goto_1

    :cond_8
    iget p1, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    new-array p2, p1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    invoke-static {v1, v0, p2, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->const:[B

    invoke-static {p1, p2}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_1
    invoke-direct {p0, v11}, Lorg/bouncycastle/crypto/modes/catch;->break(Z)V

    return v0

    :cond_9
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "mac check in GCM failed"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Landroid/support/v4/f91;

    invoke-direct {p1, v4}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Landroid/support/v4/tn0;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->const:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    :cond_1
    rem-int/lit8 v0, p1, 0x10

    sub-int/2addr p1, v0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->const:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/modes/catch;->try:Z

    instance-of v2, p2, Landroid/support/v4/new;

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v2, :cond_1

    check-cast p2, Landroid/support/v4/new;

    invoke-virtual {p2}, Landroid/support/v4/new;->new()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/new;->do()[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/catch;->this:[B

    invoke-virtual {p2}, Landroid/support/v4/new;->for()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    const/16 v6, 0x80

    if-gt v5, v6, :cond_0

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    div-int/2addr v5, v3

    iput v5, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    invoke-virtual {p2}, Landroid/support/v4/new;->if()Landroid/support/v4/gr0;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for MAC size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v2, p2, Landroid/support/v4/bc1;

    if-eqz v2, :cond_c

    check-cast p2, Landroid/support/v4/bc1;

    invoke-virtual {p2}, Landroid/support/v4/bc1;->do()[B

    move-result-object v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->this:[B

    iput v4, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    invoke-virtual {p2}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Landroid/support/v4/gr0;

    :goto_0
    if-eqz p1, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :cond_2
    iget v5, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    add-int/2addr v5, v4

    :goto_1
    new-array v5, v5, [B

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    if-eqz v2, :cond_b

    array-length v5, v2

    if-lt v5, v1, :cond_b

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->goto:[B

    if-eqz p1, :cond_5

    invoke-static {p1, v2}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "cannot reuse nonce for GCM encryption"

    if-eqz p2, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/catch;->else:[B

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Landroid/support/v4/gr0;->do()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->goto:[B

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->else:[B

    :cond_6
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, v1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->break:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->do:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p2, p1, p2, p1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->if:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->break:[B

    invoke-interface {p2, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->for:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->break:[B

    if-eqz p2, :cond_a

    :goto_3
    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->catch:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->goto:[B

    array-length v2, v0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_8

    array-length v2, v0

    invoke-static {v0, p1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->catch:[B

    const/16 v0, 0xf

    aput-byte v1, p2, v0

    goto :goto_4

    :cond_8
    array-length v1, v0

    invoke-direct {p0, p2, v0, v1}, Lorg/bouncycastle/crypto/modes/catch;->if([B[BI)V

    new-array p2, v4, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->goto:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v5, 0x8

    mul-long v0, v0, v5

    invoke-static {v0, v1, p2, v3}, Landroid/support/v4/ib1;->static(J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->catch:[B

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/modes/catch;->for([B[B)V

    :goto_4
    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->final:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->throw:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->return:[B

    iput p1, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->throws:J

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->catch:[B

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->while:[B

    const/4 p2, -0x2

    iput p2, p0, Lorg/bouncycastle/crypto/modes/catch;->import:I

    iput p1, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->public:J

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/catch;->this:[B

    if-eqz p2, :cond_9

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lorg/bouncycastle/crypto/modes/catch;->processAADBytes([BII)V

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key must be specified in initial init"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV must be at least 1 byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to GCM"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->do()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->return:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    const/16 p1, 0x10

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/modes/catch;->for([B[B)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->do()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/catch;->return:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/catch;->super:[B

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/modes/catch;->for([B[B)V

    iput v0, p0, Lorg/bouncycastle/crypto/modes/catch;->static:I

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/modes/catch;->switch:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->do()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    array-length p1, v0

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    invoke-direct {p0, v0, v2, p2, p3}, Lorg/bouncycastle/crypto/modes/catch;->goto([BI[BI)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    const/16 p2, 0x10

    if-eqz p1, :cond_0

    iput v2, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    iget p3, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    invoke-static {p1, p2, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    iput p1, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    :goto_0
    return p2

    :cond_1
    return v2
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/catch;->do()V

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/catch;->new:Z

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    if-eqz v0, :cond_1

    :goto_0
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    if-ne v3, v1, :cond_0

    invoke-direct {p0, v0, v2, p4, p5}, Lorg/bouncycastle/crypto/modes/catch;->goto([BI[BI)V

    iput v2, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    move p2, v4

    const/16 v0, 0x10

    goto :goto_1

    :cond_0
    move p2, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-lt p3, v1, :cond_2

    add-int v3, p5, v0

    invoke-direct {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/modes/catch;->goto([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 p3, p3, -0x10

    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_2
    if-lez p3, :cond_5

    iget-object p4, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p3, :cond_5

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    add-int v6, p2, v3

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    array-length v6, v4

    if-ne v5, v6, :cond_4

    add-int v5, p5, v0

    invoke-direct {p0, v4, v2, p4, v5}, Lorg/bouncycastle/crypto/modes/catch;->goto([BI[BI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/catch;->class:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    invoke-static {v4, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/crypto/modes/catch;->case:I

    iput v4, p0, Lorg/bouncycastle/crypto/modes/catch;->native:I

    add-int/lit8 v0, v0, 0x10

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v0

    :cond_6
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/catch;->break(Z)V

    return-void
.end method
