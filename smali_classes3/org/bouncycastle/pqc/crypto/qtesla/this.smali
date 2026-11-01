.class public Lorg/bouncycastle/pqc/crypto/qtesla/this;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstract([B[BII[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v20, Lorg/bouncycastle/pqc/crypto/qtesla/else;->for:[I

    const/16 v5, 0x400

    const/16 v6, 0x30

    const v7, 0x403001

    const-wide v8, 0xf7402fffL

    const/16 v10, 0x17

    const v11, 0xfffff

    const/16 v12, 0x15

    const/16 v13, 0x38e

    const v14, 0x8c03

    const/16 v15, 0xaa0

    const/16 v16, 0x26

    const v17, 0x129466

    const/16 v18, 0x3fd

    const/16 v19, 0x20

    invoke-static/range {v0 .. v20}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->package([B[BII[BIIIJIIIIIIIIII[I)I

    move-result v0

    return v0
.end method

.method public static break([B[BLjava/security/SecureRandom;)I
    .locals 16

    sget-object v13, Lorg/bouncycastle/pqc/crypto/qtesla/else;->try:[I

    const/16 v3, 0x400

    const/16 v4, 0x30

    const v5, 0x804001

    const-wide v6, 0xf0803fffL

    const/16 v8, 0x18

    const/16 v9, 0x26

    const v10, 0x3a10f

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    const/16 v14, 0x47b

    const/16 v15, 0x4d1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->case([B[BLjava/security/SecureRandom;IIIJIIID[III)I

    move-result v0

    return v0
.end method

.method private static case([B[BLjava/security/SecureRandom;IIIJIIID[III)I
    .locals 23

    move-object/from16 v0, p1

    move/from16 v11, p3

    move/from16 v10, p4

    move/from16 v12, p5

    const/16 v13, 0x20

    new-array v7, v13, [B

    const/16 v1, 0x80

    new-array v14, v1, [B

    new-array v15, v11, [I

    new-array v9, v11, [I

    new-array v8, v11, [I

    new-array v6, v11, [I

    move-object/from16 v1, p2

    invoke-virtual {v1, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    const v5, 0x402c01

    if-ne v12, v5, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object v1, v14

    move-object v4, v7

    const v13, 0x402c01

    move/from16 v5, v16

    move-object/from16 p2, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    goto :goto_0

    :cond_0
    move-object/from16 p2, v6

    const v13, 0x402c01

    :goto_0
    const v6, 0x804001

    const v5, 0x403001

    if-eq v12, v5, :cond_2

    if-ne v12, v6, :cond_1

    goto :goto_1

    :cond_1
    const v7, 0x403001

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0x80

    const/16 v16, 0x0

    const/16 v17, 0x20

    move-object v1, v14

    move-object v4, v7

    const v7, 0x403001

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    :goto_2
    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ne v12, v13, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v9, v6, v14, v6, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->new([II[BII)V

    :cond_3
    if-ne v12, v7, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x0

    add-int/lit8 v16, v1, 0x1

    sget-object v17, Lorg/bouncycastle/pqc/crypto/qtesla/break;->if:[[D

    move-object v1, v9

    move-object v3, v14

    move/from16 v5, v16

    move/from16 v6, p3

    move-object/from16 v20, v8

    move-wide/from16 v7, p11

    move-object/from16 v21, v9

    move-object/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->try([II[BIIID[[D)V

    move/from16 v1, v16

    goto :goto_4

    :cond_4
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_4
    const v9, 0x804001

    if-ne v12, v9, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x0

    add-int/lit8 v16, v1, 0x1

    sget-object v17, Lorg/bouncycastle/pqc/crypto/qtesla/break;->for:[[D

    move-object/from16 v1, v21

    move-object v3, v14

    move/from16 v5, v16

    move/from16 v6, p3

    move-wide/from16 v7, p11

    move-object/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->try([II[BIIID[[D)V

    move/from16 v2, p14

    move/from16 v1, v16

    goto :goto_5

    :cond_5
    move/from16 v2, p14

    :goto_5
    move-object/from16 v9, v21

    invoke-static {v9, v2, v11, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->for([IIII)Z

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_d

    :goto_6
    if-ne v12, v13, :cond_6

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x20

    invoke-static {v15, v6, v14, v8, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->new([II[BII)V

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    const/16 v8, 0x20

    :goto_7
    const v5, 0x403001

    if-ne v12, v5, :cond_7

    const/4 v2, 0x0

    const/16 v4, 0x20

    add-int/lit8 v16, v1, 0x1

    sget-object v17, Lorg/bouncycastle/pqc/crypto/qtesla/break;->if:[[D

    move-object v1, v15

    move-object v3, v14

    move/from16 v5, v16

    const/16 v18, 0x0

    move/from16 v6, p3

    const/4 v13, 0x1

    const/16 v19, 0x20

    move-wide/from16 v7, p11

    move-object/from16 v22, v9

    move-object/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->try([II[BIIID[[D)V

    move/from16 v1, v16

    goto :goto_8

    :cond_7
    move-object/from16 v22, v9

    const/4 v13, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x20

    :goto_8
    const v9, 0x804001

    if-ne v12, v9, :cond_8

    const/4 v2, 0x0

    const/16 v4, 0x20

    add-int/lit8 v16, v1, 0x1

    sget-object v17, Lorg/bouncycastle/pqc/crypto/qtesla/break;->for:[[D

    move-object v1, v15

    move-object v3, v14

    move/from16 v5, v16

    move/from16 v6, p3

    move-wide/from16 v7, p11

    move-object/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->try([II[BIIID[[D)V

    move/from16 v3, p15

    move/from16 v1, v16

    goto :goto_9

    :cond_8
    move/from16 v3, p15

    :goto_9
    invoke-static {v15, v3, v11, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->for([IIII)Z

    move-result v2

    if-eq v2, v13, :cond_c

    const/16 v3, 0x40

    move-object/from16 v1, v20

    move-object v2, v14

    move/from16 v4, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->switch([I[BIIIJIII)V

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object v3, v15

    move-object/from16 v8, p13

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->while([I[I[IIIJ[I)V

    move-object/from16 v5, p2

    move-object/from16 v4, v22

    invoke-static {v5, v5, v4, v11, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->throw([I[I[III)V

    const/16 v1, 0x40

    const v6, 0x402c01

    if-ne v12, v6, :cond_9

    invoke-static {v0, v15, v4, v14, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->class([B[I[I[BI)V

    const/16 v2, 0x40

    const/16 v3, 0x200

    const/16 v6, 0x17

    move-object/from16 p6, p0

    move-object/from16 p7, v5

    move-object/from16 p8, v14

    move/from16 p9, v2

    move/from16 p10, v3

    move/from16 p11, v6

    invoke-static/range {p6 .. p11}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->super([B[I[BIII)V

    :cond_9
    const v7, 0x403001

    if-ne v12, v7, :cond_a

    invoke-static {v0, v15, v4, v14, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->const([B[I[I[BI)V

    const/16 v2, 0x40

    const/16 v3, 0x400

    const/16 v6, 0x17

    move-object/from16 p6, p0

    move-object/from16 p7, v5

    move-object/from16 p8, v14

    move/from16 p9, v2

    move/from16 p10, v3

    move/from16 p11, v6

    invoke-static/range {p6 .. p11}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->super([B[I[BIII)V

    :cond_a
    const v8, 0x804001

    if-ne v12, v8, :cond_b

    invoke-static {v0, v15, v4, v14, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->final([B[I[I[BI)V

    move-object/from16 v9, p0

    invoke-static {v9, v5, v14, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->while([B[I[BI)V

    :cond_b
    return v18

    :cond_c
    move-object/from16 v9, p0

    move-object/from16 v9, v22

    const/4 v7, 0x1

    const v13, 0x402c01

    goto/16 :goto_6

    :cond_d
    move/from16 v3, p15

    move-object v4, v9

    move-object/from16 v9, p0

    move-object v9, v4

    move-object/from16 v8, v20

    const/4 v6, 0x0

    const v7, 0x403001

    goto/16 :goto_3
.end method

.method public static catch([B[BLjava/security/SecureRandom;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v14, Lorg/bouncycastle/pqc/crypto/qtesla/goto;->do:[J

    const/16 v3, 0x400

    const/4 v4, 0x4

    const/16 v5, 0x19

    const v6, 0x1cf77001

    const-wide v7, 0xcbf76fffL

    const/16 v9, 0x1d

    const/16 v10, 0x6c

    const v11, 0x1c2321d4

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const/16 v15, 0x22a

    const/16 v16, 0x22a

    invoke-static/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->try([B[BLjava/security/SecureRandom;IIIIJIIID[JII)I

    move-result v0

    return v0
.end method

.method private static class([BI[I[BIIII)V
    .locals 8

    add-int/lit8 v6, p5, 0x40

    new-array v7, v6, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    div-int/lit8 v1, p7, 0x2

    aget v2, p2, v0

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1f

    aget v2, p2, v0

    sub-int/2addr v2, p7

    and-int/2addr v2, v1

    aget v3, p2, v0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, p2, v0

    aget v1, p2, v0

    const/4 v2, 0x1

    shl-int v3, v2, p6

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v1, v4

    add-int/lit8 v4, p6, -0x1

    shl-int/2addr v2, v4

    sub-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    sub-int v3, v1, v3

    and-int/2addr v3, v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    aget v2, p2, v0

    sub-int/2addr v2, v1

    shr-int v1, v2, p6

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x40

    invoke-static {p3, p4, v7, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const p2, 0x402c01

    if-ne p7, p2, :cond_1

    const/16 v2, 0x20

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    :cond_1
    const p2, 0x403001

    if-eq p7, p2, :cond_2

    const p2, 0x804001

    if-ne p7, p2, :cond_3

    :cond_2
    const/16 p4, 0x20

    const/4 p6, 0x0

    move-object p2, p0

    move p3, p1

    move-object p5, v7

    move p7, v6

    invoke-static/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    :cond_3
    return-void
.end method

.method private static const([BI[J[BIIIII)V
    .locals 19

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p8

    mul-int v3, v0, v1

    add-int/lit8 v4, v3, 0x40

    new-array v5, v4, [B

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    mul-int v8, v0, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_0

    aget-wide v10, p2, v8

    div-int/lit8 v12, v2, 0x2

    int-to-long v12, v12

    sub-long/2addr v12, v10

    const/16 v14, 0x3f

    shr-long/2addr v12, v14

    move v15, v7

    int-to-long v6, v2

    sub-long v6, v10, v6

    and-long/2addr v6, v12

    const-wide/16 v16, -0x1

    xor-long v12, v12, v16

    and-long/2addr v10, v12

    or-long/2addr v6, v10

    const/4 v10, 0x1

    shl-int v11, v10, p7

    add-int/lit8 v12, v11, -0x1

    int-to-long v12, v12

    and-long/2addr v12, v6

    add-int/lit8 v18, p7, -0x1

    shl-int v10, v10, v18

    int-to-long v0, v10

    sub-long/2addr v0, v12

    shr-long/2addr v0, v14

    int-to-long v10, v11

    sub-long v10, v12, v10

    and-long/2addr v10, v0

    xor-long v0, v0, v16

    and-long/2addr v0, v12

    or-long/2addr v0, v10

    add-int/lit8 v10, v8, 0x1

    sub-long/2addr v6, v0

    shr-long v0, v6, p7

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, v5, v8

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p5

    move/from16 v1, p6

    move v8, v10

    move v7, v15

    goto :goto_1

    :cond_0
    move v15, v7

    add-int/lit8 v7, v15, 0x1

    move/from16 v0, p5

    move/from16 v1, p6

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    move-object/from16 v1, p3

    move/from16 v6, p4

    invoke-static {v1, v6, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v0, 0x1cf77001

    if-ne v2, v0, :cond_2

    const/16 v0, 0x20

    const/4 v1, 0x0

    move-object/from16 p2, p0

    move/from16 p3, p1

    move/from16 p4, v0

    move-object/from16 p5, v5

    move/from16 p6, v1

    move/from16 p7, v4

    invoke-static/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    :cond_2
    const v0, 0x43564001

    if-ne v2, v0, :cond_3

    const/16 v0, 0x20

    const/4 v1, 0x0

    move-object/from16 p2, p0

    move/from16 p3, p1

    move/from16 p4, v0

    move-object/from16 p5, v5

    move/from16 p6, v1

    move/from16 p7, v4

    invoke-static/range {p2 .. p7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    :cond_3
    return-void
.end method

.method public static continue([B[BII[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v20, Lorg/bouncycastle/pqc/crypto/qtesla/else;->try:[I

    const/16 v5, 0x400

    const/16 v6, 0x30

    const v7, 0x804001

    const-wide v8, 0xf0803fffL

    const/16 v10, 0x18

    const v11, 0x1fffff

    const/16 v12, 0x16

    const/16 v13, 0x4d1

    const/16 v14, 0x3e01

    const/16 v15, 0xb20

    const/16 v16, 0x26

    const v17, 0x3a10f

    const/16 v18, 0x1ff

    const/16 v19, 0x20

    invoke-static/range {v0 .. v20}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->package([B[BII[BIIIJIIIIIIIIII[I)I

    move-result v0

    return v0
.end method

.method private static default([IIII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget v2, p0, v1

    sub-int v3, p2, p3

    neg-int v4, v3

    if-lt v2, v4, :cond_1

    aget v2, p0, v1

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static do(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static else([B[BLjava/security/SecureRandom;)I
    .locals 16

    sget-object v13, Lorg/bouncycastle/pqc/crypto/qtesla/else;->do:[I

    const/16 v3, 0x200

    const/16 v4, 0x1e

    const v5, 0x402c01

    const-wide v6, 0xb8b02bffL

    const/16 v8, 0x17

    const/16 v9, 0x13

    const v10, 0x1ba9b

    const-wide/high16 v11, 0x403b000000000000L    # 27.0

    const/16 v14, 0x632

    const/16 v15, 0x632

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->case([B[BLjava/security/SecureRandom;IIIJIIID[III)I

    move-result v0

    return v0
.end method

.method private static extends([JIII)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-wide v2, p0, v1

    sub-int v4, p2, p3

    neg-int v5, v4

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-ltz v7, :cond_1

    aget-wide v2, p0, v1

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static final([B[BII[BLjava/security/SecureRandom;IIIIJIIIIIIIIIII)I
    .locals 30

    move-object/from16 v0, p0

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    const/16 v1, 0x20

    new-array v11, v1, [B

    new-array v10, v1, [B

    const/16 v2, 0x80

    new-array v9, v2, [B

    new-array v2, v1, [B

    new-array v8, v14, [I

    new-array v7, v14, [S

    mul-int v3, v12, v13

    new-array v6, v3, [J

    new-array v5, v3, [J

    new-array v4, v12, [J

    move-object/from16 p2, v7

    new-array v7, v12, [J

    move-object/from16 v16, v7

    new-array v7, v12, [J

    move-object/from16 v17, v7

    new-array v7, v12, [J

    new-array v3, v3, [J

    move-object/from16 v1, p5

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    move-object/from16 v19, v3

    const/16 v3, 0x20

    invoke-static {v2, v1, v9, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p20, -0x20

    move-object/from16 v18, v7

    move-object/from16 v7, p4

    invoke-static {v7, v2, v9, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v2, 0x1cf77001

    if-ne v15, v2, :cond_0

    const/16 v20, 0x40

    const/16 v21, 0x40

    const/16 v22, 0x0

    move-object v3, v9

    move-object/from16 p5, v4

    move/from16 v4, v20

    move-object/from16 v20, v5

    move/from16 v5, v21

    move-object/from16 v21, v6

    move-object/from16 v6, p1

    move-object/from16 v23, v16

    move-object/from16 v16, p2

    move/from16 v7, v22

    move-object/from16 v22, v8

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x80

    const v8, 0x1cf77001

    move-object v2, v10

    move-object v5, v9

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    goto :goto_0

    :cond_0
    move-object/from16 p5, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v16

    const v8, 0x1cf77001

    move-object/from16 v16, p2

    :goto_0
    const v2, 0x43564001

    if-ne v15, v2, :cond_1

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/4 v7, 0x0

    move-object v3, v9

    move-object/from16 v6, p1

    const v14, 0x1cf77001

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x80

    const v8, 0x43564001

    move-object v2, v10

    move-object v5, v9

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    goto :goto_1

    :cond_1
    const v8, 0x43564001

    const v14, 0x1cf77001

    :goto_1
    add-int/lit8 v3, p20, -0x40

    const/4 v7, 0x0

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-object/from16 v24, v9

    move/from16 v9, p12

    move-object/from16 v25, v10

    move/from16 v10, p18

    move-object/from16 p1, v11

    move/from16 v11, p19

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->throws([J[BIIIIJIII)V

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_2
    const/4 v3, 0x0

    const/4 v9, 0x1

    add-int/lit8 v26, v1, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, v25

    move/from16 v4, v26

    move/from16 v5, p6

    move/from16 v6, p9

    move/from16 v7, p13

    move/from16 v8, p14

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->break([J[BIIIIII)V

    move-object/from16 v10, p5

    move-object/from16 v8, v23

    invoke-static {v8, v10, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->native([J[JI)V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v13, :cond_2

    mul-int v4, v12, v7

    const/4 v6, 0x0

    move-object/from16 v1, v20

    move v2, v4

    move-object/from16 v3, v21

    move-object v5, v8

    move/from16 v23, v7

    move/from16 v7, p6

    move-object/from16 v27, v8

    move/from16 v8, p9

    move-object/from16 v28, v10

    const/4 v14, 0x1

    move-wide/from16 v9, p10

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->import([JI[JI[JIIIJ)V

    add-int/lit8 v7, v23, 0x1

    move-object/from16 v8, v27

    move-object/from16 v10, v28

    const/4 v9, 0x1

    const v14, 0x1cf77001

    goto :goto_3

    :cond_2
    move-object/from16 v27, v8

    move-object/from16 v28, v10

    const/4 v14, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x40

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v24

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p15

    move/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->const([BI[J[BIIIII)V

    const/4 v4, 0x0

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v5, p6

    move/from16 v6, p8

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->if([I[S[BIII)V

    const/4 v2, 0x0

    move-object/from16 v1, v18

    move-object/from16 v3, p4

    move-object/from16 v5, v22

    move-object/from16 v6, v16

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->package([JI[BI[I[SII)V

    const/4 v6, 0x0

    move-object/from16 v1, v17

    move-object/from16 v3, v28

    move-object/from16 v5, v18

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->super([JI[JI[JII)V

    move/from16 v10, p13

    move/from16 v9, p16

    move-object/from16 v8, v17

    invoke-static {v8, v12, v10, v9}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->static([JIII)Z

    move-result v1

    if-ne v1, v14, :cond_3

    move-object/from16 v17, v8

    move/from16 v1, v26

    move-object/from16 v23, v27

    move-object/from16 p5, v28

    :goto_4
    const v14, 0x1cf77001

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_5

    mul-int v11, v12, v1

    add-int/lit8 v17, v1, 0x1

    mul-int v4, v12, v17

    move-object/from16 v1, v19

    move v2, v11

    move-object/from16 v3, p4

    move-object/from16 v5, v22

    move-object/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v29, v8

    move/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->package([JI[BI[I[SII)V

    move-object/from16 v1, v20

    move-object/from16 v3, v20

    move v4, v11

    move-object/from16 v5, v19

    move v6, v11

    move/from16 v8, p9

    move/from16 v9, p21

    move/from16 v10, p22

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->public([JI[JI[JIIIII)V

    move/from16 v3, p6

    move/from16 v4, p15

    move/from16 v5, p9

    move/from16 v6, p17

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->throws([JIIIII)Z

    move-result v11

    if-ne v11, v14, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v10, p13

    move/from16 v9, p16

    move/from16 v1, v17

    move-object/from16 v8, v29

    goto :goto_5

    :cond_5
    move-object/from16 v29, v8

    :goto_6
    if-ne v11, v14, :cond_6

    move/from16 v1, v26

    move-object/from16 v23, v27

    move-object/from16 p5, v28

    move-object/from16 v17, v29

    goto :goto_4

    :cond_6
    const v1, 0x1cf77001

    if-ne v15, v1, :cond_7

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->static([BI[BI[J)V

    goto :goto_7

    :cond_7
    move-object/from16 v1, p1

    move-object/from16 v2, v29

    const/4 v3, 0x0

    :goto_7
    const v4, 0x43564001

    if-ne v15, v4, :cond_8

    invoke-static {v0, v3, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->public([BI[BI[J)V

    :cond_8
    return v3
.end method

.method private static finally([B[BII[BIIIIJIIIIIIIII[J)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    const/16 v11, 0x20

    new-array v10, v11, [B

    new-array v9, v11, [B

    new-array v4, v11, [B

    const/16 v5, 0x40

    new-array v7, v5, [B

    mul-int v5, v12, v13

    new-array v8, v5, [I

    new-array v6, v14, [I

    new-array v0, v14, [S

    new-array v14, v5, [J

    move-object/from16 p20, v14

    new-array v14, v12, [J

    new-array v13, v12, [J

    move-object/from16 v16, v13

    new-array v13, v5, [J

    new-array v5, v5, [J

    move/from16 v11, p3

    move-object/from16 v18, v6

    move/from16 v6, p15

    if-ge v11, v6, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v11, 0x1cf77001

    if-ne v15, v11, :cond_1

    invoke-static {v10, v14, v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->catch([B[J[BI)V

    :cond_1
    const v6, 0x43564001

    if-ne v15, v6, :cond_2

    invoke-static {v10, v14, v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->this([B[J[BI)V

    :cond_2
    move/from16 v1, p12

    move/from16 v2, p14

    invoke-static {v14, v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->extends([JIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v0, -0x2

    return v0

    :cond_3
    const/4 v2, 0x0

    if-ne v15, v11, :cond_4

    invoke-static {v8, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->else([I[BI[B)V

    :cond_4
    if-ne v15, v6, :cond_5

    invoke-static {v8, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->try([I[BI[B)V

    :cond_5
    const/4 v3, 0x0

    move-object v1, v5

    move-object v2, v4

    move/from16 v4, p5

    move-object/from16 v19, v5

    move/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-wide/from16 v7, p9

    move-object/from16 p1, v9

    move/from16 v9, p11

    move-object/from16 p2, v10

    move/from16 v10, p16

    const/16 v15, 0x20

    move/from16 v11, p17

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->throws([J[BIIIIJIII)V

    const/4 v4, 0x0

    move-object/from16 v1, v18

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->if([I[S[BIII)V

    move-object/from16 v1, v16

    invoke-static {v1, v14, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->native([J[JI)V

    move/from16 v11, p6

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_6

    mul-int v17, v12, v14

    const/4 v6, 0x0

    move-object/from16 v1, p20

    move/from16 v2, v17

    move-object/from16 v3, v19

    move/from16 v4, v17

    move-object/from16 v5, v16

    move/from16 v7, p5

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->import([JI[JI[JIIIJ)V

    move-object v1, v13

    move-object/from16 v3, v21

    move-object/from16 v5, v18

    move-object v6, v0

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p18

    move/from16 v11, p19

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->finally([JI[II[I[SIIIII)V

    move-object/from16 v1, p20

    move-object/from16 v3, p20

    move-object v5, v13

    move/from16 v6, v17

    move/from16 v8, p8

    move/from16 v9, p18

    move/from16 v10, p19

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->public([JI[JI[JIIIII)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v11, p6

    goto :goto_0

    :cond_6
    move/from16 v8, p8

    const v1, 0x1cf77001

    if-ne v8, v1, :cond_7

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x0

    move-object/from16 v3, p0

    array-length v4, v3

    move-object/from16 p14, v20

    move/from16 p15, v0

    move/from16 p16, v1

    move-object/from16 p17, p0

    move/from16 p18, v2

    move/from16 p19, v4

    invoke-static/range {p14 .. p19}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    goto :goto_1

    :cond_7
    move-object/from16 v3, p0

    :goto_1
    const v0, 0x43564001

    if-ne v8, v0, :cond_8

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x0

    array-length v4, v3

    move-object/from16 p14, v20

    move/from16 p15, v0

    move/from16 p16, v1

    move-object/from16 p17, p0

    move/from16 p18, v2

    move/from16 p19, v4

    invoke-static/range {p14 .. p19}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, p20

    move-object/from16 v3, v20

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p13

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->const([BI[J[BIIIII)V

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, v15}, Lorg/bouncycastle/pqc/crypto/qtesla/do;->new([BI[BII)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x3

    return v0

    :cond_9
    return v2
.end method

.method private static for([IIII)Z
    .locals 9

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->do(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge p0, p3, :cond_2

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget v5, v0, v4

    aget v6, v0, v3

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1f

    aget v6, v0, v4

    and-int/2addr v6, v5

    aget v7, v0, v3

    xor-int/lit8 v8, v5, -0x1

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aget v7, v0, v3

    and-int/2addr v5, v7

    aget v7, v0, v4

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v0, v4

    aput v6, v0, v3

    move v3, v4

    goto :goto_2

    :cond_1
    aget v3, v0, v4

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    if-le v2, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static goto([B[BLjava/security/SecureRandom;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v14, Lorg/bouncycastle/pqc/crypto/qtesla/goto;->for:[J

    const/16 v3, 0x800

    const/4 v4, 0x5

    const/16 v5, 0x28

    const v6, 0x43564001

    const-wide/32 v7, 0x33563fff

    const/16 v9, 0x1f

    const/16 v10, 0xb4

    const v11, 0x32bfafac

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const/16 v15, 0x385

    const/16 v16, 0x385

    invoke-static/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->try([B[BLjava/security/SecureRandom;IIIIJIIID[JII)I

    move-result v0

    return v0
.end method

.method private static if(J)J
    .locals 2

    const/16 v0, 0x3f

    shr-long v0, p0, v0

    xor-long/2addr p0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static import([B[BII[BLjava/security/SecureRandom;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v21, Lorg/bouncycastle/pqc/crypto/qtesla/else;->for:[I

    const/16 v6, 0x400

    const/16 v7, 0x30

    const v8, 0x403001

    const-wide v9, 0xf7402fffL

    const/16 v11, 0x17

    const v12, 0xfffff

    const/16 v13, 0x14

    const/16 v14, 0x15

    const/16 v15, 0x38e

    const/16 v16, 0x38e

    const/16 v17, 0x26

    const v18, 0x129466

    const/16 v19, 0x3fd

    const/16 v20, 0x20

    invoke-static/range {v0 .. v21}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->super([B[BII[BLjava/security/SecureRandom;IIIJIIIIIIIIII[I)I

    move-result v0

    return v0
.end method

.method public static native([B[BII[BLjava/security/SecureRandom;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v21, Lorg/bouncycastle/pqc/crypto/qtesla/else;->try:[I

    const/16 v6, 0x400

    const/16 v7, 0x30

    const v8, 0x804001

    const-wide v9, 0xf0803fffL

    const/16 v11, 0x18

    const v12, 0x1fffff

    const/16 v13, 0x15

    const/16 v14, 0x16

    const/16 v15, 0x4d1

    const/16 v16, 0x47b

    const/16 v17, 0x26

    const v18, 0x3a10f

    const/16 v19, 0x1ff

    const/16 v20, 0x20

    invoke-static/range {v0 .. v21}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->super([B[BII[BLjava/security/SecureRandom;IIIJIIIIIIIIII[I)I

    move-result v0

    return v0
.end method

.method private static new([JIIII)Z
    .locals 8

    new-array v0, p3, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p1, v2

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->if(J)J

    move-result-wide v3

    long-to-int v4, v3

    int-to-short v3, v4

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_1
    if-ge p0, p4, :cond_2

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-short v4, v0, v3

    aget-short v5, v0, v2

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0xf

    int-to-short v4, v4

    aget-short v5, v0, v3

    and-int/2addr v5, v4

    aget-short v6, v0, v2

    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-short v5, v5

    aget-short v6, v0, v2

    and-int/2addr v4, v6

    aget-short v6, v0, v3

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, v0, v3

    aput-short v5, v0, v2

    move v2, v3

    goto :goto_2

    :cond_1
    aget-short v2, v0, v3

    add-int/2addr p1, v2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static package([B[BII[BIIIJIIIIIIIIII[I)I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    const/16 v14, 0x20

    new-array v15, v14, [B

    new-array v10, v14, [B

    new-array v7, v14, [B

    const/16 v1, 0x40

    new-array v9, v1, [B

    new-array v8, v11, [I

    new-array v6, v12, [I

    new-array v5, v12, [S

    new-array v4, v11, [I

    new-array v3, v11, [I

    new-array v2, v11, [I

    new-array v1, v11, [I

    move/from16 v14, p3

    move-object/from16 p18, v1

    move/from16 v1, p15

    if-ge v14, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v14, 0x403001

    const v1, 0x402c01

    if-eq v13, v1, :cond_2

    if-ne v13, v14, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v16, p18

    move-object/from16 v17, v2

    move-object v14, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v16, p18

    const v14, 0x402c01

    move-object v1, v15

    move-object/from16 v17, v2

    move-object v2, v3

    move-object v14, v3

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move/from16 v4, p2

    move-object/from16 v19, v5

    move/from16 v5, p5

    move-object/from16 v20, v6

    move/from16 v6, p12

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->goto([B[I[BIII)V

    :goto_1
    const v6, 0x804001

    if-ne v13, v6, :cond_3

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v15, v14, v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->break([B[I[BI)V

    :cond_3
    move/from16 v1, p11

    move/from16 v2, p13

    invoke-static {v14, v11, v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->default([IIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v0, -0x2

    return v0

    :cond_4
    const v1, 0x402c01

    if-eq v13, v1, :cond_6

    const v1, 0x403001

    if-ne v13, v1, :cond_5

    goto :goto_2

    :cond_5
    const v11, 0x804001

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, v7

    move-object/from16 v4, p4

    move/from16 v5, p5

    const v11, 0x804001

    move/from16 v6, p10

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->new([I[BI[BII)V

    :goto_3
    const/4 v6, 0x0

    if-ne v13, v11, :cond_7

    move-object/from16 v1, p4

    invoke-static {v8, v7, v6, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->case([I[BI[B)V

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v1, v16

    move-object v2, v7

    move/from16 v4, p5

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v21, v8

    move/from16 v8, p10

    move-object/from16 v22, v9

    move/from16 v9, p16

    move-object/from16 p1, v10

    move/from16 v10, p17

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->switch([I[BIIIJIII)V

    const/4 v4, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object v3, v15

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->if([I[S[BIII)V

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->extends([I[I[I[SII)V

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object v3, v14

    move/from16 v4, p5

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p20

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->while([I[I[IIIJ[I)V

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    move/from16 v8, p14

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->static([I[I[IIIJI)V

    const v1, 0x402c01

    if-ne v13, v1, :cond_8

    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    array-length v4, v0

    move-object/from16 p13, v22

    move/from16 p14, v1

    move/from16 p15, v2

    move-object/from16 p16, p0

    move/from16 p17, v3

    move/from16 p18, v4

    invoke-static/range {p13 .. p18}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    :cond_8
    const v1, 0x403001

    if-eq v13, v1, :cond_9

    if-ne v13, v11, :cond_a

    :cond_9
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    array-length v4, v0

    move-object/from16 p13, v22

    move/from16 p14, v1

    move/from16 p15, v2

    move-object/from16 p16, p0

    move/from16 p17, v3

    move/from16 p18, v4

    invoke-static/range {p13 .. p18}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 p13, p1

    move/from16 p14, v0

    move-object/from16 p15, v18

    move-object/from16 p16, v22

    move/from16 p17, v1

    move/from16 p18, p5

    move/from16 p19, p12

    move/from16 p20, p7

    invoke-static/range {p13 .. p20}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->class([BI[I[BIIII)V

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v15, v1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/do;->new([BI[BII)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, -0x3

    return v0

    :cond_b
    return v1
.end method

.method public static private([B[BII[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v20, Lorg/bouncycastle/pqc/crypto/qtesla/else;->do:[I

    const/16 v5, 0x200

    const/16 v6, 0x1e

    const v7, 0x402c01

    const-wide v8, 0xb8b02bffL

    const/16 v10, 0x17

    const v11, 0xfffff

    const/16 v12, 0x15

    const/16 v13, 0x632

    const v14, 0x108003

    const/16 v15, 0x560

    const/16 v16, 0x13

    const v17, 0x1ba9b

    const/16 v18, 0x3fd

    const/16 v19, 0x20

    invoke-static/range {v0 .. v20}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->package([B[BII[BIIIJIIIIIIIIII[I)I

    move-result v0

    return v0
.end method

.method public static public([B[BII[BLjava/security/SecureRandom;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/16 v6, 0x400

    const/4 v7, 0x4

    const/16 v8, 0x19

    const v9, 0x1cf77001

    const-wide v10, 0xcbf76fffL

    const/16 v12, 0x1d

    const v13, 0x1fffff

    const/16 v14, 0x15

    const/16 v15, 0x16

    const/16 v16, 0x22a

    const/16 v17, 0x22a

    const/16 v18, 0x6c

    const v19, 0x1c2321d4

    const/16 v20, 0x1440

    const/16 v21, 0x1

    const/16 v22, 0x1d

    invoke-static/range {v0 .. v22}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->final([B[BII[BLjava/security/SecureRandom;IIIIJIIIIIIIIIII)I

    move-result v0

    return v0
.end method

.method private static return([IIII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->do(I)I

    move-result v2

    sub-int v3, p2, p3

    if-le v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static static([JIII)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->if(J)J

    move-result-wide v2

    sub-int v4, p2, p3

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static strictfp([B[BII[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v20, Lorg/bouncycastle/pqc/crypto/qtesla/goto;->do:[J

    const/16 v5, 0x400

    const/4 v6, 0x4

    const/16 v7, 0x19

    const v8, 0x1cf77001

    const-wide v9, 0xcbf76fffL

    const/16 v11, 0x1d

    const v12, 0x1fffff

    const/16 v13, 0x16

    const/16 v14, 0x22a

    const/16 v15, 0xb20

    const/16 v16, 0x6c

    const v17, 0x1c2321d4

    const/16 v18, 0x1

    const/16 v19, 0x1d

    invoke-static/range {v0 .. v20}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->finally([B[BII[BIIIIJIIIIIIIII[J)I

    move-result v0

    return v0
.end method

.method private static super([B[BII[BLjava/security/SecureRandom;IIIJIIIIIIIIII[I)I
    .locals 24

    move-object/from16 v0, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    const/16 v1, 0x20

    new-array v13, v1, [B

    new-array v14, v1, [B

    const/16 v2, 0x80

    new-array v15, v2, [B

    const/16 v2, 0x40

    new-array v9, v2, [B

    new-array v2, v1, [B

    new-array v8, v11, [I

    new-array v7, v11, [S

    new-array v6, v10, [S

    new-array v5, v10, [S

    new-array v4, v10, [I

    new-array v3, v10, [I

    move-object/from16 p2, v7

    new-array v7, v10, [I

    move-object/from16 p19, v7

    new-array v7, v10, [I

    move-object/from16 p20, v7

    new-array v7, v10, [I

    move-object/from16 v16, v7

    new-array v7, v10, [I

    move-object/from16 v17, v7

    const v7, 0x402c01

    if-ne v12, v7, :cond_0

    invoke-static {v9, v6, v5, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->do([B[S[S[B)V

    :cond_0
    move-object/from16 v18, v4

    const v4, 0x403001

    if-ne v12, v4, :cond_1

    invoke-static {v9, v6, v5, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->if([B[S[S[B)V

    :cond_1
    const v4, 0x804001

    if-ne v12, v4, :cond_2

    invoke-static {v9, v6, v5, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->for([B[S[S[B)V

    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    invoke-static {v2, v0, v15, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v1, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v12, v7, :cond_3

    const/16 v1, 0x40

    const/16 v2, 0x40

    const/16 v20, 0x0

    move-object/from16 p4, v3

    move-object v3, v15

    move v4, v1

    move-object/from16 v19, v5

    move v5, v2

    move-object/from16 v22, v6

    move-object/from16 v6, p1

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    move-object/from16 v23, v16

    move-object/from16 v16, p2

    move-object/from16 p2, v23

    move/from16 v7, v20

    move-object/from16 v20, v8

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v8, v2

    move-object v2, v14

    move-object v5, v15

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    goto :goto_0

    :cond_3
    move-object/from16 v1, p19

    move-object/from16 p4, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v8

    move-object/from16 v8, p20

    move-object/from16 v23, v16

    move-object/from16 v16, p2

    move-object/from16 p2, v23

    :goto_0
    const v2, 0x403001

    const v7, 0x804001

    if-eq v12, v2, :cond_5

    if-ne v12, v7, :cond_4

    goto :goto_1

    :cond_4
    move-object v11, v8

    const v8, 0x403001

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v4, 0x40

    const/16 v5, 0x40

    const/16 v21, 0x0

    move-object v3, v15

    move-object/from16 v6, p1

    move/from16 v7, v21

    move-object v11, v8

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x80

    const v8, 0x403001

    move-object v2, v14

    move-object v5, v15

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    :goto_2
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move-object v5, v1

    move-object v1, v9

    move/from16 v3, p6

    move/from16 v4, p8

    move-object v9, v5

    move-wide/from16 v5, p9

    move/from16 v7, p11

    move/from16 v8, p17

    move-object/from16 p19, v9

    move/from16 v9, p18

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->switch([I[BIIIJIII)V

    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x0

    const/4 v8, 0x1

    add-int/lit8 v9, v0, 0x1

    move-object/from16 v0, p19

    move-object v1, v14

    move v3, v9

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p12

    move/from16 v7, p13

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->this([I[BIIIIII)V

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-object/from16 v2, p19

    move/from16 v3, p6

    move/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p21

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->while([I[I[IIIJ[I)V

    const/4 v1, 0x0

    const/16 v4, 0x40

    move-object v0, v13

    move-object/from16 v2, p4

    move-object v3, v15

    move/from16 v5, p6

    move/from16 v6, p14

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->class([BI[I[BIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object v2, v13

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->if([I[S[BIII)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->default([I[S[I[SII)V

    move-object/from16 v7, p2

    move-object/from16 v6, p19

    invoke-static {v11, v6, v7, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->final([I[I[II)V

    move/from16 v5, p12

    move/from16 v4, p15

    invoke-static {v11, v10, v5, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->return([IIII)Z

    move-result v0

    if-ne v0, v8, :cond_6

    move-object/from16 v0, p4

    move/from16 v2, p14

    move/from16 v3, p16

    move-object/from16 v1, v17

    goto :goto_4

    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->default([I[S[I[SII)V

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v0, v1, v10, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->return([I[I[III)V

    move/from16 v2, p14

    move/from16 v3, p16

    invoke-static {v0, v10, v2, v12, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->switch([IIIII)Z

    move-result v4

    if-ne v4, v8, :cond_7

    :goto_4
    move-object/from16 p4, v0

    move-object/from16 v17, v1

    move-object/from16 p19, v6

    move-object/from16 p2, v7

    move v0, v9

    goto/16 :goto_3

    :cond_7
    const v4, 0x402c01

    if-ne v12, v4, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 p15, p0

    move/from16 p16, v0

    move-object/from16 p17, v13

    move/from16 p18, v1

    move-object/from16 p19, v11

    move/from16 p20, p6

    move/from16 p21, p14

    invoke-static/range {p15 .. p21}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->native([BI[BI[III)V

    :cond_8
    const v0, 0x403001

    if-ne v12, v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 p15, p0

    move/from16 p16, v0

    move-object/from16 p17, v13

    move/from16 p18, v1

    move-object/from16 p19, v11

    move/from16 p20, p6

    move/from16 p21, p14

    invoke-static/range {p15 .. p21}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->native([BI[BI[III)V

    :cond_9
    const v0, 0x804001

    if-ne v12, v0, :cond_a

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1, v13, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->return([BI[BI[I)V

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    return v1
.end method

.method private static switch([IIIII)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    div-int/lit8 v2, p3, 0x2

    aget v3, p0, v1

    sub-int v3, v2, v3

    shr-int/lit8 v3, v3, 0x1f

    aget v4, p0, v1

    sub-int/2addr v4, p3

    and-int/2addr v4, v3

    aget v5, p0, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->do(I)I

    move-result v4

    sub-int/2addr v2, p4

    sub-int/2addr v4, v2

    xor-int/lit8 v2, v4, -0x1

    ushr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    add-int v6, v3, v4

    sub-int/2addr v6, v5

    shr-int/2addr v6, p2

    shl-int/2addr v6, p2

    sub-int/2addr v3, v6

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->do(I)I

    move-result v3

    sub-int/2addr v4, p4

    sub-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    if-ne v2, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static this([B[BLjava/security/SecureRandom;)I
    .locals 16

    sget-object v13, Lorg/bouncycastle/pqc/crypto/qtesla/else;->for:[I

    const/16 v3, 0x400

    const/16 v4, 0x30

    const v5, 0x403001

    const-wide v6, 0xf7402fffL

    const/16 v8, 0x17

    const/16 v9, 0x26

    const v10, 0x129466

    const-wide/high16 v11, 0x4022000000000000L    # 9.0

    const/16 v14, 0x38e

    const/16 v15, 0x38e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->case([B[BLjava/security/SecureRandom;IIIJIIID[III)I

    move-result v0

    return v0
.end method

.method public static throw([B[BII[BLjava/security/SecureRandom;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v21, Lorg/bouncycastle/pqc/crypto/qtesla/else;->do:[I

    const/16 v6, 0x200

    const/16 v7, 0x1e

    const v8, 0x402c01

    const-wide v9, 0xb8b02bffL

    const/16 v11, 0x17

    const v12, 0xfffff

    const/16 v13, 0x14

    const/16 v14, 0x15

    const/16 v15, 0x632

    const/16 v16, 0x632

    const/16 v17, 0x13

    const v18, 0x1ba9b

    const/16 v19, 0x3fd

    const/16 v20, 0x20

    invoke-static/range {v0 .. v21}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->super([B[BII[BLjava/security/SecureRandom;IIIJIIIIIIIIII[I)I

    move-result v0

    return v0
.end method

.method private static throws([JIIIII)Z
    .locals 17

    move/from16 v0, p4

    const/4 v1, 0x0

    move/from16 v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    div-int/lit8 v4, v0, 0x2

    int-to-long v5, v4

    add-int v7, p1, v3

    aget-wide v8, p0, v7

    sub-long/2addr v5, v8

    const/16 v8, 0x3f

    shr-long/2addr v5, v8

    aget-wide v9, p0, v7

    int-to-long v11, v0

    sub-long/2addr v9, v11

    and-long/2addr v9, v5

    aget-wide v11, p0, v7

    const-wide/16 v13, -0x1

    xor-long/2addr v5, v13

    and-long/2addr v5, v11

    or-long/2addr v5, v9

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->if(J)J

    move-result-wide v9

    sub-int v4, v4, p5

    int-to-long v11, v4

    sub-long/2addr v9, v11

    xor-long/2addr v9, v13

    ushr-long/2addr v9, v8

    add-int/lit8 v4, p3, -0x1

    const/4 v7, 0x1

    shl-int v4, v7, v4

    int-to-long v11, v4

    add-long/2addr v11, v5

    const-wide/16 v15, 0x1

    sub-long/2addr v11, v15

    shr-long v11, v11, p3

    long-to-int v12, v11

    int-to-long v11, v12

    shl-long v11, v11, p3

    sub-long/2addr v5, v11

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->if(J)J

    move-result-wide v5

    sub-int v4, v4, p5

    int-to-long v11, v4

    sub-long/2addr v5, v11

    xor-long/2addr v5, v13

    ushr-long v4, v5, v8

    or-long/2addr v4, v9

    cmp-long v6, v4, v15

    if-nez v6, :cond_0

    return v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static try([B[BLjava/security/SecureRandom;IIIIJIIID[JII)I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v1, p5

    move/from16 v14, p6

    const/16 v2, 0x20

    new-array v9, v2, [B

    add-int/lit8 v3, v13, 0x3

    mul-int/lit8 v10, v3, 0x20

    new-array v15, v10, [B

    new-array v11, v12, [J

    new-array v8, v12, [J

    mul-int v3, v12, v13

    new-array v7, v3, [J

    new-array v6, v3, [J

    new-array v5, v3, [J

    move-object/from16 v3, p2

    invoke-virtual {v3, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    const v4, 0x1cf77001

    if-ne v14, v4, :cond_0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x20

    move-object v3, v15

    const v2, 0x1cf77001

    move/from16 v4, v16

    move-object/from16 p2, v5

    move v5, v10

    move-object/from16 v16, v6

    move-object v6, v9

    move-object/from16 v19, v7

    move/from16 v7, v17

    move-object/from16 v20, v8

    move/from16 v8, v18

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->for([BII[BII)V

    goto :goto_0

    :cond_0
    move-object/from16 p2, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const v2, 0x1cf77001

    :goto_0
    const v8, 0x43564001

    if-ne v14, v8, :cond_1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x20

    move-object v3, v15

    move v5, v10

    move-object v6, v9

    const v10, 0x43564001

    move/from16 v8, v17

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/for;->new([BII[BII)V

    goto :goto_1

    :cond_1
    const v10, 0x43564001

    :goto_1
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v3, v13, :cond_5

    :goto_3
    if-ne v14, v2, :cond_2

    mul-int v6, v12, v3

    mul-int/lit8 v7, v3, 0x20

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v19

    invoke-static {v8, v6, v15, v7, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->else([JI[BII)V

    goto :goto_4

    :cond_2
    move-object/from16 v8, v19

    :goto_4
    if-ne v14, v10, :cond_3

    mul-int v6, v12, v3

    mul-int/lit8 v7, v3, 0x20

    add-int/lit8 v4, v4, 0x1

    invoke-static {v8, v6, v15, v7, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->case([JI[BII)V

    :cond_3
    mul-int v6, v12, v3

    move/from16 v7, p15

    invoke-static {v8, v6, v7, v12, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->new([JIIII)Z

    move-result v6

    if-eq v6, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v19, v8

    goto :goto_2

    :cond_4
    move-object/from16 v19, v8

    goto :goto_3

    :cond_5
    move-object/from16 v8, v19

    :goto_5
    if-ne v14, v2, :cond_6

    mul-int/lit8 v3, v13, 0x20

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11, v9, v15, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->else([JI[BII)V

    :cond_6
    if-ne v14, v10, :cond_7

    mul-int/lit8 v3, v13, 0x20

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11, v9, v15, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/break;->case([JI[BII)V

    :cond_7
    move/from16 v3, p16

    invoke-static {v11, v9, v3, v12, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->new([JIIII)Z

    move-result v6

    if-eq v6, v5, :cond_c

    add-int/lit8 v1, v13, 0x1

    const/16 v6, 0x20

    mul-int/lit8 v7, v1, 0x20

    move-object/from16 v1, v16

    const v6, 0x1cf77001

    move-object v2, v15

    move v3, v7

    move/from16 v4, p3

    move/from16 v5, p4

    const v0, 0x1cf77001

    move/from16 v6, p6

    move/from16 p5, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p7

    const/16 v18, 0x0

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v0, v11

    move/from16 v11, p11

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->throws([J[BIIIIJIII)V

    move-object/from16 v11, v20

    invoke-static {v11, v0, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->native([J[JI)V

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_9

    mul-int v20, v12, v9

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v20

    move-object v5, v11

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v21, v9

    move-wide/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->import([JI[JI[JIIIJ)V

    move-object/from16 p9, p2

    move/from16 p10, v20

    move-object/from16 p11, p2

    move/from16 p12, v20

    move-object/from16 p13, v17

    move/from16 p14, v20

    move/from16 p15, p3

    invoke-static/range {p9 .. p15}, Lorg/bouncycastle/pqc/crypto/qtesla/case;->super([JI[JI[JII)V

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v12, :cond_8

    int-to-long v1, v14

    add-int v3, v20, v9

    move-object/from16 v7, p2

    aget-wide v4, v7, v3

    sub-long v4, v1, v4

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    aget-wide v22, v7, v3

    and-long/2addr v1, v4

    sub-long v22, v22, v1

    aput-wide v22, v7, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v7, p2

    add-int/lit8 v9, v21, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v7, p2

    move-object/from16 p7, p1

    move-object/from16 p8, v0

    move-object/from16 p9, v17

    move-object/from16 p10, v15

    move/from16 p11, p5

    move/from16 p12, p3

    move/from16 p13, p4

    invoke-static/range {p7 .. p13}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->switch([B[J[J[BIII)V

    const v0, 0x1cf77001

    move-object/from16 v2, p0

    move/from16 v1, p5

    if-ne v14, v0, :cond_a

    invoke-static {v2, v7, v15, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->import([B[J[BI)V

    :cond_a
    const v8, 0x43564001

    if-ne v14, v8, :cond_b

    invoke-static {v2, v7, v15, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/new;->throw([B[J[BI)V

    :cond_b
    return v18

    :cond_c
    move-object v2, v0

    move-object v0, v11

    const v9, 0x1cf77001

    const/16 v18, 0x0

    move-object v0, v2

    const v2, 0x1cf77001

    const/4 v9, 0x0

    goto/16 :goto_5
.end method

.method public static volatile([B[BII[B)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v20, Lorg/bouncycastle/pqc/crypto/qtesla/goto;->for:[J

    const/16 v5, 0x800

    const/4 v6, 0x5

    const/16 v7, 0x28

    const v8, 0x43564001

    const-wide/32 v9, 0x33563fff

    const/16 v11, 0x1f

    const v12, 0x7fffff

    const/16 v13, 0x18

    const/16 v14, 0x385

    const/16 v15, 0x1820

    const/16 v16, 0xb4

    const v17, 0x32bfafac

    const/16 v18, 0xf

    const/16 v19, 0x22

    invoke-static/range {v0 .. v20}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->finally([B[BII[BIIIIJIIIIIIIII[J)I

    move-result v0

    return v0
.end method

.method public static while([B[BII[BLjava/security/SecureRandom;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/16 v6, 0x800

    const/4 v7, 0x5

    const/16 v8, 0x28

    const v9, 0x43564001

    const-wide/32 v10, 0x33563fff

    const/16 v12, 0x1f

    const v13, 0x7fffff

    const/16 v14, 0x17

    const/16 v15, 0x18

    const/16 v16, 0x385

    const/16 v17, 0x385

    const/16 v18, 0xb4

    const v19, 0x32bfafac

    const/16 v20, 0x3040

    const/16 v21, 0xf

    const/16 v22, 0x22

    invoke-static/range {v0 .. v22}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->final([B[BII[BLjava/security/SecureRandom;IIIIJIIIIIIIIIII)I

    move-result v0

    return v0
.end method
