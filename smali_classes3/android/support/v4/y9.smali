.class public Landroid/support/v4/y9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final const:[I

.field private static final final:[[B

.field private static final super:I = 0xa

.field private static final throw:I = 0x40


# instance fields
.field private break:I

.field private case:[B

.field private catch:I

.field private class:I

.field private do:I

.field private else:I

.field private for:[B

.field private goto:[I

.field private if:I

.field private new:[B

.field private this:[I

.field private try:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v4/y9;->const:[I

    const/16 v1, 0xa

    new-array v1, v1, [[B

    const/16 v2, 0x10

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_7

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_8

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v0, v2, [B

    fill-array-data v0, :array_a

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Landroid/support/v4/y9;->final:[[B

    return-void

    :array_0
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x8t
        0xct
        0x0t
        0x5t
        0x2t
        0xft
        0xdt
        0xat
        0xet
        0x3t
        0x6t
        0x7t
        0x1t
        0x9t
        0x4t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x9t
        0x3t
        0x1t
        0xdt
        0xct
        0xbt
        0xet
        0x2t
        0x6t
        0x5t
        0xat
        0x4t
        0x0t
        0xft
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0x9t
        0x0t
        0x5t
        0x7t
        0x2t
        0x4t
        0xat
        0xft
        0xet
        0x1t
        0xbt
        0xct
        0x6t
        0x8t
        0x3t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0xct
        0x6t
        0xat
        0x0t
        0xbt
        0x8t
        0x3t
        0x4t
        0xdt
        0x7t
        0x5t
        0xft
        0xet
        0x1t
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xct
        0x5t
        0x1t
        0xft
        0xet
        0xdt
        0x4t
        0xat
        0x0t
        0x7t
        0x6t
        0x3t
        0x9t
        0x2t
        0x8t
        0xbt
    .end array-data

    :array_8
    .array-data 1
        0xdt
        0xbt
        0x7t
        0xet
        0xct
        0x1t
        0x3t
        0x9t
        0x5t
        0x0t
        0xft
        0x4t
        0x8t
        0x6t
        0x2t
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x6t
        0xft
        0xet
        0x9t
        0xbt
        0x3t
        0x0t
        0x8t
        0xct
        0x2t
        0xdt
        0x7t
        0x1t
        0x4t
        0xat
        0x5t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x2t
        0x8t
        0x4t
        0x7t
        0x6t
        0x1t
        0x5t
        0xft
        0xbt
        0x9t
        0xet
        0x3t
        0xct
        0xdt
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/support/v4/y9;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Landroid/support/v4/y9;->do:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/y9;->if:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/y9;->for:[B

    iput-object v1, p0, Landroid/support/v4/y9;->new:[B

    iput-object v1, p0, Landroid/support/v4/y9;->try:[B

    iput-object v1, p0, Landroid/support/v4/y9;->case:[B

    iput v0, p0, Landroid/support/v4/y9;->else:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v4/y9;->goto:[I

    iput-object v1, p0, Landroid/support/v4/y9;->this:[I

    iput v0, p0, Landroid/support/v4/y9;->break:I

    iput v0, p0, Landroid/support/v4/y9;->catch:I

    iput v0, p0, Landroid/support/v4/y9;->class:I

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    const/16 v2, 0x100

    if-gt p1, v2, :cond_0

    rem-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_0

    const/16 v2, 0x40

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/support/v4/y9;->case:[B

    iput v0, p0, Landroid/support/v4/y9;->if:I

    div-int/2addr p1, v1

    iput p1, p0, Landroid/support/v4/y9;->do:I

    invoke-direct {p0}, Landroid/support/v4/y9;->try()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BLAKE2s digest bit length must be a multiple of 8 and not greater than 256"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/support/v4/y9;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Landroid/support/v4/y9;->do:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/y9;->if:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/y9;->for:[B

    iput-object v1, p0, Landroid/support/v4/y9;->new:[B

    iput-object v1, p0, Landroid/support/v4/y9;->try:[B

    iput-object v1, p0, Landroid/support/v4/y9;->case:[B

    iput v0, p0, Landroid/support/v4/y9;->else:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v4/y9;->goto:[I

    iput-object v1, p0, Landroid/support/v4/y9;->this:[I

    iput v0, p0, Landroid/support/v4/y9;->break:I

    iput v0, p0, Landroid/support/v4/y9;->catch:I

    iput v0, p0, Landroid/support/v4/y9;->class:I

    iget v0, p1, Landroid/support/v4/y9;->else:I

    iput v0, p0, Landroid/support/v4/y9;->else:I

    iget-object v0, p1, Landroid/support/v4/y9;->case:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y9;->case:[B

    iget v0, p1, Landroid/support/v4/y9;->if:I

    iput v0, p0, Landroid/support/v4/y9;->if:I

    iget-object v0, p1, Landroid/support/v4/y9;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y9;->try:[B

    iget v0, p1, Landroid/support/v4/y9;->do:I

    iput v0, p0, Landroid/support/v4/y9;->do:I

    iget-object v0, p1, Landroid/support/v4/y9;->this:[I

    invoke-static {v0}, Landroid/support/v4/q3;->while([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y9;->this:[I

    iget-object p1, p1, Landroid/support/v4/y9;->new:[B

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y9;->new:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Landroid/support/v4/y9;->do:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/y9;->if:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/y9;->for:[B

    iput-object v2, p0, Landroid/support/v4/y9;->new:[B

    iput-object v2, p0, Landroid/support/v4/y9;->try:[B

    iput-object v2, p0, Landroid/support/v4/y9;->case:[B

    iput v1, p0, Landroid/support/v4/y9;->else:I

    const/16 v3, 0x10

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v4/y9;->goto:[I

    iput-object v2, p0, Landroid/support/v4/y9;->this:[I

    iput v1, p0, Landroid/support/v4/y9;->break:I

    iput v1, p0, Landroid/support/v4/y9;->catch:I

    iput v1, p0, Landroid/support/v4/y9;->class:I

    const/16 v2, 0x40

    new-array v3, v2, [B

    iput-object v3, p0, Landroid/support/v4/y9;->case:[B

    if-eqz p1, :cond_1

    array-length v3, p1

    if-gt v3, v0, :cond_0

    array-length v3, p1

    new-array v3, v3, [B

    iput-object v3, p0, Landroid/support/v4/y9;->try:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    iput v3, p0, Landroid/support/v4/y9;->if:I

    iget-object v3, p0, Landroid/support/v4/y9;->case:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Landroid/support/v4/y9;->else:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keys > 32 are not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput v0, p0, Landroid/support/v4/y9;->do:I

    invoke-direct {p0}, Landroid/support/v4/y9;->try()V

    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Landroid/support/v4/y9;->do:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/y9;->if:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/y9;->for:[B

    iput-object v2, p0, Landroid/support/v4/y9;->new:[B

    iput-object v2, p0, Landroid/support/v4/y9;->try:[B

    iput-object v2, p0, Landroid/support/v4/y9;->case:[B

    iput v1, p0, Landroid/support/v4/y9;->else:I

    const/16 v3, 0x10

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v4/y9;->goto:[I

    iput-object v2, p0, Landroid/support/v4/y9;->this:[I

    iput v1, p0, Landroid/support/v4/y9;->break:I

    iput v1, p0, Landroid/support/v4/y9;->catch:I

    iput v1, p0, Landroid/support/v4/y9;->class:I

    const/16 v2, 0x40

    new-array v3, v2, [B

    iput-object v3, p0, Landroid/support/v4/y9;->case:[B

    const/4 v3, 0x1

    if-lt p2, v3, :cond_6

    if-gt p2, v0, :cond_6

    iput p2, p0, Landroid/support/v4/y9;->do:I

    const/16 p2, 0x8

    if-eqz p3, :cond_1

    array-length v3, p3

    if-ne v3, p2, :cond_0

    new-array v3, p2, [B

    iput-object v3, p0, Landroid/support/v4/y9;->for:[B

    array-length v4, p3

    invoke-static {p3, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Salt length must be exactly 8 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    array-length p3, p4

    if-ne p3, p2, :cond_2

    new-array p2, p2, [B

    iput-object p2, p0, Landroid/support/v4/y9;->new:[B

    array-length p3, p4

    invoke-static {p4, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Personalization length must be exactly 8 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    array-length p2, p1

    if-gt p2, v0, :cond_4

    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Landroid/support/v4/y9;->try:[B

    array-length p3, p1

    invoke-static {p1, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p1

    iput p2, p0, Landroid/support/v4/y9;->if:I

    iget-object p2, p0, Landroid/support/v4/y9;->case:[B

    array-length p3, p1

    invoke-static {p1, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Landroid/support/v4/y9;->else:I

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Keys > 32 bytes are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-direct {p0}, Landroid/support/v4/y9;->try()V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid digest length (required: 1 - 32)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private case()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/y9;->this:[I

    iget-object v1, p0, Landroid/support/v4/y9;->goto:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Landroid/support/v4/y9;->const:[I

    iget-object v1, p0, Landroid/support/v4/y9;->goto:[I

    iget-object v2, p0, Landroid/support/v4/y9;->this:[I

    array-length v2, v2

    const/4 v4, 0x4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v4/y9;->goto:[I

    iget v2, p0, Landroid/support/v4/y9;->break:I

    aget v3, v0, v4

    xor-int/2addr v2, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    iget v2, p0, Landroid/support/v4/y9;->catch:I

    const/4 v3, 0x5

    aget v3, v0, v3

    xor-int/2addr v2, v3

    const/16 v3, 0xd

    aput v2, v1, v3

    iget v2, p0, Landroid/support/v4/y9;->class:I

    const/4 v3, 0x6

    aget v3, v0, v3

    xor-int/2addr v2, v3

    const/16 v3, 0xe

    aput v2, v1, v3

    const/4 v2, 0x7

    aget v0, v0, v2

    const/16 v2, 0xf

    aput v0, v1, v2

    return-void
.end method

.method private do(IIIIII)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/y9;->goto:[I

    aget v1, v0, p3

    aget v2, v0, p4

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aput v1, v0, p3

    aget p1, v0, p6

    aget v1, v0, p3

    xor-int/2addr p1, v1

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Landroid/support/v4/y9;->else(II)I

    move-result p1

    aput p1, v0, p6

    iget-object p1, p0, Landroid/support/v4/y9;->goto:[I

    aget v0, p1, p5

    aget v1, p1, p6

    add-int/2addr v0, v1

    aput v0, p1, p5

    aget v0, p1, p4

    aget v1, p1, p5

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Landroid/support/v4/y9;->else(II)I

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Landroid/support/v4/y9;->goto:[I

    aget v0, p1, p3

    aget v1, p1, p4

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    aput v0, p1, p3

    aget p2, p1, p6

    aget p3, p1, p3

    xor-int/2addr p2, p3

    const/16 p3, 0x8

    invoke-direct {p0, p2, p3}, Landroid/support/v4/y9;->else(II)I

    move-result p2

    aput p2, p1, p6

    iget-object p1, p0, Landroid/support/v4/y9;->goto:[I

    aget p2, p1, p5

    aget p3, p1, p6

    add-int/2addr p2, p3

    aput p2, p1, p5

    aget p2, p1, p4

    aget p3, p1, p5

    xor-int/2addr p2, p3

    const/4 p3, 0x7

    invoke-direct {p0, p2, p3}, Landroid/support/v4/y9;->else(II)I

    move-result p2

    aput p2, p1, p4

    return-void
.end method

.method private else(II)I
    .locals 1

    ushr-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private new([BI)V
    .locals 11

    invoke-direct {p0}, Landroid/support/v4/y9;->case()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Landroid/support/v4/ib1;->final([BI)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    const/16 p2, 0xa

    if-ge p1, p2, :cond_1

    sget-object v0, Landroid/support/v4/y9;->final:[[B

    aget-object v3, v0, p1

    aget-byte v3, v3, v2

    aget v5, v1, v3

    aget-object v3, v0, p1

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    aget v6, v1, v3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/16 v10, 0xc

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object v3, v0, p1

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    aget v5, v1, v3

    aget-object v3, v0, p1

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    aget v6, v1, v3

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object v3, v0, p1

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    aget v5, v1, v3

    aget-object v3, v0, p1

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    aget v6, v1, v3

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/16 v9, 0xa

    const/16 v10, 0xe

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object v3, v0, p1

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    aget v5, v1, v3

    aget-object v3, v0, p1

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    aget v6, v1, v3

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0xb

    const/16 v10, 0xf

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object v3, v0, p1

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    aget v5, v1, v3

    aget-object v3, v0, p1

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    aget v6, v1, v3

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/16 v9, 0xa

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object v3, v0, p1

    aget-byte p2, v3, p2

    aget v4, v1, p2

    aget-object p2, v0, p1

    const/16 v3, 0xb

    aget-byte p2, p2, v3

    aget v5, v1, p2

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/16 v8, 0xb

    const/16 v9, 0xc

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object p2, v0, p1

    const/16 v3, 0xc

    aget-byte p2, p2, v3

    aget v4, v1, p2

    aget-object p2, v0, p1

    const/16 v3, 0xd

    aget-byte p2, p2, v3

    aget v5, v1, p2

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/16 v9, 0xd

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/support/v4/y9;->do(IIIIII)V

    aget-object p2, v0, p1

    const/16 v3, 0xe

    aget-byte p2, p2, v3

    aget v4, v1, p2

    aget-object p2, v0, p1

    const/16 v0, 0xf

    aget-byte p2, p2, v0

    aget v5, v1, p2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0x9

    const/16 v9, 0xe

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/support/v4/y9;->do(IIIIII)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_1
    :goto_2
    iget-object p1, p0, Landroid/support/v4/y9;->this:[I

    array-length p2, p1

    if-ge v2, p2, :cond_2

    aget p2, p1, v2

    iget-object v0, p0, Landroid/support/v4/y9;->goto:[I

    aget v1, v0, v2

    xor-int/2addr p2, v1

    add-int/lit8 v1, v2, 0x8

    aget v0, v0, v1

    xor-int/2addr p2, v0

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private try()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/y9;->this:[I

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/y9;->this:[I

    sget-object v2, Landroid/support/v4/y9;->const:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    iget v5, p0, Landroid/support/v4/y9;->do:I

    iget v6, p0, Landroid/support/v4/y9;->if:I

    shl-int/lit8 v0, v6, 0x8

    or-int/2addr v0, v5

    const/high16 v5, 0x1010000

    or-int/2addr v0, v5

    xor-int/2addr v0, v4

    aput v0, v1, v3

    const/4 v0, 0x1

    aget v4, v2, v0

    aput v4, v1, v0

    const/4 v0, 0x2

    aget v4, v2, v0

    aput v4, v1, v0

    const/4 v0, 0x3

    aget v4, v2, v0

    aput v4, v1, v0

    const/4 v0, 0x4

    aget v4, v2, v0

    aput v4, v1, v0

    const/4 v4, 0x5

    aget v5, v2, v4

    aput v5, v1, v4

    iget-object v5, p0, Landroid/support/v4/y9;->for:[B

    if-eqz v5, :cond_0

    aget v6, v1, v0

    invoke-static {v5, v3}, Landroid/support/v4/ib1;->final([BI)I

    move-result v5

    xor-int/2addr v5, v6

    aput v5, v1, v0

    iget-object v1, p0, Landroid/support/v4/y9;->this:[I

    aget v5, v1, v4

    iget-object v6, p0, Landroid/support/v4/y9;->for:[B

    invoke-static {v6, v0}, Landroid/support/v4/ib1;->final([BI)I

    move-result v6

    xor-int/2addr v5, v6

    aput v5, v1, v4

    :cond_0
    iget-object v1, p0, Landroid/support/v4/y9;->this:[I

    const/4 v4, 0x6

    aget v5, v2, v4

    aput v5, v1, v4

    const/4 v5, 0x7

    aget v2, v2, v5

    aput v2, v1, v5

    iget-object v2, p0, Landroid/support/v4/y9;->new:[B

    if-eqz v2, :cond_1

    aget v6, v1, v4

    invoke-static {v2, v3}, Landroid/support/v4/ib1;->final([BI)I

    move-result v2

    xor-int/2addr v2, v6

    aput v2, v1, v4

    iget-object v1, p0, Landroid/support/v4/y9;->this:[I

    aget v2, v1, v5

    iget-object v3, p0, Landroid/support/v4/y9;->new:[B

    invoke-static {v3, v0}, Landroid/support/v4/ib1;->final([BI)I

    move-result v0

    xor-int/2addr v0, v2

    aput v0, v1, v5

    :cond_1
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/y9;->class:I

    iget v0, p0, Landroid/support/v4/y9;->break:I

    iget v1, p0, Landroid/support/v4/y9;->else:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/y9;->break:I

    if-gez v0, :cond_0

    neg-int v0, v0

    if-le v1, v0, :cond_0

    iget v0, p0, Landroid/support/v4/y9;->catch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/y9;->catch:I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/y9;->new([BI)V

    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Landroid/support/v4/y9;->goto:[I

    invoke-static {v0, v1}, Landroid/support/v4/q3;->g([II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/y9;->this:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x4

    iget v4, p0, Landroid/support/v4/y9;->do:I

    if-ge v3, v4, :cond_2

    aget v2, v2, v0

    invoke-static {v2}, Landroid/support/v4/ib1;->class(I)[B

    move-result-object v2

    iget v4, p0, Landroid/support/v4/y9;->do:I

    add-int/lit8 v5, v4, -0x4

    if-ge v3, v5, :cond_1

    add-int/2addr v3, p2

    const/4 v4, 0x4

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    add-int v5, p2, v3

    sub-int/2addr v4, v3

    invoke-static {v2, v1, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Landroid/support/v4/q3;->g([II)V

    invoke-virtual {p0}, Landroid/support/v4/y9;->reset()V

    iget p1, p0, Landroid/support/v4/y9;->do:I

    return p1
.end method

.method public for()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/y9;->for:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    :cond_0
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE2s"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Landroid/support/v4/y9;->do:I

    return v0
.end method

.method public if()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/y9;->try:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/y9;->else:I

    iput v0, p0, Landroid/support/v4/y9;->class:I

    iput v0, p0, Landroid/support/v4/y9;->break:I

    iput v0, p0, Landroid/support/v4/y9;->catch:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/y9;->this:[I

    iget-object v1, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {v1, v0}, Landroid/support/v4/q3;->c([BB)V

    iget-object v1, p0, Landroid/support/v4/y9;->try:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/y9;->case:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x40

    iput v0, p0, Landroid/support/v4/y9;->else:I

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/y9;->try()V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Landroid/support/v4/y9;->else:I

    rsub-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget v0, p0, Landroid/support/v4/y9;->break:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/support/v4/y9;->break:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/y9;->catch:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v4/y9;->catch:I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/y9;->new([BI)V

    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    aput-byte p1, v0, v1

    iput v2, p0, Landroid/support/v4/y9;->else:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/y9;->case:[B

    aput-byte p1, v1, v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v4/y9;->else:I

    :goto_0
    return-void
.end method

.method public update([BII)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Landroid/support/v4/y9;->else:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    rsub-int/lit8 v2, v0, 0x40

    if-ge v2, p3, :cond_2

    iget-object v3, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/support/v4/y9;->break:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/support/v4/y9;->break:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/y9;->catch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/y9;->catch:I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    invoke-direct {p0, v0, v1}, Landroid/support/v4/y9;->new([BI)V

    iput v1, p0, Landroid/support/v4/y9;->else:I

    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {v0, v1}, Landroid/support/v4/q3;->c([BB)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v4/y9;->case:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Landroid/support/v4/y9;->else:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/support/v4/y9;->else:I

    return-void

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x40

    add-int/2addr p2, v2

    :goto_2
    if-ge p2, v0, :cond_5

    iget v2, p0, Landroid/support/v4/y9;->break:I

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Landroid/support/v4/y9;->break:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v4/y9;->catch:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/y9;->catch:I

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/v4/y9;->new([BI)V

    add-int/lit8 p2, p2, 0x40

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v4/y9;->case:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method
