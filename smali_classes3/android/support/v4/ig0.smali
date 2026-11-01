.class public Landroid/support/v4/ig0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final native:I = 0x20

.field private static final public:[B


# instance fields
.field private break:[B

.field private case:[B

.field private catch:[B

.field public class:[B

.field public const:[S

.field private do:[B

.field private else:I

.field public final:[S

.field private for:[B

.field private goto:J

.field private if:[B

.field public import:[B

.field private new:[B

.field public super:[B

.field private this:Lorg/bouncycastle/crypto/BlockCipher;

.field public throw:[B

.field private try:[[B

.field public while:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/ig0;->public:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->do:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->if:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->for:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->new:[B

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Landroid/support/v4/ig0;->try:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->case:[B

    new-instance v1, Landroid/support/v4/mf0;

    invoke-direct {v1}, Landroid/support/v4/mf0;-><init>()V

    iput-object v1, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->catch:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->class:[B

    const/16 v1, 0x10

    new-array v2, v1, [S

    iput-object v2, p0, Landroid/support/v4/ig0;->const:[S

    new-array v1, v1, [S

    iput-object v1, p0, Landroid/support/v4/ig0;->final:[S

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->super:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->throw:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->while:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/v4/ig0;->import:[B

    const-string v0, "D-A"

    invoke-static {v0}, Landroid/support/v4/mf0;->case(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ig0;->break:[B

    iget-object v1, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v2, Landroid/support/v4/dc1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/support/v4/dc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v0, 0x1

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Landroid/support/v4/ig0;->reset()V

    return-void

    :array_0
    .array-data 4
        0x4
        0x20
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v4/ig0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->do:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->if:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->for:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->new:[B

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Landroid/support/v4/ig0;->try:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->case:[B

    new-instance v1, Landroid/support/v4/mf0;

    invoke-direct {v1}, Landroid/support/v4/mf0;-><init>()V

    iput-object v1, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->catch:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->class:[B

    const/16 v1, 0x10

    new-array v2, v1, [S

    iput-object v2, p0, Landroid/support/v4/ig0;->const:[S

    new-array v1, v1, [S

    iput-object v1, p0, Landroid/support/v4/ig0;->final:[S

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->super:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->throw:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->while:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/v4/ig0;->import:[B

    invoke-virtual {p0, p1}, Landroid/support/v4/ig0;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void

    :array_0
    .array-data 4
        0x4
        0x20
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->do:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->if:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->for:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->new:[B

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Landroid/support/v4/ig0;->try:[[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->case:[B

    new-instance v1, Landroid/support/v4/mf0;

    invoke-direct {v1}, Landroid/support/v4/mf0;-><init>()V

    iput-object v1, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->catch:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->class:[B

    const/16 v1, 0x10

    new-array v2, v1, [S

    iput-object v2, p0, Landroid/support/v4/ig0;->const:[S

    new-array v1, v1, [S

    iput-object v1, p0, Landroid/support/v4/ig0;->final:[S

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->super:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->throw:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/ig0;->while:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/v4/ig0;->import:[B

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ig0;->break:[B

    iget-object v0, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Landroid/support/v4/dc1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/support/v4/dc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Landroid/support/v4/ig0;->reset()V

    return-void

    :array_0
    .array-data 4
        0x4
        0x20
    .end array-data
.end method

.method private case()V
    .locals 4

    iget-wide v0, p0, Landroid/support/v4/ig0;->goto:J

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    iget-object v2, p0, Landroid/support/v4/ig0;->if:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/ib1;->extends(J[BI)V

    :goto_0
    iget v0, p0, Landroid/support/v4/ig0;->else:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/ig0;->update(B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/ig0;->if:[B

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/ig0;->goto([BI)V

    iget-object v0, p0, Landroid/support/v4/ig0;->new:[B

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/ig0;->goto([BI)V

    return-void
.end method

.method private do([B)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/ig0;->class:[B

    aget-byte v3, p1, v1

    add-int/lit8 v4, v1, 0x8

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    invoke-static {p1, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v4/ig0;->class:[B

    invoke-static {v3, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private else([B)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/ig0;->const:[S

    invoke-direct {p0, p1, v0}, Landroid/support/v4/ig0;->new([B[S)V

    iget-object v0, p0, Landroid/support/v4/ig0;->final:[S

    iget-object v1, p0, Landroid/support/v4/ig0;->const:[S

    const/4 v2, 0x0

    aget-short v3, v1, v2

    const/4 v4, 0x1

    aget-short v5, v1, v4

    xor-int/2addr v3, v5

    const/4 v5, 0x2

    aget-short v5, v1, v5

    xor-int/2addr v3, v5

    const/4 v5, 0x3

    aget-short v5, v1, v5

    xor-int/2addr v3, v5

    const/16 v5, 0xc

    aget-short v5, v1, v5

    xor-int/2addr v3, v5

    const/16 v5, 0xf

    aget-short v6, v1, v5

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v0, v5

    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/ig0;->final:[S

    invoke-direct {p0, v0, p1}, Landroid/support/v4/ig0;->try([S[B)V

    return-void
.end method

.method private for([B)[B
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/ig0;->catch:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/ig0;->catch:[B

    return-object p1
.end method

.method private if([B[BI[BI)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Landroid/support/v4/gr0;

    invoke-direct {v1, p1}, Landroid/support/v4/gr0;-><init>([B)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, p4, p5, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void
.end method

.method private new([B[S)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private this([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/ig0;->new:[B

    array-length v3, v2

    if-eq v0, v3, :cond_0

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-byte v1, v3

    aput-byte v1, v2, v0

    ushr-int/lit8 v1, v3, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private try([S[B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-short v3, p1, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Landroid/support/v4/ig0;

    invoke-direct {v0, p0}, Landroid/support/v4/ig0;-><init>(Landroid/support/v4/ig0;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/ig0;->case()V

    iget-object v0, p0, Landroid/support/v4/ig0;->do:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/support/v4/ig0;->reset()V

    const/16 p1, 0x20

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST3411"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public goto([BI)V
    .locals 9

    iget-object v0, p0, Landroid/support/v4/ig0;->for:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroid/support/v4/ig0;->do:[B

    iget-object p2, p0, Landroid/support/v4/ig0;->throw:[B

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroid/support/v4/ig0;->for:[B

    iget-object p2, p0, Landroid/support/v4/ig0;->while:[B

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_0

    iget-object p2, p0, Landroid/support/v4/ig0;->import:[B

    iget-object v0, p0, Landroid/support/v4/ig0;->throw:[B

    aget-byte v0, v0, p1

    iget-object v3, p0, Landroid/support/v4/ig0;->while:[B

    aget-byte v3, v3, p1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/ig0;->import:[B

    invoke-direct {p0, p1}, Landroid/support/v4/ig0;->for([B)[B

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/ig0;->super:[B

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/v4/ig0;->do:[B

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/ig0;->if([B[BI[BI)V

    const/4 p1, 0x1

    :goto_1
    const/4 p2, 0x4

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Landroid/support/v4/ig0;->throw:[B

    invoke-direct {p0, p2}, Landroid/support/v4/ig0;->do([B)[B

    move-result-object p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/support/v4/ig0;->throw:[B

    aget-byte v4, p2, v0

    iget-object v5, p0, Landroid/support/v4/ig0;->try:[[B

    aget-object v5, v5, p1

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Landroid/support/v4/ig0;->while:[B

    invoke-direct {p0, p2}, Landroid/support/v4/ig0;->do([B)[B

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v4/ig0;->do([B)[B

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/ig0;->while:[B

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/ig0;->import:[B

    iget-object v3, p0, Landroid/support/v4/ig0;->throw:[B

    aget-byte v3, v3, p2

    iget-object v4, p0, Landroid/support/v4/ig0;->while:[B

    aget-byte v4, v4, p2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_2
    iget-object p2, p0, Landroid/support/v4/ig0;->import:[B

    invoke-direct {p0, p2}, Landroid/support/v4/ig0;->for([B)[B

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/ig0;->super:[B

    mul-int/lit8 v8, p1, 0x8

    iget-object v7, p0, Landroid/support/v4/ig0;->do:[B

    move-object v3, p0

    move v6, v8

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/ig0;->if([B[BI[BI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_4
    const/16 p2, 0xc

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Landroid/support/v4/ig0;->super:[B

    invoke-direct {p0, p2}, Landroid/support/v4/ig0;->else([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v2, :cond_5

    iget-object p2, p0, Landroid/support/v4/ig0;->super:[B

    aget-byte v0, p2, p1

    iget-object v3, p0, Landroid/support/v4/ig0;->for:[B

    aget-byte v3, v3, p1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_5
    iget-object p1, p0, Landroid/support/v4/ig0;->super:[B

    invoke-direct {p0, p1}, Landroid/support/v4/ig0;->else([B)V

    const/4 p1, 0x0

    :goto_6
    if-ge p1, v2, :cond_6

    iget-object p2, p0, Landroid/support/v4/ig0;->super:[B

    iget-object v0, p0, Landroid/support/v4/ig0;->do:[B

    aget-byte v0, v0, p1

    aget-byte v3, p2, p1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_7
    const/16 p2, 0x3d

    if-ge p1, p2, :cond_7

    iget-object p2, p0, Landroid/support/v4/ig0;->super:[B

    invoke-direct {p0, p2}, Landroid/support/v4/ig0;->else([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_7
    iget-object p1, p0, Landroid/support/v4/ig0;->super:[B

    iget-object p2, p0, Landroid/support/v4/ig0;->do:[B

    array-length v0, p2

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/ig0;->goto:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/ig0;->else:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/ig0;->do:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/support/v4/ig0;->if:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/ig0;->for:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Landroid/support/v4/ig0;->try:[[B

    const/4 v3, 0x1

    aget-object v4, v2, v3

    array-length v4, v4

    if-ge v1, v4, :cond_3

    aget-object v2, v2, v3

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Landroid/support/v4/ig0;->try:[[B

    const/4 v3, 0x3

    aget-object v4, v2, v3

    array-length v4, v4

    if-ge v1, v4, :cond_4

    aget-object v2, v2, v3

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Landroid/support/v4/ig0;->new:[B

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/support/v4/ig0;->case:[B

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    sget-object v1, Landroid/support/v4/ig0;->public:[B

    iget-object v2, p0, Landroid/support/v4/ig0;->try:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 5

    check-cast p1, Landroid/support/v4/ig0;

    iget-object v0, p1, Landroid/support/v4/ig0;->break:[B

    iput-object v0, p0, Landroid/support/v4/ig0;->break:[B

    iget-object v1, p0, Landroid/support/v4/ig0;->this:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v2, Landroid/support/v4/dc1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/support/v4/dc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v0, 0x1

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Landroid/support/v4/ig0;->reset()V

    iget-object v1, p1, Landroid/support/v4/ig0;->do:[B

    iget-object v2, p0, Landroid/support/v4/ig0;->do:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/support/v4/ig0;->if:[B

    iget-object v2, p0, Landroid/support/v4/ig0;->if:[B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/support/v4/ig0;->for:[B

    iget-object v2, p0, Landroid/support/v4/ig0;->for:[B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/support/v4/ig0;->new:[B

    iget-object v2, p0, Landroid/support/v4/ig0;->new:[B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/support/v4/ig0;->try:[[B

    aget-object v2, v1, v0

    iget-object v3, p0, Landroid/support/v4/ig0;->try:[[B

    aget-object v3, v3, v0

    aget-object v0, v1, v0

    array-length v0, v0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Landroid/support/v4/ig0;->try:[[B

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/support/v4/ig0;->try:[[B

    aget-object v3, v3, v1

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Landroid/support/v4/ig0;->try:[[B

    const/4 v1, 0x3

    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/support/v4/ig0;->try:[[B

    aget-object v3, v3, v1

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Landroid/support/v4/ig0;->case:[B

    iget-object v1, p0, Landroid/support/v4/ig0;->case:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Landroid/support/v4/ig0;->else:I

    iput v0, p0, Landroid/support/v4/ig0;->else:I

    iget-wide v0, p1, Landroid/support/v4/ig0;->goto:J

    iput-wide v0, p0, Landroid/support/v4/ig0;->goto:J

    return-void
.end method

.method public update(B)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ig0;->case:[B

    iget v1, p0, Landroid/support/v4/ig0;->else:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/ig0;->else:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/ig0;->this([B)V

    iget-object p1, p0, Landroid/support/v4/ig0;->case:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ig0;->goto([BI)V

    iput v0, p0, Landroid/support/v4/ig0;->else:I

    :cond_0
    iget-wide v0, p0, Landroid/support/v4/ig0;->goto:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v4/ig0;->goto:J

    return-void
.end method

.method public update([BII)V
    .locals 5

    :goto_0
    iget v0, p0, Landroid/support/v4/ig0;->else:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v4/ig0;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v4/ig0;->case:[B

    array-length v1, v0

    if-le p3, v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/ig0;->case:[B

    invoke-direct {p0, v0}, Landroid/support/v4/ig0;->this([B)V

    iget-object v0, p0, Landroid/support/v4/ig0;->case:[B

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/ig0;->goto([BI)V

    iget-object v0, p0, Landroid/support/v4/ig0;->case:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Landroid/support/v4/ig0;->goto:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/support/v4/ig0;->goto:J

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v4/ig0;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
