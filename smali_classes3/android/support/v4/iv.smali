.class public Landroid/support/v4/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final break:Ljava/math/BigInteger;

.field private static final catch:Ljava/math/BigInteger;

.field private static final this:Ljava/math/BigInteger;


# instance fields
.field private case:Ljava/security/SecureRandom;

.field private do:Lorg/bouncycastle/crypto/Digest;

.field private else:Z

.field private for:I

.field private goto:I

.field private if:I

.field private new:I

.field private try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/iv;->this:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/iv;->break:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/iv;->catch:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/iv;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private static break([B)V
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private case()Landroid/support/v4/hv;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, v0, Landroid/support/v4/iv;->for:I

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iget v4, v0, Landroid/support/v4/iv;->if:I

    add-int/lit8 v5, v4, -0x1

    div-int/2addr v5, v2

    add-int/lit8 v6, v4, -0x1

    rem-int/2addr v6, v2

    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v7, v6, [B

    :cond_0
    :goto_0
    iget-object v8, v0, Landroid/support/v4/iv;->case:Ljava/security/SecureRandom;

    invoke-virtual {v8, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v8, 0x0

    invoke-static {v1, v3, v7, v8}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v11, Landroid/support/v4/iv;->break:Ljava/math/BigInteger;

    iget v12, v0, Landroid/support/v4/iv;->for:I

    sub-int/2addr v12, v10

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v9

    iget v11, v0, Landroid/support/v4/iv;->for:I

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/support/v4/iv;->const(Ljava/math/BigInteger;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v11

    iget v12, v0, Landroid/support/v4/iv;->if:I

    mul-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_0

    const/4 v14, 0x1

    :goto_2
    if-gt v14, v5, :cond_2

    invoke-static {v11}, Landroid/support/v4/iv;->break([B)V

    mul-int v15, v14, v6

    sub-int v15, v4, v15

    invoke-static {v1, v11, v2, v15}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    mul-int v14, v5, v6

    sub-int v14, v4, v14

    invoke-static {v11}, Landroid/support/v4/iv;->break([B)V

    invoke-static {v1, v11, v7, v8}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    sub-int v15, v6, v14

    invoke-static {v7, v15, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v14, v2, v8

    or-int/lit8 v14, v14, -0x80

    int-to-byte v14, v14

    aput-byte v14, v2, v8

    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v10, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v8, Landroid/support/v4/iv;->break:Ljava/math/BigInteger;

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Landroid/support/v4/iv;->if:I

    if-eq v14, v15, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {v0, v8}, Landroid/support/v4/iv;->const(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget v2, v0, Landroid/support/v4/iv;->goto:I

    if-ltz v2, :cond_4

    invoke-static {v1, v8, v9, v3, v2}, Landroid/support/v4/iv;->for(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroid/support/v4/hv;

    new-instance v4, Landroid/support/v4/mv;

    iget v5, v0, Landroid/support/v4/iv;->goto:I

    invoke-direct {v4, v3, v13, v5}, Landroid/support/v4/mv;-><init>([BII)V

    invoke-direct {v2, v8, v9, v1, v4}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/mv;)V

    return-object v2

    :cond_4
    iget-object v1, v0, Landroid/support/v4/iv;->case:Ljava/security/SecureRandom;

    invoke-static {v8, v9, v1}, Landroid/support/v4/iv;->if(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Landroid/support/v4/hv;

    new-instance v4, Landroid/support/v4/mv;

    invoke-direct {v4, v3, v13}, Landroid/support/v4/mv;-><init>([BI)V

    invoke-direct {v2, v8, v9, v1, v4}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/mv;)V

    return-object v2

    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_1
.end method

.method private const(Ljava/math/BigInteger;)Z
    .locals 1

    iget v0, p0, Landroid/support/v4/iv;->new:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p1

    return p1
.end method

.method private static do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    sget-object v0, Landroid/support/v4/iv;->break:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Landroid/support/v4/iv;->catch:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    sget-object v1, Landroid/support/v4/iv;->catch:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/util/do;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    return-object v1
.end method

.method private static else(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method private static for(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 6

    sget-object v0, Landroid/support/v4/iv;->break:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-string v0, "6767656E"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    array-length v4, v0

    invoke-static {v0, v5, v3, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x3

    int-to-byte p3, p4

    aput-byte p3, v3, v1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    const/4 p4, 0x1

    :goto_0
    const/high16 v0, 0x10000

    if-ge p4, v0, :cond_1

    invoke-static {v3}, Landroid/support/v4/iv;->break([B)V

    invoke-static {p0, v3, p3, v5}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/support/v4/iv;->catch:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static goto(I)I
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 p0, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x30

    :goto_0
    return p0
.end method

.method private static if(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/iv;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static this(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private try()Landroid/support/v4/hv;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v5, v1, [B

    iget v6, v0, Landroid/support/v4/iv;->if:I

    add-int/lit8 v7, v6, -0x1

    div-int/lit16 v7, v7, 0xa0

    div-int/lit8 v6, v6, 0x8

    new-array v8, v6, [B

    iget-object v9, v0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    instance-of v9, v9, Landroid/support/v4/wp1;

    if-eqz v9, :cond_6

    :cond_0
    :goto_0
    iget-object v9, v0, Landroid/support/v4/iv;->case:Ljava/security/SecureRandom;

    invoke-virtual {v9, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v9, v0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-static {v9, v2, v3, v10}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-static {v2, v10, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Landroid/support/v4/iv;->break([B)V

    iget-object v9, v0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v9, v4, v4, v10}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    const/4 v9, 0x0

    :goto_1
    if-eq v9, v1, :cond_1

    aget-byte v11, v3, v9

    aget-byte v12, v4, v9

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    aget-byte v9, v5, v10

    or-int/lit8 v9, v9, -0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    const/16 v9, 0x13

    aget-byte v11, v5, v9

    const/4 v12, 0x1

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v12, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v9}, Landroid/support/v4/iv;->const(Ljava/math/BigInteger;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v11

    invoke-static {v11}, Landroid/support/v4/iv;->break([B)V

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0x1000

    if-ge v13, v14, :cond_0

    const/4 v14, 0x1

    :goto_3
    if-gt v14, v7, :cond_3

    invoke-static {v11}, Landroid/support/v4/iv;->break([B)V

    iget-object v15, v0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    mul-int/lit8 v16, v14, 0x14

    sub-int v1, v6, v16

    invoke-static {v15, v11, v8, v1}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x14

    goto :goto_3

    :cond_3
    mul-int/lit8 v1, v7, 0x14

    sub-int v1, v6, v1

    invoke-static {v11}, Landroid/support/v4/iv;->break([B)V

    iget-object v14, v0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v14, v11, v3, v10}, Landroid/support/v4/iv;->this(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    rsub-int/lit8 v14, v1, 0x14

    invoke-static {v3, v14, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v8, v10

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v8, v10

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v12, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    sget-object v15, Landroid/support/v4/iv;->break:Ljava/math/BigInteger;

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Landroid/support/v4/iv;->if:I

    if-eq v14, v15, :cond_4

    goto :goto_4

    :cond_4
    invoke-direct {v0, v1}, Landroid/support/v4/iv;->const(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v3, v0, Landroid/support/v4/iv;->case:Ljava/security/SecureRandom;

    invoke-static {v1, v9, v3}, Landroid/support/v4/iv;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Landroid/support/v4/hv;

    new-instance v5, Landroid/support/v4/mv;

    invoke-direct {v5, v2, v13}, Landroid/support/v4/mv;-><init>([BI)V

    invoke-direct {v4, v1, v9, v3, v5}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/mv;)V

    return-object v4

    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x14

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public catch(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/iv;->if:I

    invoke-static {p1}, Landroid/support/v4/iv;->else(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/iv;->for:I

    iput p2, p0, Landroid/support/v4/iv;->new:I

    iget p1, p0, Landroid/support/v4/iv;->if:I

    invoke-static {p1}, Landroid/support/v4/iv;->goto(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v4/iv;->try:I

    iput-object p3, p0, Landroid/support/v4/iv;->case:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/iv;->else:Z

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/iv;->goto:I

    return-void
.end method

.method public class(Landroid/support/v4/gv;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v4/gv;->if()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/gv;->for()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_7

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_7

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_7

    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 160 for L = 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 224 or 256 for L = 2048"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 256 for L = 3072"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    iget-object v2, p0, Landroid/support/v4/iv;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_6

    iput v0, p0, Landroid/support/v4/iv;->if:I

    iput v1, p0, Landroid/support/v4/iv;->for:I

    invoke-virtual {p1}, Landroid/support/v4/gv;->do()I

    move-result v1

    iput v1, p0, Landroid/support/v4/iv;->new:I

    invoke-static {v0}, Landroid/support/v4/iv;->goto(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/iv;->new:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/iv;->try:I

    invoke-virtual {p1}, Landroid/support/v4/gv;->new()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/iv;->case:Ljava/security/SecureRandom;

    iput-boolean v2, p0, Landroid/support/v4/iv;->else:Z

    invoke-virtual {p1}, Landroid/support/v4/gv;->try()I

    move-result p1

    iput p1, p0, Landroid/support/v4/iv;->goto:I

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Digest output size too small for value of N"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new()Landroid/support/v4/hv;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/iv;->else:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/iv;->case()Landroid/support/v4/hv;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/iv;->try()Landroid/support/v4/hv;

    move-result-object v0

    :goto_0
    return-object v0
.end method
