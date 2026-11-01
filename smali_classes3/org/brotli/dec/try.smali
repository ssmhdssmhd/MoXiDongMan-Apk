.class final Lorg/brotli/dec/try;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final break:I = 0x12

.field private static final case:I = 0x6

.field private static final catch:[I

.field private static final class:I = 0x10

.field private static final const:[I

.field private static final do:I = 0x8

.field private static final else:I = 0x2

.field private static final final:[I

.field private static final for:I = 0x100

.field private static final goto:I = 0x8

.field private static final if:I = 0x10

.field private static final new:I = 0x2c0

.field private static final super:[I

.field private static final this:I = 0xff

.field private static final try:I = 0x1a


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/brotli/dec/try;->catch:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lorg/brotli/dec/try;->const:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lorg/brotli/dec/try;->final:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lorg/brotli/dec/try;->super:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break([BI)V
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 2
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 3
    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1, v0}, Lorg/brotli/dec/try;->class([II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static case(Lorg/brotli/dec/class;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/try;->if(Lorg/brotli/dec/class;I)V

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/class;->throw:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    .line 3
    iput v2, p0, Lorg/brotli/dec/class;->package:I

    .line 4
    iget-object v3, p0, Lorg/brotli/dec/class;->finally:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/brotli/dec/class;->static:I

    .line 5
    iget-object v3, p0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    iget-object v3, v3, Lorg/brotli/dec/goto;->for:[I

    aget v2, v3, v2

    iput v2, p0, Lorg/brotli/dec/class;->switch:I

    .line 6
    iget-object v2, p0, Lorg/brotli/dec/class;->extends:[B

    aget-byte v0, v2, v0

    .line 7
    sget-object v2, Lorg/brotli/dec/new;->if:[I

    aget v3, v2, v0

    iput v3, p0, Lorg/brotli/dec/class;->abstract:I

    add-int/2addr v0, v1

    .line 8
    aget v0, v2, v0

    iput v0, p0, Lorg/brotli/dec/class;->continue:I

    return-void
.end method

.method private static catch(Lorg/brotli/dec/class;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/brotli/dec/class;->c:I

    int-to-long v1, v0

    .line 2
    iget-wide v3, p0, Lorg/brotli/dec/class;->e:J

    const/16 v5, 0x4000

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    long-to-int v1, v3

    .line 3
    iget-object v2, p0, Lorg/brotli/dec/class;->f:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-le v2, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/class;->goto:Z

    if-nez v1, :cond_1

    if-ge v0, v5, :cond_1

    iget v1, p0, Lorg/brotli/dec/class;->c:I

    if-lt v1, v5, :cond_1

    const/16 v0, 0x4000

    .line 5
    :cond_1
    iget v1, p0, Lorg/brotli/dec/class;->d:I

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v0, 0x25

    .line 6
    new-array v2, v2, [B

    .line 7
    iget-object v3, p0, Lorg/brotli/dec/class;->new:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 8
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, p0, Lorg/brotli/dec/class;->f:[B

    array-length v3, v1

    if-eqz v3, :cond_5

    .line 10
    array-length v3, v1

    .line 11
    iget v5, p0, Lorg/brotli/dec/class;->b:I

    if-le v3, v5, :cond_4

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_4
    move v5, v3

    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput v5, p0, Lorg/brotli/dec/class;->import:I

    .line 14
    iput v5, p0, Lorg/brotli/dec/class;->g:I

    .line 15
    :cond_5
    :goto_2
    iput-object v2, p0, Lorg/brotli/dec/class;->new:[B

    .line 16
    iput v0, p0, Lorg/brotli/dec/class;->d:I

    return-void
.end method

.method private static class([II)V
    .locals 2

    .line 1
    aget v0, p0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 2
    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    aput v0, p0, p1

    return-void
.end method

.method private static const([IILorg/brotli/dec/do;)I
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 2
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result p0

    .line 3
    sget-object p1, Lorg/brotli/dec/break;->if:[I

    aget p1, p1, p0

    .line 4
    sget-object v0, Lorg/brotli/dec/break;->do:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static do(Lorg/brotli/dec/class;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    .line 2
    iget-object v1, p0, Lorg/brotli/dec/class;->new:[B

    .line 3
    iget v2, p0, Lorg/brotli/dec/class;->else:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 4
    invoke-static {v0}, Lorg/brotli/dec/do;->catch(Lorg/brotli/dec/do;)V

    .line 5
    iput v3, p0, Lorg/brotli/dec/class;->do:I

    return-void

    .line 6
    :cond_0
    iget v4, p0, Lorg/brotli/dec/class;->d:I

    iget v5, p0, Lorg/brotli/dec/class;->import:I

    sub-int/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    iget v4, p0, Lorg/brotli/dec/class;->import:I

    invoke-static {v0, v1, v4, v2}, Lorg/brotli/dec/do;->for(Lorg/brotli/dec/do;[BII)V

    .line 8
    iget v1, p0, Lorg/brotli/dec/class;->else:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/class;->else:I

    .line 9
    iget v1, p0, Lorg/brotli/dec/class;->import:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/class;->import:I

    .line 10
    iget v2, p0, Lorg/brotli/dec/class;->d:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lorg/brotli/dec/class;->if:I

    .line 12
    iput v2, p0, Lorg/brotli/dec/class;->l:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/brotli/dec/class;->k:I

    const/16 v0, 0xc

    .line 14
    iput v0, p0, Lorg/brotli/dec/class;->do:I

    return-void

    .line 15
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/do;->catch(Lorg/brotli/dec/do;)V

    .line 16
    iput v3, p0, Lorg/brotli/dec/class;->do:I

    return-void
.end method

.method private static else(Lorg/brotli/dec/do;Lorg/brotli/dec/class;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lorg/brotli/dec/class;->goto:Z

    .line 2
    iput v2, p1, Lorg/brotli/dec/class;->else:I

    .line 3
    iput-boolean v2, p1, Lorg/brotli/dec/class;->this:Z

    .line 4
    iput-boolean v2, p1, Lorg/brotli/dec/class;->break:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 6
    invoke-static {p0, v1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_6

    .line 7
    iput-boolean v0, p1, Lorg/brotli/dec/class;->break:Z

    .line 8
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 9
    invoke-static {p0, v1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_9

    const/16 v4, 0x8

    .line 10
    invoke-static {p0, v4}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    if-gt v1, v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    new-instance p0, Lorg/brotli/dec/for;

    invoke-direct {p0, v6}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    :goto_2
    iget v5, p1, Lorg/brotli/dec/class;->else:I

    mul-int/lit8 v7, v3, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    iput v4, p1, Lorg/brotli/dec/class;->else:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_5
    new-instance p0, Lorg/brotli/dec/for;

    const-string p1, "Corrupted reserved bit"

    invoke-direct {p0, p1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_9

    .line 14
    invoke-static {p0, v4}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v3, :cond_8

    if-gt v3, v4, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    new-instance p0, Lorg/brotli/dec/for;

    invoke-direct {p0, v6}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_8
    :goto_4
    iget v7, p1, Lorg/brotli/dec/class;->else:I

    mul-int/lit8 v8, v1, 0x4

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    iput v5, p1, Lorg/brotli/dec/class;->else:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17
    :cond_9
    iget v1, p1, Lorg/brotli/dec/class;->else:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/brotli/dec/class;->else:I

    .line 18
    iget-boolean v1, p1, Lorg/brotli/dec/class;->goto:Z

    if-nez v1, :cond_b

    .line 19
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p1, Lorg/brotli/dec/class;->this:Z

    :cond_b
    return-void
.end method

.method public static final(I[IILorg/brotli/dec/do;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 2
    new-array v2, v0, [I

    const/4 v3, 0x2

    .line 3
    invoke-static {v1, v3}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    add-int/lit8 v4, v0, -0x1

    const/4 v7, 0x4

    new-array v7, v7, [I

    .line 4
    invoke-static {v1, v3}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v8

    add-int/2addr v8, v6

    const/4 v9, 0x0

    :goto_0
    if-eqz v4, :cond_0

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    .line 5
    invoke-static {v1, v9}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v10

    rem-int/2addr v10, v0

    aput v10, v7, v4

    .line 6
    aget v10, v7, v4

    aput v3, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_1
    aget v4, v7, v5

    aput v6, v2, v4

    if-eq v8, v6, :cond_d

    if-eq v8, v3, :cond_5

    const/4 v4, 0x3

    if-eq v8, v4, :cond_4

    .line 8
    aget v8, v7, v5

    aget v9, v7, v6

    if-eq v8, v9, :cond_2

    aget v8, v7, v5

    aget v9, v7, v3

    if-eq v8, v9, :cond_2

    aget v8, v7, v5

    aget v9, v7, v4

    if-eq v8, v9, :cond_2

    aget v8, v7, v6

    aget v9, v7, v3

    if-eq v8, v9, :cond_2

    aget v8, v7, v6

    aget v9, v7, v4

    if-eq v8, v9, :cond_2

    aget v8, v7, v3

    aget v9, v7, v4

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 9
    :goto_2
    invoke-static {v1, v6}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 10
    aget v1, v7, v3

    aput v4, v2, v1

    .line 11
    aget v1, v7, v4

    aput v4, v2, v1

    goto :goto_3

    .line 12
    :cond_3
    aget v1, v7, v5

    aput v3, v2, v1

    :goto_3
    move v6, v8

    goto :goto_6

    .line 13
    :cond_4
    aget v1, v7, v5

    aget v4, v7, v6

    if-eq v1, v4, :cond_c

    aget v1, v7, v5

    aget v4, v7, v3

    if-eq v1, v4, :cond_c

    aget v1, v7, v6

    aget v3, v7, v3

    if-eq v1, v3, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    .line 14
    :cond_5
    aget v1, v7, v5

    aget v3, v7, v6

    if-eq v1, v3, :cond_6

    const/4 v5, 0x1

    .line 15
    :cond_6
    aget v1, v7, v6

    aput v6, v2, v1

    goto :goto_5

    :cond_7
    const/16 v3, 0x12

    new-array v7, v3, [I

    const/16 v8, 0x20

    const/16 v9, 0x20

    const/4 v10, 0x0

    :goto_4
    if-ge v4, v3, :cond_9

    if-lez v9, :cond_9

    .line 16
    sget-object v11, Lorg/brotli/dec/try;->catch:[I

    aget v11, v11, v4

    .line 17
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 18
    iget-wide v12, v1, Lorg/brotli/dec/do;->case:J

    iget v14, v1, Lorg/brotli/dec/do;->else:I

    ushr-long/2addr v12, v14

    long-to-int v13, v12

    and-int/lit8 v12, v13, 0xf

    .line 19
    sget-object v13, Lorg/brotli/dec/try;->super:[I

    aget v15, v13, v12

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v14, v15

    iput v14, v1, Lorg/brotli/dec/do;->else:I

    .line 20
    aget v12, v13, v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 21
    aput v12, v7, v11

    if-eqz v12, :cond_8

    shr-int v11, v8, v12

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eq v10, v6, :cond_a

    if-nez v9, :cond_b

    :cond_a
    const/4 v5, 0x1

    .line 22
    :cond_b
    invoke-static {v7, v0, v2, v1}, Lorg/brotli/dec/try;->super([II[ILorg/brotli/dec/do;)V

    :cond_c
    :goto_5
    move v6, v5

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    const/16 v1, 0x8

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 23
    invoke-static {v3, v4, v1, v2, v0}, Lorg/brotli/dec/else;->do([III[II)V

    return-void

    .line 24
    :cond_e
    new-instance v0, Lorg/brotli/dec/for;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private static for(Lorg/brotli/dec/class;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/try;->if(Lorg/brotli/dec/class;I)V

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    iget-object v0, v0, Lorg/brotli/dec/goto;->for:[I

    iget-object v1, p0, Lorg/brotli/dec/class;->throw:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/class;->strictfp:I

    return-void
.end method

.method private static goto(Lorg/brotli/dec/do;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 2
    invoke-static {p0, v1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static if(Lorg/brotli/dec/class;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    .line 2
    iget-object v1, p0, Lorg/brotli/dec/class;->throw:[I

    mul-int/lit8 v2, p1, 0x2

    .line 3
    invoke-static {v0}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 4
    iget-object v3, p0, Lorg/brotli/dec/class;->try:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result v3

    .line 5
    iget-object v5, p0, Lorg/brotli/dec/class;->final:[I

    iget-object v6, p0, Lorg/brotli/dec/class;->case:[I

    invoke-static {v6, v4, v0}, Lorg/brotli/dec/try;->const([IILorg/brotli/dec/do;)I

    move-result v0

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 7
    aget v3, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x2

    .line 8
    :goto_0
    iget-object p0, p0, Lorg/brotli/dec/class;->super:[I

    aget v0, p0, p1

    if-lt v3, v0, :cond_2

    .line 9
    aget p0, p0, p1

    sub-int/2addr v3, p0

    :cond_2
    add-int/lit8 p0, v2, 0x1

    .line 10
    aget p1, v1, p0

    aput p1, v1, v2

    .line 11
    aput v3, v1, p0

    return-void
.end method

.method private static import([IILorg/brotli/dec/do;)I
    .locals 6

    .line 1
    iget-wide v0, p2, Lorg/brotli/dec/do;->case:J

    iget v2, p2, Lorg/brotli/dec/do;->else:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    add-int/2addr p1, v0

    .line 2
    aget v0, p0, p1

    shr-int/lit8 v0, v0, 0x10

    .line 3
    aget v3, p0, p1

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v5, 0x8

    if-gt v0, v5, :cond_0

    add-int/2addr v2, v0

    .line 4
    iput v2, p2, Lorg/brotli/dec/do;->else:I

    return v3

    :cond_0
    add-int/2addr p1, v3

    const/4 v3, 0x1

    shl-int v0, v3, v0

    sub-int/2addr v0, v3

    and-int/2addr v0, v1

    ushr-int/2addr v0, v5

    add-int/2addr p1, v0

    .line 5
    aget v0, p0, p1

    shr-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v5

    add-int/2addr v2, v0

    iput v2, p2, Lorg/brotli/dec/do;->else:I

    .line 6
    aget p0, p0, p1

    and-int/2addr p0, v4

    return p0
.end method

.method public static native(Lorg/brotli/dec/class;[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 1
    :cond_0
    iput-object p1, p0, Lorg/brotli/dec/class;->f:[B

    return-void
.end method

.method private static new(I[BLorg/brotli/dec/do;)I
    .locals 8

    .line 1
    invoke-static {p2}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 2
    invoke-static {p2}, Lorg/brotli/dec/try;->goto(Lorg/brotli/dec/do;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/final;->do([BII)V

    return v0

    .line 4
    :cond_0
    invoke-static {p2, v1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    .line 5
    invoke-static {p2, v3}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x438

    new-array v4, v4, [I

    add-int v5, v0, v3

    .line 6
    invoke-static {v5, v4, v2, p2}, Lorg/brotli/dec/try;->final(I[IILorg/brotli/dec/do;)V

    const/4 v5, 0x0

    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    .line 7
    invoke-static {p2}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 8
    invoke-static {p2}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 9
    invoke-static {v4, v2, p2}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result v6

    if-nez v6, :cond_4

    .line 10
    aput-byte v2, p1, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-gt v6, v3, :cond_6

    shl-int v7, v1, v6

    .line 11
    invoke-static {p2, v6}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v6

    add-int/2addr v7, v6

    :goto_4
    if-eqz v7, :cond_3

    if-ge v5, p0, :cond_5

    .line 12
    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 13
    :cond_5
    new-instance p0, Lorg/brotli/dec/for;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    .line 14
    aput-byte v6, p1, v5

    goto :goto_3

    .line 15
    :cond_7
    invoke-static {p2, v1}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 16
    invoke-static {p1, p0}, Lorg/brotli/dec/try;->break([BI)V

    :cond_8
    return v0
.end method

.method private static public(I[II)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lorg/brotli/dec/try;->const:[I

    aget v0, v0, p0

    add-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x3

    .line 2
    aget p1, p1, p2

    sget-object p2, Lorg/brotli/dec/try;->final:[I

    aget p0, p2, p0

    add-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static return(Lorg/brotli/dec/class;)Z
    .locals 7

    .line 1
    iget v0, p0, Lorg/brotli/dec/class;->g:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Lorg/brotli/dec/class;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/class;->k:I

    .line 3
    iput v1, p0, Lorg/brotli/dec/class;->g:I

    .line 4
    :cond_0
    iget v0, p0, Lorg/brotli/dec/class;->i:I

    iget v2, p0, Lorg/brotli/dec/class;->j:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/brotli/dec/class;->l:I

    iget v3, p0, Lorg/brotli/dec/class;->k:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lorg/brotli/dec/class;->new:[B

    iget v3, p0, Lorg/brotli/dec/class;->k:I

    iget-object v4, p0, Lorg/brotli/dec/class;->m:[B

    iget v5, p0, Lorg/brotli/dec/class;->h:I

    iget v6, p0, Lorg/brotli/dec/class;->j:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v2, p0, Lorg/brotli/dec/class;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/class;->j:I

    .line 7
    iget v2, p0, Lorg/brotli/dec/class;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/class;->k:I

    .line 8
    :cond_1
    iget v0, p0, Lorg/brotli/dec/class;->j:I

    iget p0, p0, Lorg/brotli/dec/class;->i:I

    if-ge v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static super([II[ILorg/brotli/dec/do;)V
    .locals 11

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/16 v3, 0x12

    .line 1
    invoke-static {v0, v1, v2, p0, v3}, Lorg/brotli/dec/else;->do([III[II)V

    const p0, 0x8000

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x8000

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v3, p1, :cond_8

    if-lez v4, :cond_8

    .line 2
    invoke-static {p3}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 3
    invoke-static {p3}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 4
    iget-wide v7, p3, Lorg/brotli/dec/do;->case:J

    iget v9, p3, Lorg/brotli/dec/do;->else:I

    ushr-long/2addr v7, v9

    long-to-int v8, v7

    and-int/lit8 v7, v8, 0x1f

    .line 5
    aget v8, v0, v7

    const/16 v10, 0x10

    shr-int/2addr v8, v10

    add-int/2addr v9, v8

    iput v9, p3, Lorg/brotli/dec/do;->else:I

    .line 6
    aget v7, v0, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ge v7, v10, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 7
    aput v7, p2, v3

    if-eqz v7, :cond_0

    shr-int v2, p0, v7

    sub-int/2addr v4, v2

    move v3, v6

    move v2, v7

    goto :goto_0

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v7, -0xe

    if-ne v7, v10, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eq v5, v7, :cond_3

    move v5, v7

    const/4 v6, 0x0

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v6

    .line 8
    :goto_3
    invoke-static {p3, v8}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v3, v6

    if-gt v8, p1, :cond_7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v3, 0x1

    .line 9
    aput v5, p2, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v6, v8

    sub-int/2addr v4, v6

    :cond_6
    move v6, v7

    goto :goto_1

    .line 10
    :cond_7
    new-instance p0, Lorg/brotli/dec/for;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v4, :cond_9

    sub-int/2addr p1, v3

    .line 11
    invoke-static {p2, v3, p1}, Lorg/brotli/dec/final;->if([III)V

    return-void

    .line 12
    :cond_9
    new-instance p0, Lorg/brotli/dec/for;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static this(Lorg/brotli/dec/class;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lorg/brotli/dec/class;->do:I

    if-eqz v1, :cond_23

    const/16 v2, 0xb

    if-eq v1, v2, :cond_22

    .line 2
    iget-object v1, v0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    .line 3
    iget v2, v0, Lorg/brotli/dec/class;->d:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4
    iget-object v4, v0, Lorg/brotli/dec/class;->new:[B

    move-object v10, v4

    .line 5
    :cond_0
    :goto_0
    iget v4, v0, Lorg/brotli/dec/class;->do:I

    const-string v5, "Invalid metablock length"

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1f

    const/16 v11, 0xc

    if-eq v4, v11, :cond_1c

    const/16 v12, 0x8

    const-string v6, "Invalid backward reference"

    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v4, :pswitch_data_0

    .line 6
    new-instance v1, Lorg/brotli/dec/for;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/brotli/dec/class;->do:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :pswitch_0
    iget v4, v0, Lorg/brotli/dec/class;->synchronized:I

    if-lt v4, v7, :cond_3

    const/16 v5, 0x18

    if-gt v4, v5, :cond_3

    .line 8
    sget-object v5, Lorg/brotli/dec/case;->do:[I

    aget v5, v5, v4

    .line 9
    iget v7, v0, Lorg/brotli/dec/class;->instanceof:I

    iget v8, v0, Lorg/brotli/dec/class;->native:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    .line 10
    sget-object v8, Lorg/brotli/dec/case;->if:[I

    aget v8, v8, v4

    shl-int v9, v3, v8

    sub-int/2addr v9, v3

    and-int/2addr v9, v7

    ushr-int/2addr v7, v8

    mul-int v9, v9, v4

    add-int v8, v5, v9

    .line 11
    sget-object v4, Lorg/brotli/dec/const;->new:[Lorg/brotli/dec/const;

    array-length v5, v4

    if-ge v7, v5, :cond_2

    .line 12
    iget v5, v0, Lorg/brotli/dec/class;->a:I

    .line 13
    invoke-static {}, Lorg/brotli/dec/case;->do()[B

    move-result-object v6

    iget v9, v0, Lorg/brotli/dec/class;->synchronized:I

    aget-object v13, v4, v7

    move-object v4, v10

    move v7, v8

    move v8, v9

    move-object v9, v13

    .line 14
    invoke-static/range {v4 .. v9}, Lorg/brotli/dec/const;->if([BI[BIILorg/brotli/dec/const;)I

    move-result v4

    .line 15
    iget v5, v0, Lorg/brotli/dec/class;->a:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/class;->a:I

    .line 16
    iget v6, v0, Lorg/brotli/dec/class;->import:I

    add-int/2addr v6, v4

    iput v6, v0, Lorg/brotli/dec/class;->import:I

    .line 17
    iget v6, v0, Lorg/brotli/dec/class;->else:I

    sub-int/2addr v6, v4

    iput v6, v0, Lorg/brotli/dec/class;->else:I

    .line 18
    iget v4, v0, Lorg/brotli/dec/class;->d:I

    if-lt v5, v4, :cond_1

    .line 19
    iput v12, v0, Lorg/brotli/dec/class;->if:I

    .line 20
    iput v4, v0, Lorg/brotli/dec/class;->l:I

    .line 21
    iput v15, v0, Lorg/brotli/dec/class;->k:I

    .line 22
    iput v11, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 23
    :cond_1
    iput v14, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 24
    :cond_2
    new-instance v0, Lorg/brotli/dec/for;

    invoke-direct {v0, v6}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    new-instance v0, Lorg/brotli/dec/for;

    invoke-direct {v0, v6}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :pswitch_1
    iget v4, v0, Lorg/brotli/dec/class;->d:I

    iget v5, v0, Lorg/brotli/dec/class;->a:I

    sub-int/2addr v5, v4

    invoke-static {v10, v4, v10, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput v14, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 28
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->do(Lorg/brotli/dec/class;)V

    goto/16 :goto_0

    .line 29
    :goto_1
    :pswitch_3
    iget v4, v0, Lorg/brotli/dec/class;->else:I

    if-lez v4, :cond_4

    .line 30
    invoke-static {v1}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 31
    invoke-static {v1, v12}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    .line 32
    iget v4, v0, Lorg/brotli/dec/class;->else:I

    sub-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/class;->else:I

    goto :goto_1

    .line 33
    :cond_4
    iput v3, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 34
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->throw(Lorg/brotli/dec/class;)V

    .line 35
    iput v14, v0, Lorg/brotli/dec/class;->do:I

    .line 36
    :pswitch_5
    iget v4, v0, Lorg/brotli/dec/class;->else:I

    if-gtz v4, :cond_5

    .line 37
    iput v3, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 38
    :cond_5
    invoke-static {v1}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 39
    iget-object v4, v0, Lorg/brotli/dec/class;->final:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 40
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->for(Lorg/brotli/dec/class;)V

    .line 41
    :cond_6
    iget-object v4, v0, Lorg/brotli/dec/class;->final:[I

    aget v5, v4, v3

    sub-int/2addr v5, v3

    aput v5, v4, v3

    .line 42
    invoke-static {v1}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 43
    iget-object v4, v0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    iget-object v4, v4, Lorg/brotli/dec/goto;->if:[I

    iget v5, v0, Lorg/brotli/dec/class;->strictfp:I

    invoke-static {v4, v5, v1}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x6

    .line 44
    iput v15, v0, Lorg/brotli/dec/class;->volatile:I

    if-lt v5, v13, :cond_7

    add-int/lit8 v5, v5, -0x2

    const/4 v12, -0x1

    .line 45
    iput v12, v0, Lorg/brotli/dec/class;->volatile:I

    .line 46
    :cond_7
    sget-object v12, Lorg/brotli/dec/break;->else:[I

    aget v12, v12, v5

    ushr-int/lit8 v16, v4, 0x3

    and-int/lit8 v16, v16, 0x7

    add-int v12, v12, v16

    .line 47
    sget-object v16, Lorg/brotli/dec/break;->goto:[I

    aget v5, v16, v5

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v5, v4

    .line 48
    sget-object v4, Lorg/brotli/dec/break;->for:[I

    aget v4, v4, v12

    sget-object v16, Lorg/brotli/dec/break;->new:[I

    aget v12, v16, v12

    .line 49
    invoke-static {v1, v12}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Lorg/brotli/dec/class;->default:I

    .line 50
    sget-object v4, Lorg/brotli/dec/break;->try:[I

    aget v4, v4, v5

    sget-object v12, Lorg/brotli/dec/break;->case:[I

    aget v5, v12, v5

    .line 51
    invoke-static {v1, v5}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/class;->synchronized:I

    .line 52
    iput v15, v0, Lorg/brotli/dec/class;->throws:I

    .line 53
    iput v9, v0, Lorg/brotli/dec/class;->do:I

    .line 54
    :pswitch_6
    iget-boolean v4, v0, Lorg/brotli/dec/class;->return:Z

    if-eqz v4, :cond_a

    .line 55
    :cond_8
    iget v4, v0, Lorg/brotli/dec/class;->throws:I

    iget v5, v0, Lorg/brotli/dec/class;->default:I

    if-ge v4, v5, :cond_d

    .line 56
    invoke-static {v1}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 57
    iget-object v4, v0, Lorg/brotli/dec/class;->final:[I

    aget v4, v4, v15

    if-nez v4, :cond_9

    .line 58
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->case(Lorg/brotli/dec/class;)V

    .line 59
    :cond_9
    iget-object v4, v0, Lorg/brotli/dec/class;->final:[I

    aget v5, v4, v15

    sub-int/2addr v5, v3

    aput v5, v4, v15

    .line 60
    invoke-static {v1}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 61
    iget v4, v0, Lorg/brotli/dec/class;->import:I

    iget-object v5, v0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    iget-object v5, v5, Lorg/brotli/dec/goto;->if:[I

    iget v12, v0, Lorg/brotli/dec/class;->switch:I

    .line 62
    invoke-static {v5, v12, v1}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 63
    iget v4, v0, Lorg/brotli/dec/class;->throws:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/class;->throws:I

    .line 64
    iget v4, v0, Lorg/brotli/dec/class;->import:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/brotli/dec/class;->import:I

    if-ne v4, v2, :cond_8

    .line 65
    iput v9, v0, Lorg/brotli/dec/class;->if:I

    .line 66
    iget v4, v0, Lorg/brotli/dec/class;->d:I

    iput v4, v0, Lorg/brotli/dec/class;->l:I

    .line 67
    iput v15, v0, Lorg/brotli/dec/class;->k:I

    .line 68
    iput v11, v0, Lorg/brotli/dec/class;->do:I

    goto :goto_3

    .line 69
    :cond_a
    iget v4, v0, Lorg/brotli/dec/class;->import:I

    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v13

    and-int/2addr v4, v2

    .line 70
    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    .line 71
    :goto_2
    iget v12, v0, Lorg/brotli/dec/class;->throws:I

    iget v8, v0, Lorg/brotli/dec/class;->default:I

    if-ge v12, v8, :cond_d

    .line 72
    invoke-static {v1}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 73
    iget-object v8, v0, Lorg/brotli/dec/class;->final:[I

    aget v8, v8, v15

    if-nez v8, :cond_b

    .line 74
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->case(Lorg/brotli/dec/class;)V

    .line 75
    :cond_b
    iget-object v8, v0, Lorg/brotli/dec/class;->finally:[B

    iget v12, v0, Lorg/brotli/dec/class;->package:I

    sget-object v17, Lorg/brotli/dec/new;->do:[I

    iget v7, v0, Lorg/brotli/dec/class;->abstract:I

    add-int/2addr v7, v5

    aget v7, v17, v7

    iget v13, v0, Lorg/brotli/dec/class;->continue:I

    add-int/2addr v13, v4

    aget v4, v17, v13

    or-int/2addr v4, v7

    add-int/2addr v12, v4

    aget-byte v4, v8, v12

    and-int/lit16 v4, v4, 0xff

    .line 76
    iget-object v7, v0, Lorg/brotli/dec/class;->final:[I

    aget v8, v7, v15

    sub-int/2addr v8, v3

    aput v8, v7, v15

    .line 77
    invoke-static {v1}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 78
    iget-object v7, v0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    iget-object v8, v7, Lorg/brotli/dec/goto;->if:[I

    iget-object v7, v7, Lorg/brotli/dec/goto;->for:[I

    aget v4, v7, v4

    invoke-static {v8, v4, v1}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result v4

    .line 79
    iget v7, v0, Lorg/brotli/dec/class;->import:I

    int-to-byte v8, v4

    aput-byte v8, v10, v7

    .line 80
    iget v8, v0, Lorg/brotli/dec/class;->throws:I

    add-int/2addr v8, v3

    iput v8, v0, Lorg/brotli/dec/class;->throws:I

    add-int/lit8 v8, v7, 0x1

    .line 81
    iput v8, v0, Lorg/brotli/dec/class;->import:I

    if-ne v7, v2, :cond_c

    .line 82
    iput v9, v0, Lorg/brotli/dec/class;->if:I

    .line 83
    iget v4, v0, Lorg/brotli/dec/class;->d:I

    iput v4, v0, Lorg/brotli/dec/class;->l:I

    .line 84
    iput v15, v0, Lorg/brotli/dec/class;->k:I

    .line 85
    iput v11, v0, Lorg/brotli/dec/class;->do:I

    goto :goto_3

    :cond_c
    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v13, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_2

    .line 86
    :cond_d
    :goto_3
    iget v4, v0, Lorg/brotli/dec/class;->do:I

    if-eq v4, v9, :cond_e

    goto/16 :goto_0

    .line 87
    :cond_e
    iget v4, v0, Lorg/brotli/dec/class;->else:I

    iget v5, v0, Lorg/brotli/dec/class;->default:I

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/class;->else:I

    if-gtz v4, :cond_f

    .line 88
    iput v14, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 89
    :cond_f
    iget v4, v0, Lorg/brotli/dec/class;->volatile:I

    if-gez v4, :cond_12

    .line 90
    invoke-static {v1}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 91
    iget-object v4, v0, Lorg/brotli/dec/class;->final:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-nez v4, :cond_10

    .line 92
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->try(Lorg/brotli/dec/class;)V

    .line 93
    :cond_10
    iget-object v4, v0, Lorg/brotli/dec/class;->final:[I

    aget v7, v4, v5

    sub-int/2addr v7, v3

    aput v7, v4, v5

    .line 94
    invoke-static {v1}, Lorg/brotli/dec/do;->new(Lorg/brotli/dec/do;)V

    .line 95
    iget-object v4, v0, Lorg/brotli/dec/class;->const:Lorg/brotli/dec/goto;

    iget-object v5, v4, Lorg/brotli/dec/goto;->if:[I

    iget-object v4, v4, Lorg/brotli/dec/goto;->for:[I

    iget-object v7, v0, Lorg/brotli/dec/class;->interface:[B

    iget v8, v0, Lorg/brotli/dec/class;->private:I

    iget v9, v0, Lorg/brotli/dec/class;->synchronized:I

    const/4 v12, 0x4

    if-le v9, v12, :cond_11

    const/4 v9, 0x3

    goto :goto_4

    :cond_11
    add-int/lit8 v9, v9, -0x2

    :goto_4
    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    invoke-static {v5, v4, v1}, Lorg/brotli/dec/try;->import([IILorg/brotli/dec/do;)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/class;->volatile:I

    .line 96
    iget v5, v0, Lorg/brotli/dec/class;->protected:I

    if-lt v4, v5, :cond_12

    sub-int/2addr v4, v5

    .line 97
    iput v4, v0, Lorg/brotli/dec/class;->volatile:I

    .line 98
    iget v7, v0, Lorg/brotli/dec/class;->transient:I

    and-int/2addr v7, v4

    .line 99
    iget v8, v0, Lorg/brotli/dec/class;->implements:I

    ushr-int/2addr v4, v8

    iput v4, v0, Lorg/brotli/dec/class;->volatile:I

    ushr-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v3

    and-int/2addr v4, v3

    const/4 v9, 0x2

    add-int/2addr v4, v9

    shl-int/2addr v4, v8

    const/4 v9, 0x4

    sub-int/2addr v4, v9

    add-int/2addr v5, v7

    .line 100
    invoke-static {v1, v8}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v7

    add-int/2addr v4, v7

    iget v7, v0, Lorg/brotli/dec/class;->implements:I

    shl-int/2addr v4, v7

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/class;->volatile:I

    .line 101
    :cond_12
    iget v4, v0, Lorg/brotli/dec/class;->volatile:I

    iget-object v5, v0, Lorg/brotli/dec/class;->while:[I

    iget v7, v0, Lorg/brotli/dec/class;->public:I

    invoke-static {v4, v5, v7}, Lorg/brotli/dec/try;->public(I[II)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/class;->instanceof:I

    if-ltz v4, :cond_1a

    .line 102
    iget v5, v0, Lorg/brotli/dec/class;->native:I

    iget v7, v0, Lorg/brotli/dec/class;->b:I

    if-eq v5, v7, :cond_13

    iget v5, v0, Lorg/brotli/dec/class;->import:I

    if-ge v5, v7, :cond_13

    .line 103
    iput v5, v0, Lorg/brotli/dec/class;->native:I

    goto :goto_5

    .line 104
    :cond_13
    iput v7, v0, Lorg/brotli/dec/class;->native:I

    .line 105
    :goto_5
    iget v5, v0, Lorg/brotli/dec/class;->import:I

    iput v5, v0, Lorg/brotli/dec/class;->a:I

    .line 106
    iget v5, v0, Lorg/brotli/dec/class;->native:I

    if-le v4, v5, :cond_14

    const/16 v4, 0x9

    .line 107
    iput v4, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 108
    :cond_14
    iget v5, v0, Lorg/brotli/dec/class;->volatile:I

    if-lez v5, :cond_15

    .line 109
    iget-object v5, v0, Lorg/brotli/dec/class;->while:[I

    iget v7, v0, Lorg/brotli/dec/class;->public:I

    and-int/lit8 v8, v7, 0x3

    aput v4, v5, v8

    add-int/2addr v7, v3

    .line 110
    iput v7, v0, Lorg/brotli/dec/class;->public:I

    .line 111
    :cond_15
    iget v4, v0, Lorg/brotli/dec/class;->synchronized:I

    iget v5, v0, Lorg/brotli/dec/class;->else:I

    if-gt v4, v5, :cond_19

    .line 112
    iput v15, v0, Lorg/brotli/dec/class;->throws:I

    const/4 v4, 0x7

    .line 113
    iput v4, v0, Lorg/brotli/dec/class;->do:I

    .line 114
    :pswitch_7
    iget v4, v0, Lorg/brotli/dec/class;->import:I

    iget v5, v0, Lorg/brotli/dec/class;->instanceof:I

    sub-int v5, v4, v5

    and-int/2addr v5, v2

    .line 115
    iget v6, v0, Lorg/brotli/dec/class;->synchronized:I

    iget v7, v0, Lorg/brotli/dec/class;->throws:I

    sub-int/2addr v6, v7

    add-int v7, v5, v6

    if-ge v7, v2, :cond_17

    add-int v7, v4, v6

    if-ge v7, v2, :cond_17

    :goto_6
    if-ge v15, v6, :cond_16

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 116
    aget-byte v5, v10, v5

    aput-byte v5, v10, v4

    add-int/lit8 v15, v15, 0x1

    move v4, v7

    move v5, v8

    goto :goto_6

    .line 117
    :cond_16
    iget v4, v0, Lorg/brotli/dec/class;->throws:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/class;->throws:I

    .line 118
    iget v4, v0, Lorg/brotli/dec/class;->else:I

    sub-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/class;->else:I

    .line 119
    iget v4, v0, Lorg/brotli/dec/class;->import:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/class;->import:I

    goto :goto_7

    .line 120
    :cond_17
    iget v4, v0, Lorg/brotli/dec/class;->throws:I

    iget v5, v0, Lorg/brotli/dec/class;->synchronized:I

    if-ge v4, v5, :cond_18

    .line 121
    iget v5, v0, Lorg/brotli/dec/class;->import:I

    iget v6, v0, Lorg/brotli/dec/class;->instanceof:I

    sub-int v6, v5, v6

    and-int/2addr v6, v2

    aget-byte v6, v10, v6

    aput-byte v6, v10, v5

    .line 122
    iget v6, v0, Lorg/brotli/dec/class;->else:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/brotli/dec/class;->else:I

    add-int/lit8 v4, v4, 0x1

    .line 123
    iput v4, v0, Lorg/brotli/dec/class;->throws:I

    add-int/lit8 v4, v5, 0x1

    .line 124
    iput v4, v0, Lorg/brotli/dec/class;->import:I

    if-ne v5, v2, :cond_17

    const/4 v4, 0x7

    .line 125
    iput v4, v0, Lorg/brotli/dec/class;->if:I

    .line 126
    iget v5, v0, Lorg/brotli/dec/class;->d:I

    iput v5, v0, Lorg/brotli/dec/class;->l:I

    .line 127
    iput v15, v0, Lorg/brotli/dec/class;->k:I

    .line 128
    iput v11, v0, Lorg/brotli/dec/class;->do:I

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v4, 0x7

    .line 129
    :goto_8
    iget v5, v0, Lorg/brotli/dec/class;->do:I

    if-ne v5, v4, :cond_0

    .line 130
    iput v14, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    .line 131
    :cond_19
    new-instance v0, Lorg/brotli/dec/for;

    invoke-direct {v0, v6}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1a
    new-instance v0, Lorg/brotli/dec/for;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_8
    iget v2, v0, Lorg/brotli/dec/class;->else:I

    if-ltz v2, :cond_1b

    .line 134
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->while(Lorg/brotli/dec/class;)V

    .line 135
    iget v2, v0, Lorg/brotli/dec/class;->d:I

    sub-int/2addr v2, v3

    .line 136
    iget-object v10, v0, Lorg/brotli/dec/class;->new:[B

    goto/16 :goto_0

    .line 137
    :cond_1b
    new-instance v0, Lorg/brotli/dec/for;

    invoke-direct {v0, v5}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1c
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/try;->return(Lorg/brotli/dec/class;)Z

    move-result v4

    if-nez v4, :cond_1d

    return-void

    .line 139
    :cond_1d
    iget v4, v0, Lorg/brotli/dec/class;->import:I

    iget v5, v0, Lorg/brotli/dec/class;->b:I

    if-lt v4, v5, :cond_1e

    .line 140
    iput v5, v0, Lorg/brotli/dec/class;->native:I

    :cond_1e
    and-int/2addr v4, v2

    .line 141
    iput v4, v0, Lorg/brotli/dec/class;->import:I

    .line 142
    iget v4, v0, Lorg/brotli/dec/class;->if:I

    iput v4, v0, Lorg/brotli/dec/class;->do:I

    goto/16 :goto_0

    :cond_1f
    if-ne v4, v6, :cond_21

    .line 143
    iget v2, v0, Lorg/brotli/dec/class;->else:I

    if-ltz v2, :cond_20

    .line 144
    invoke-static {v1}, Lorg/brotli/dec/do;->else(Lorg/brotli/dec/do;)V

    .line 145
    iget-object v0, v0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    invoke-static {v0, v3}, Lorg/brotli/dec/do;->do(Lorg/brotli/dec/do;Z)V

    goto :goto_9

    .line 146
    :cond_20
    new-instance v0, Lorg/brotli/dec/for;

    invoke-direct {v0, v5}, Lorg/brotli/dec/for;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_9
    return-void

    .line 147
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static throw(Lorg/brotli/dec/class;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, p0, Lorg/brotli/dec/class;->super:[I

    invoke-static {v0}, Lorg/brotli/dec/try;->goto(Lorg/brotli/dec/do;)I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v3, v2

    .line 3
    iget-object v3, p0, Lorg/brotli/dec/class;->final:[I

    const/high16 v6, 0x10000000

    aput v6, v3, v2

    .line 4
    iget-object v3, p0, Lorg/brotli/dec/class;->super:[I

    aget v6, v3, v2

    if-le v6, v5, :cond_0

    .line 5
    aget v3, v3, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/brotli/dec/class;->try:[I

    mul-int/lit16 v5, v2, 0x438

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/try;->final(I[IILorg/brotli/dec/do;)V

    const/16 v3, 0x1a

    .line 6
    iget-object v4, p0, Lorg/brotli/dec/class;->case:[I

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/try;->final(I[IILorg/brotli/dec/do;)V

    .line 7
    iget-object v3, p0, Lorg/brotli/dec/class;->final:[I

    iget-object v4, p0, Lorg/brotli/dec/class;->case:[I

    invoke-static {v4, v5, v0}, Lorg/brotli/dec/try;->const([IILorg/brotli/dec/do;)I

    move-result v4

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 9
    invoke-static {v0, v4}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v2

    iput v2, p0, Lorg/brotli/dec/class;->implements:I

    const/4 v2, 0x4

    .line 10
    invoke-static {v0, v2}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v6

    iget v7, p0, Lorg/brotli/dec/class;->implements:I

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/brotli/dec/class;->protected:I

    shl-int v8, v5, v7

    sub-int/2addr v8, v5

    .line 11
    iput v8, p0, Lorg/brotli/dec/class;->transient:I

    const/16 v8, 0x30

    shl-int v7, v8, v7

    add-int/2addr v6, v7

    .line 12
    iget-object v7, p0, Lorg/brotli/dec/class;->super:[I

    aget v7, v7, v1

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/class;->extends:[B

    const/4 v7, 0x0

    .line 13
    :goto_1
    iget-object v8, p0, Lorg/brotli/dec/class;->super:[I

    aget v9, v8, v1

    if-ge v7, v9, :cond_3

    add-int/lit8 v9, v7, 0x60

    .line 14
    aget v8, v8, v1

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    .line 15
    iget-object v9, p0, Lorg/brotli/dec/class;->extends:[B

    invoke-static {v0, v4}, Lorg/brotli/dec/do;->this(Lorg/brotli/dec/do;I)I

    move-result v10

    shl-int/2addr v10, v5

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {v0}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    goto :goto_1

    .line 17
    :cond_3
    aget v7, v8, v1

    shl-int/lit8 v7, v7, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/class;->finally:[B

    .line 18
    aget v8, v8, v1

    shl-int/lit8 v8, v8, 0x6

    invoke-static {v8, v7, v0}, Lorg/brotli/dec/try;->new(I[BLorg/brotli/dec/do;)I

    move-result v7

    .line 19
    iput-boolean v5, p0, Lorg/brotli/dec/class;->return:Z

    const/4 v8, 0x0

    .line 20
    :goto_3
    iget-object v9, p0, Lorg/brotli/dec/class;->super:[I

    aget v10, v9, v1

    shl-int/lit8 v10, v10, 0x6

    if-ge v8, v10, :cond_5

    .line 21
    iget-object v10, p0, Lorg/brotli/dec/class;->finally:[B

    aget-byte v10, v10, v8

    shr-int/lit8 v11, v8, 0x6

    if-eq v10, v11, :cond_4

    .line 22
    iput-boolean v1, p0, Lorg/brotli/dec/class;->return:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 23
    :cond_5
    :goto_4
    aget v8, v9, v4

    shl-int/2addr v8, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/brotli/dec/class;->interface:[B

    .line 24
    aget v9, v9, v4

    shl-int/2addr v9, v4

    invoke-static {v9, v8, v0}, Lorg/brotli/dec/try;->new(I[BLorg/brotli/dec/do;)I

    move-result v8

    .line 25
    iget-object v9, p0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    const/16 v10, 0x100

    invoke-static {v9, v10, v7}, Lorg/brotli/dec/goto;->if(Lorg/brotli/dec/goto;II)V

    .line 26
    iget-object v7, p0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    const/16 v9, 0x2c0

    iget-object v10, p0, Lorg/brotli/dec/class;->super:[I

    aget v10, v10, v5

    invoke-static {v7, v9, v10}, Lorg/brotli/dec/goto;->if(Lorg/brotli/dec/goto;II)V

    .line 27
    iget-object v7, p0, Lorg/brotli/dec/class;->const:Lorg/brotli/dec/goto;

    invoke-static {v7, v6, v8}, Lorg/brotli/dec/goto;->if(Lorg/brotli/dec/goto;II)V

    .line 28
    iget-object v6, p0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    invoke-static {v6, v0}, Lorg/brotli/dec/goto;->do(Lorg/brotli/dec/goto;Lorg/brotli/dec/do;)V

    .line 29
    iget-object v6, p0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    invoke-static {v6, v0}, Lorg/brotli/dec/goto;->do(Lorg/brotli/dec/goto;Lorg/brotli/dec/do;)V

    .line 30
    iget-object v6, p0, Lorg/brotli/dec/class;->const:Lorg/brotli/dec/goto;

    invoke-static {v6, v0}, Lorg/brotli/dec/goto;->do(Lorg/brotli/dec/goto;Lorg/brotli/dec/do;)V

    .line 31
    iput v1, p0, Lorg/brotli/dec/class;->package:I

    .line 32
    iput v1, p0, Lorg/brotli/dec/class;->private:I

    .line 33
    sget-object v0, Lorg/brotli/dec/new;->if:[I

    iget-object v6, p0, Lorg/brotli/dec/class;->extends:[B

    aget-byte v7, v6, v1

    aget v7, v0, v7

    iput v7, p0, Lorg/brotli/dec/class;->abstract:I

    .line 34
    aget-byte v6, v6, v1

    add-int/2addr v6, v5

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/class;->continue:I

    .line 35
    iput v1, p0, Lorg/brotli/dec/class;->static:I

    .line 36
    iget-object v0, p0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    iget-object v0, v0, Lorg/brotli/dec/goto;->for:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/class;->switch:I

    .line 37
    iget-object v0, p0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    iget-object v0, v0, Lorg/brotli/dec/goto;->for:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/class;->strictfp:I

    .line 38
    iget-object p0, p0, Lorg/brotli/dec/class;->throw:[I

    aput v5, p0, v2

    aput v5, p0, v4

    aput v5, p0, v1

    const/4 v0, 0x5

    .line 39
    aput v1, p0, v0

    aput v1, p0, v3

    aput v1, p0, v5

    return-void
.end method

.method private static try(Lorg/brotli/dec/class;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lorg/brotli/dec/try;->if(Lorg/brotli/dec/class;I)V

    .line 2
    iget-object v1, p0, Lorg/brotli/dec/class;->throw:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lorg/brotli/dec/class;->private:I

    return-void
.end method

.method private static while(Lorg/brotli/dec/class;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/class;->for:Lorg/brotli/dec/do;

    .line 2
    iget-boolean v1, p0, Lorg/brotli/dec/class;->goto:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lorg/brotli/dec/class;->if:I

    .line 4
    iget v0, p0, Lorg/brotli/dec/class;->import:I

    iput v0, p0, Lorg/brotli/dec/class;->l:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/brotli/dec/class;->k:I

    const/16 v0, 0xc

    .line 6
    iput v0, p0, Lorg/brotli/dec/class;->do:I

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/brotli/dec/class;->catch:Lorg/brotli/dec/goto;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/brotli/dec/goto;->if:[I

    .line 8
    iput-object v2, v1, Lorg/brotli/dec/goto;->for:[I

    .line 9
    iget-object v1, p0, Lorg/brotli/dec/class;->class:Lorg/brotli/dec/goto;

    iput-object v2, v1, Lorg/brotli/dec/goto;->if:[I

    .line 10
    iput-object v2, v1, Lorg/brotli/dec/goto;->for:[I

    .line 11
    iget-object v1, p0, Lorg/brotli/dec/class;->const:Lorg/brotli/dec/goto;

    iput-object v2, v1, Lorg/brotli/dec/goto;->if:[I

    .line 12
    iput-object v2, v1, Lorg/brotli/dec/goto;->for:[I

    .line 13
    invoke-static {v0}, Lorg/brotli/dec/do;->break(Lorg/brotli/dec/do;)V

    .line 14
    invoke-static {v0, p0}, Lorg/brotli/dec/try;->else(Lorg/brotli/dec/do;Lorg/brotli/dec/class;)V

    .line 15
    iget v1, p0, Lorg/brotli/dec/class;->else:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/brotli/dec/class;->break:Z

    if-nez v1, :cond_1

    return-void

    .line 16
    :cond_1
    iget-boolean v1, p0, Lorg/brotli/dec/class;->this:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/brotli/dec/class;->break:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lorg/brotli/dec/class;->do:I

    goto :goto_2

    .line 18
    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/do;->else(Lorg/brotli/dec/do;)V

    .line 19
    iget-boolean v0, p0, Lorg/brotli/dec/class;->break:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lorg/brotli/dec/class;->do:I

    .line 20
    :goto_2
    iget-boolean v0, p0, Lorg/brotli/dec/class;->break:Z

    if-eqz v0, :cond_5

    return-void

    .line 21
    :cond_5
    iget-wide v0, p0, Lorg/brotli/dec/class;->e:J

    iget v2, p0, Lorg/brotli/dec/class;->else:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/class;->e:J

    .line 22
    iget v0, p0, Lorg/brotli/dec/class;->d:I

    iget v1, p0, Lorg/brotli/dec/class;->c:I

    if-ge v0, v1, :cond_6

    .line 23
    invoke-static {p0}, Lorg/brotli/dec/try;->catch(Lorg/brotli/dec/class;)V

    :cond_6
    return-void
.end method
