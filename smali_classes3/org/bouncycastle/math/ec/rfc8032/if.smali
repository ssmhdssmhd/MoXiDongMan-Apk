.class public abstract Lorg/bouncycastle/math/ec/rfc8032/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/if$if;,
        Lorg/bouncycastle/math/ec/rfc8032/if$for;,
        Lorg/bouncycastle/math/ec/rfc8032/if$new;
    }
.end annotation


# static fields
.field private static a:[Lorg/bouncycastle/math/ec/rfc8032/if$for; = null

.field private static final abstract:[I

.field private static b:[I = null

.field public static final break:I = 0x72

.field private static final case:I = 0x39

.field private static final catch:[B

.field private static final class:[I

.field private static final const:[I

.field private static final continue:[I

.field private static final default:I = 0xf635c8e

.field private static final do:J = 0x3ffffffL

.field public static final else:I = 0x40

.field private static final extends:I = 0x5bf7a4c

.field private static final final:I = 0x4a7bb0d

.field private static final finally:I = 0xd944a72

.field private static final for:J = 0xffffffffL

.field public static final goto:I = 0x39

.field private static final if:J = 0xfffffffL

.field private static final implements:I = 0x10

.field private static final import:I = 0x96fde93

.field private static final instanceof:I = 0xf

.field private static final interface:I = 0x5

.field private static final native:I = 0xb65129c

.field private static final new:I = 0x39

.field private static final package:I = 0x8eec492

.field private static final private:I = 0x20cd7705

.field private static final protected:I = 0x5

.field private static final public:I = 0x63bb124

.field private static final return:I = 0x8335dc1

.field private static final static:I = 0x29eec34

.field private static final strictfp:I = -0x98a9

.field private static final super:I = 0x873d6d5

.field private static final switch:I = 0x1cf5b55

.field private static synchronized:Ljava/lang/Object; = null

.field public static final this:I = 0x39

.field private static final throw:I = 0xa70aadc

.field private static final throws:I = 0x9c2ab72

.field private static final transient:I = 0x12

.field private static final try:I = 0xe

.field private static final volatile:I = 0x7

.field private static final while:I = 0x3d8d723


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SigEd448"

    invoke-static {v0}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->catch:[B

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/if;->class:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->const:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/if;->abstract:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->continue:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->synchronized:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->a:[Lorg/bouncycastle/math/ec/rfc8032/if$for;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_2
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_3
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[BI[B[BII[BI)V
    .locals 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->switch([BI[BI[BB[BII[BI)V

    return-void
.end method

.method private static abstract(IILorg/bouncycastle/math/ec/rfc8032/if$new;)V
    .locals 9

    const/16 v0, 0x10

    mul-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 p0, p0, 0x10

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v8, v2, 0x1f

    const/16 v2, 0x10

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/if$new;->do:[I

    const/4 v7, 0x0

    move v3, v8

    move v5, p0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/q21;->native(II[II[II)V

    add-int/2addr p0, v0

    const/16 v3, 0x10

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/if$new;->if:[I

    const/4 v2, 0x0

    move v4, v8

    move v6, p0

    move v8, v2

    invoke-static/range {v3 .. v8}, Landroid/support/v4/q21;->native(II[II[II)V

    add-int/2addr p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b([BI[B[BII[BI)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->static([BI[BB[BII[BI)V

    return-void
.end method

.method private static break([BI[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c([BI[BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 12

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-interface {v2, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/if;->switch([BI[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static case()Lorg/bouncycastle/crypto/Xof;
    .locals 2

    new-instance v0, Landroid/support/v4/dq1;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/support/v4/dq1;-><init>(I)V

    return-object v0
.end method

.method private static catch([BIZLorg/bouncycastle/math/ec/rfc8032/if$for;)Z
    .locals 3

    add-int/lit8 v0, p1, 0x39

    invoke-static {p0, p1, v0}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->for([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x38

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0x80

    ushr-int/lit8 v1, v1, 0x7

    aget-byte v2, p0, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {p0, v0, p1}, Landroid/support/v4/qg2;->break([BI[I)V

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object p0

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object p1

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v2, p0}, Landroid/support/v4/qg2;->package([I[I)V

    const v2, 0x98a9

    invoke-static {p0, v2, p1}, Landroid/support/v4/qg2;->public([II[I)V

    invoke-static {p0, p0}, Landroid/support/v4/qg2;->static([I[I)V

    invoke-static {p0}, Landroid/support/v4/qg2;->if([I)V

    invoke-static {p1}, Landroid/support/v4/qg2;->if([I)V

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {p0, p1, v2}, Landroid/support/v4/qg2;->private([I[I[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {p0}, Landroid/support/v4/qg2;->switch([I)V

    const/4 p0, 0x1

    if-ne v1, p0, :cond_2

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {p1}, Landroid/support/v4/qg2;->native([I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    aget v2, p1, v0

    and-int/2addr v2, p0

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    invoke-static {p1, p1}, Landroid/support/v4/qg2;->static([I[I)V

    :cond_4
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->private(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    return p0
.end method

.method private static class([BI[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, p1, p2, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->break([BI[III)V

    return-void
.end method

.method private static const(Lorg/bouncycastle/crypto/Xof;B[B)V
    .locals 3

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->catch:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length p1, p2

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length p1, p2

    invoke-interface {p0, p2, v2, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private static continue(Lorg/bouncycastle/math/ec/rfc8032/if$for;I)[Lorg/bouncycastle/math/ec/rfc8032/if$for;
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->finally(Lorg/bouncycastle/math/ec/rfc8032/if$for;)Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->package(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    new-array v1, p1, [Lorg/bouncycastle/math/ec/rfc8032/if$for;

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->finally(Lorg/bouncycastle/math/ec/rfc8032/if$for;)Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p1, :cond_0

    add-int/lit8 v3, p0, -0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->finally(Lorg/bouncycastle/math/ec/rfc8032/if$for;)Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object v3

    aput-object v3, v1, p0

    aget-object v3, v1, p0

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->extends(ZLorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static d([BI[BI[B[BI[BI)V
    .locals 11

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->switch([BI[BI[BB[BII[BI)V

    return-void
.end method

.method private static default(Lorg/bouncycastle/math/ec/rfc8032/if$new;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 9

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v1

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v2

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v3

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v4

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v5

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v6

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v7, v0}, Landroid/support/v4/qg2;->package([I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/if$new;->do:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v7, v8, v1}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/if$new;->if:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v7, v8, v2}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v1, v2, v3}, Landroid/support/v4/qg2;->return([I[I[I)V

    const v7, 0x98a9

    invoke-static {v3, v7, v3}, Landroid/support/v4/qg2;->public([II[I)V

    invoke-static {v0, v3, v4}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v0, v3, v5}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/if$new;->do:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$new;->if:[I

    invoke-static {v7, p0, v0}, Landroid/support/v4/qg2;->do([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {p0, v7, v3}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v0, v3, v6}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v2, v1, v0}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v2, v1, v3}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    invoke-static {v0}, Landroid/support/v4/qg2;->new([I)V

    invoke-static {v6, v0, v6}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v6, p0, v6}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v3, p0, v3}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v4, v6, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v3, v5, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v4, v5, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    return-void
.end method

.method private static do([B[B[B)[B
    .locals 4

    const/16 v0, 0x1c

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    const/16 p0, 0xe

    new-array v3, p0, [I

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    new-array p1, p0, [I

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    invoke-static {p0, v3, p1, v1}, Landroid/support/v4/q21;->f(I[I[I[I)I

    const/16 p0, 0x72

    new-array p0, p0, [B

    :goto_0
    if-ge v2, v0, :cond_0

    aget p1, v1, v2

    mul-int/lit8 p2, v2, 0x4

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/if;->super(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->protected([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static e([BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 10

    const/16 v0, 0x40

    new-array v5, v0, [B

    const/4 v1, 0x0

    invoke-interface {p3, v5, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p3

    if-ne v0, p3, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x40

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->static([BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static else([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static extends(ZLorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 13

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v1

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v2

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v3

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v4

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v5

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v6

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v7

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {p0, v8, v7}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    move-object v10, v1

    move-object v9, v4

    move-object v8, v5

    move-object p0, v6

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {p0, v8, v7}, Landroid/support/v4/qg2;->do([I[I[I)V

    move-object v9, v1

    move-object v10, v4

    move-object p0, v5

    move-object v8, v6

    :goto_0
    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v11, v12, v0}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v0, v1}, Landroid/support/v4/qg2;->package([I[I)V

    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v11, v12, v2}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    iget-object v11, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {p1, v11, v3}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v2, v3, v4}, Landroid/support/v4/qg2;->return([I[I[I)V

    const p1, 0x98a9

    invoke-static {v4, p1, v4}, Landroid/support/v4/qg2;->public([II[I)V

    invoke-static {v1, v4, p0}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v1, v4, v8}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {p0, p1, v4}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v7, v4, v7}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v3, v2, v9}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v3, v2, v10}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    invoke-static {v9}, Landroid/support/v4/qg2;->new([I)V

    invoke-static {v7, v1, v7}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    invoke-static {v7, v0, v7}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v4, v0, v4}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v5, v7, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v4, v6, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v5, v6, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    return-void
.end method

.method public static f([BI[B[BI[BI)V
    .locals 9

    const/4 v3, 0x1

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->static([BI[BB[BII[BI)V

    return-void
.end method

.method private static final(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static finally(Lorg/bouncycastle/math/ec/rfc8032/if$for;)Lorg/bouncycastle/math/ec/rfc8032/if$for;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/support/v4/qg2;->case([II[II)V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v1, v3, v2, v3}, Landroid/support/v4/qg2;->case([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    iget-object v1, v0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {p0, v3, v1, v3}, Landroid/support/v4/qg2;->case([II[II)V

    return-object v0
.end method

.method private static for([B)Z
    .locals 3

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xe

    new-array v2, v0, [I

    invoke-static {p0, v1, v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->break([BI[III)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/if;->class:[I

    invoke-static {v0, v2, p0}, Landroid/support/v4/q21;->volatile(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static g([BI[BI[B[BII)Z
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->throws([BI[BI[BB[BII)Z

    move-result v0

    return v0
.end method

.method private static goto([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static h([BI[BI[BLorg/bouncycastle/crypto/Xof;)Z
    .locals 10

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v1, 0x0

    invoke-interface {p5, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p5

    if-ne v0, p5, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->throws([BI[BI[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i([BI[BI[B[BI)Z
    .locals 9

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->throws([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

.method private static if([B)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length p0, p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static implements([B[BI)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->transient([BLorg/bouncycastle/math/ec/rfc8032/if$for;)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/if;->while(Lorg/bouncycastle/math/ec/rfc8032/if$for;[BI)V

    return-void
.end method

.method public static import(Ljava/security/SecureRandom;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public static instanceof(Landroid/support/v4/og2$do;[BI[I[I)V
    .locals 1

    const-string v0, "This method is only for use by X448"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->interface([BI[B)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->transient([BLorg/bouncycastle/math/ec/rfc8032/if$for;)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Landroid/support/v4/qg2;->case([II[II)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {p0, p2, p4, p2}, Landroid/support/v4/qg2;->case([II[II)V

    return-void
.end method

.method private static interface([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v0, p2, v1

    return-void
.end method

.method public static native([BI[BI)V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->case()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->interface([BI[B)V

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->implements([B[BI)V

    return-void
.end method

.method private static new([B)Z
    .locals 3

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xe

    new-array v2, v0, [I

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/if;->const:[I

    invoke-static {v0, v2, p0}, Landroid/support/v4/q21;->volatile(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static package(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 8

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v1

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v2

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v3

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v4

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v6, v7, v0}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v0, v0}, Landroid/support/v4/qg2;->package([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v6, v1}, Landroid/support/v4/qg2;->package([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v6, v2}, Landroid/support/v4/qg2;->package([I[I)V

    invoke-static {v1, v2, v3}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v3}, Landroid/support/v4/qg2;->new([I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v6, v4}, Landroid/support/v4/qg2;->package([I[I)V

    invoke-static {v4, v4, v4}, Landroid/support/v4/qg2;->do([I[I[I)V

    invoke-static {v4}, Landroid/support/v4/qg2;->new([I)V

    invoke-static {v3, v4, v5}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    invoke-static {v0, v3, v0}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    invoke-static {v1, v2, v1}, Landroid/support/v4/qg2;->abstract([I[I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v0, v5, v2}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v3, v1, v0}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v3, v5, p0}, Landroid/support/v4/qg2;->return([I[I[I)V

    return-void
.end method

.method private static private(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {p0}, Landroid/support/v4/qg2;->throws([I)V

    return-void
.end method

.method private static protected([B)[B
    .locals 89

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v15

    int-to-long v14, v15

    and-long/2addr v14, v4

    const/16 v9, 0x12

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v9

    shl-int/2addr v9, v6

    move-wide/from16 v16, v2

    int-to-long v1, v9

    and-long/2addr v1, v4

    const/16 v3, 0x15

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v9

    move-wide/from16 v19, v7

    int-to-long v6, v9

    and-long/2addr v6, v4

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v8

    const/4 v9, 0x4

    shl-int/2addr v8, v9

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long/2addr v9, v4

    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v11

    move-wide/from16 v23, v9

    int-to-long v8, v11

    and-long/2addr v8, v4

    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v11

    const/16 v18, 0x4

    shl-int/lit8 v11, v11, 0x4

    int-to-long v10, v11

    and-long v25, v10, v4

    const/16 v11, 0x23

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v10

    move-wide/from16 v27, v12

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x27

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v29, v14

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x2a

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v15

    move-wide/from16 v31, v11

    int-to-long v10, v15

    and-long v33, v10, v4

    const/16 v10, 0x2e

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    int-to-long v10, v10

    and-long v35, v10, v4

    const/16 v11, 0x31

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v10

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x35

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v37, v1

    int-to-long v1, v10

    and-long/2addr v1, v4

    const/16 v10, 0x38

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v10

    move-wide/from16 v39, v6

    int-to-long v6, v10

    and-long/2addr v6, v4

    const/16 v10, 0x3c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v41, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x3f

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v10

    move-wide/from16 v43, v13

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x43

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v45, v11

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0x46

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v12

    move-wide/from16 v47, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x4a

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v49, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x4d

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v12

    move-wide/from16 v51, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x51

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v53, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x54

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v12

    move-wide/from16 v55, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x58

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v57, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x5b

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v12

    move-wide/from16 v59, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x5f

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v61, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x62

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v12

    move-wide/from16 v63, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x66

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v65, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x69

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->this([BI)I

    move-result v12

    move-wide/from16 v67, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x6d

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->goto([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v69, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x70

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->else([BI)I

    move-result v0

    move-wide/from16 v71, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    const-wide/32 v4, 0x29eec34

    mul-long v73, v0, v4

    add-long v6, v6, v73

    const-wide/32 v73, 0x1cf5b55

    mul-long v75, v0, v73

    add-long v8, v8, v75

    const-wide/32 v75, 0x9c2ab72

    mul-long v77, v0, v75

    add-long v13, v13, v77

    const-wide/32 v77, 0xf635c8e

    mul-long v79, v0, v77

    add-long v79, v10, v79

    const-wide/32 v11, 0x5bf7a4c

    mul-long v81, v0, v11

    add-long v49, v49, v81

    const-wide/32 v81, 0xd944a72

    mul-long v83, v0, v81

    add-long v51, v51, v83

    const-wide/32 v83, 0x8eec492

    mul-long v85, v0, v83

    add-long v53, v53, v85

    const-wide/32 v85, 0x20cd7705

    mul-long v0, v0, v85

    add-long v0, v55, v0

    const/16 v2, 0x1c

    ushr-long v55, v69, v2

    const/16 v2, 0x2a

    add-long v55, v71, v55

    const-wide/32 v71, 0xfffffff

    and-long v69, v69, v71

    mul-long v87, v55, v4

    add-long v47, v47, v87

    mul-long v87, v55, v73

    add-long v6, v6, v87

    mul-long v87, v55, v75

    add-long v8, v8, v87

    mul-long v87, v55, v77

    add-long v13, v13, v87

    mul-long v87, v55, v11

    add-long v79, v79, v87

    mul-long v87, v55, v81

    add-long v49, v49, v87

    mul-long v87, v55, v83

    add-long v51, v51, v87

    mul-long v55, v55, v85

    add-long v53, v53, v55

    mul-long v55, v69, v4

    add-long v45, v45, v55

    mul-long v55, v69, v73

    add-long v47, v47, v55

    mul-long v55, v69, v75

    add-long v6, v6, v55

    mul-long v55, v69, v77

    add-long v8, v8, v55

    mul-long v55, v69, v11

    add-long v13, v13, v55

    mul-long v55, v69, v81

    add-long v79, v79, v55

    mul-long v55, v69, v83

    add-long v49, v49, v55

    mul-long v69, v69, v85

    add-long v51, v51, v69

    const/16 v10, 0x1c

    ushr-long v55, v65, v10

    add-long v55, v67, v55

    and-long v65, v65, v71

    mul-long v67, v55, v4

    add-long v35, v35, v67

    mul-long v67, v55, v73

    add-long v45, v45, v67

    mul-long v67, v55, v75

    add-long v47, v47, v67

    mul-long v67, v55, v77

    add-long v6, v6, v67

    mul-long v67, v55, v11

    add-long v8, v8, v67

    mul-long v67, v55, v81

    add-long v13, v13, v67

    mul-long v67, v55, v83

    add-long v79, v79, v67

    mul-long v55, v55, v85

    add-long v49, v49, v55

    mul-long v55, v65, v4

    add-long v33, v33, v55

    mul-long v55, v65, v73

    add-long v35, v35, v55

    mul-long v55, v65, v75

    add-long v45, v45, v55

    mul-long v55, v65, v77

    add-long v47, v47, v55

    mul-long v55, v65, v11

    add-long v6, v6, v55

    mul-long v55, v65, v81

    add-long v8, v8, v55

    mul-long v55, v65, v83

    add-long v13, v13, v55

    mul-long v65, v65, v85

    add-long v79, v79, v65

    const/16 v10, 0x1c

    ushr-long v55, v61, v10

    add-long v55, v63, v55

    and-long v61, v61, v71

    mul-long v63, v55, v4

    add-long v43, v43, v63

    mul-long v63, v55, v73

    add-long v33, v33, v63

    mul-long v63, v55, v75

    add-long v35, v35, v63

    mul-long v63, v55, v77

    add-long v45, v45, v63

    mul-long v63, v55, v11

    add-long v47, v47, v63

    mul-long v63, v55, v81

    add-long v6, v6, v63

    mul-long v63, v55, v83

    add-long v8, v8, v63

    mul-long v55, v55, v85

    add-long v13, v13, v55

    mul-long v55, v61, v4

    add-long v31, v31, v55

    mul-long v55, v61, v73

    add-long v43, v43, v55

    mul-long v55, v61, v75

    add-long v33, v33, v55

    mul-long v55, v61, v77

    add-long v35, v35, v55

    mul-long v55, v61, v11

    add-long v45, v45, v55

    mul-long v55, v61, v81

    add-long v47, v47, v55

    mul-long v55, v61, v83

    add-long v6, v6, v55

    mul-long v61, v61, v85

    add-long v8, v8, v61

    const/16 v10, 0x1c

    ushr-long v55, v57, v10

    add-long v55, v59, v55

    and-long v57, v57, v71

    mul-long v59, v55, v4

    add-long v25, v25, v59

    mul-long v59, v55, v73

    add-long v31, v31, v59

    mul-long v59, v55, v75

    add-long v43, v43, v59

    mul-long v59, v55, v77

    add-long v33, v33, v59

    mul-long v59, v55, v11

    add-long v35, v35, v59

    mul-long v59, v55, v81

    add-long v45, v45, v59

    mul-long v59, v55, v83

    add-long v47, v47, v59

    mul-long v55, v55, v85

    add-long v6, v6, v55

    const/16 v10, 0x1c

    ushr-long v55, v49, v10

    add-long v51, v51, v55

    and-long v49, v49, v71

    ushr-long v55, v51, v10

    add-long v53, v53, v55

    and-long v51, v51, v71

    ushr-long v55, v53, v10

    add-long v0, v0, v55

    and-long v53, v53, v71

    ushr-long v55, v0, v10

    add-long v57, v57, v55

    and-long v0, v0, v71

    mul-long v55, v57, v4

    add-long v41, v41, v55

    mul-long v55, v57, v73

    add-long v25, v25, v55

    mul-long v55, v57, v75

    add-long v31, v31, v55

    mul-long v55, v57, v77

    add-long v43, v43, v55

    mul-long v55, v57, v11

    add-long v33, v33, v55

    mul-long v55, v57, v81

    add-long v35, v35, v55

    mul-long v55, v57, v83

    add-long v45, v45, v55

    mul-long v57, v57, v85

    add-long v47, v47, v57

    mul-long v55, v0, v4

    add-long v23, v23, v55

    mul-long v55, v0, v73

    add-long v41, v41, v55

    mul-long v55, v0, v75

    add-long v25, v25, v55

    mul-long v55, v0, v77

    add-long v31, v31, v55

    mul-long v55, v0, v11

    add-long v43, v43, v55

    mul-long v55, v0, v81

    add-long v33, v33, v55

    mul-long v55, v0, v83

    add-long v35, v35, v55

    mul-long v0, v0, v85

    add-long v45, v45, v0

    mul-long v0, v53, v4

    add-long v0, v39, v0

    mul-long v39, v53, v73

    add-long v23, v23, v39

    mul-long v39, v53, v75

    add-long v41, v41, v39

    mul-long v39, v53, v77

    add-long v25, v25, v39

    mul-long v39, v53, v11

    add-long v31, v31, v39

    mul-long v39, v53, v81

    add-long v43, v43, v39

    mul-long v39, v53, v83

    add-long v33, v33, v39

    mul-long v53, v53, v85

    add-long v35, v35, v53

    const/16 v10, 0x1c

    ushr-long v39, v8, v10

    add-long v13, v13, v39

    and-long v8, v8, v71

    ushr-long v39, v13, v10

    add-long v79, v79, v39

    and-long v13, v13, v71

    ushr-long v39, v79, v10

    add-long v49, v49, v39

    and-long v39, v79, v71

    ushr-long v53, v49, v10

    add-long v51, v51, v53

    and-long v49, v49, v71

    mul-long v53, v51, v4

    add-long v37, v37, v53

    mul-long v53, v51, v73

    add-long v0, v0, v53

    mul-long v53, v51, v75

    add-long v23, v23, v53

    mul-long v53, v51, v77

    add-long v41, v41, v53

    mul-long v53, v51, v11

    add-long v25, v25, v53

    mul-long v53, v51, v81

    add-long v31, v31, v53

    mul-long v53, v51, v83

    add-long v43, v43, v53

    mul-long v51, v51, v85

    add-long v33, v33, v51

    mul-long v51, v49, v4

    add-long v29, v29, v51

    mul-long v51, v49, v73

    add-long v37, v37, v51

    mul-long v51, v49, v75

    add-long v0, v0, v51

    mul-long v51, v49, v77

    add-long v23, v23, v51

    mul-long v51, v49, v11

    add-long v41, v41, v51

    mul-long v51, v49, v81

    add-long v25, v25, v51

    mul-long v51, v49, v83

    add-long v31, v31, v51

    mul-long v49, v49, v85

    add-long v43, v43, v49

    mul-long v49, v39, v4

    add-long v27, v27, v49

    mul-long v49, v39, v73

    add-long v29, v29, v49

    mul-long v49, v39, v75

    add-long v37, v37, v49

    mul-long v49, v39, v77

    add-long v0, v0, v49

    mul-long v49, v39, v11

    add-long v23, v23, v49

    mul-long v49, v39, v81

    add-long v41, v41, v49

    mul-long v49, v39, v83

    add-long v25, v25, v49

    mul-long v39, v39, v85

    add-long v31, v31, v39

    const/16 v10, 0x1c

    ushr-long v39, v45, v10

    add-long v47, v47, v39

    and-long v39, v45, v71

    ushr-long v45, v47, v10

    add-long v6, v6, v45

    and-long v45, v47, v71

    ushr-long v47, v6, v10

    add-long v8, v8, v47

    and-long v6, v6, v71

    ushr-long v47, v8, v10

    add-long v13, v13, v47

    and-long v8, v8, v71

    mul-long v47, v13, v4

    add-long v21, v21, v47

    mul-long v47, v13, v73

    add-long v27, v27, v47

    mul-long v47, v13, v75

    add-long v29, v29, v47

    mul-long v47, v13, v77

    add-long v37, v37, v47

    mul-long v47, v13, v11

    add-long v0, v0, v47

    mul-long v47, v13, v81

    add-long v23, v23, v47

    mul-long v47, v13, v83

    add-long v41, v41, v47

    mul-long v13, v13, v85

    add-long v25, v25, v13

    mul-long v4, v4, v8

    add-long v4, v19, v4

    mul-long v73, v73, v8

    add-long v21, v21, v73

    mul-long v75, v75, v8

    add-long v27, v27, v75

    mul-long v77, v77, v8

    add-long v29, v29, v77

    mul-long v11, v11, v8

    add-long v37, v37, v11

    mul-long v81, v81, v8

    add-long v0, v0, v81

    mul-long v83, v83, v8

    add-long v23, v23, v83

    mul-long v8, v8, v85

    add-long v41, v41, v8

    const-wide/16 v8, 0x4

    mul-long v6, v6, v8

    const/16 v8, 0x1a

    ushr-long v11, v45, v8

    add-long/2addr v6, v11

    const-wide/32 v11, 0x3ffffff

    and-long v13, v45, v11

    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    const-wide/32 v45, 0x4a7bb0d

    mul-long v45, v45, v6

    add-long v16, v16, v45

    const-wide/32 v45, 0x873d6d5

    mul-long v45, v45, v6

    add-long v4, v4, v45

    const-wide/32 v45, 0xa70aadc

    mul-long v45, v45, v6

    add-long v21, v21, v45

    const-wide/32 v45, 0x3d8d723

    mul-long v45, v45, v6

    add-long v27, v27, v45

    const-wide/32 v45, 0x96fde93

    mul-long v45, v45, v6

    add-long v29, v29, v45

    const-wide/32 v45, 0xb65129c

    mul-long v45, v45, v6

    add-long v37, v37, v45

    const-wide/32 v45, 0x63bb124

    mul-long v45, v45, v6

    add-long v0, v0, v45

    const-wide/32 v45, 0x8335dc1

    mul-long v6, v6, v45

    add-long v23, v23, v6

    const/16 v6, 0x1c

    ushr-long v9, v16, v6

    add-long/2addr v4, v9

    and-long v16, v16, v71

    ushr-long v9, v4, v6

    add-long v21, v21, v9

    and-long v4, v4, v71

    ushr-long v9, v21, v6

    add-long v27, v27, v9

    and-long v21, v21, v71

    ushr-long v9, v27, v6

    add-long v29, v29, v9

    and-long v27, v27, v71

    ushr-long v9, v29, v6

    add-long v37, v37, v9

    and-long v29, v29, v71

    ushr-long v9, v37, v6

    add-long/2addr v0, v9

    and-long v37, v37, v71

    ushr-long v9, v0, v6

    add-long v23, v23, v9

    and-long v0, v0, v71

    ushr-long v9, v23, v6

    add-long v41, v41, v9

    and-long v23, v23, v71

    ushr-long v9, v41, v6

    add-long v25, v25, v9

    and-long v41, v41, v71

    ushr-long v9, v25, v6

    add-long v31, v31, v9

    and-long v25, v25, v71

    ushr-long v9, v31, v6

    add-long v43, v43, v9

    and-long v31, v31, v71

    ushr-long v9, v43, v6

    add-long v33, v33, v9

    and-long v43, v43, v71

    ushr-long v9, v33, v6

    add-long v35, v35, v9

    and-long v33, v33, v71

    ushr-long v9, v35, v6

    add-long v39, v39, v9

    and-long v35, v35, v71

    ushr-long v45, v39, v6

    add-long v13, v13, v45

    and-long v6, v39, v71

    ushr-long v8, v13, v8

    and-long/2addr v11, v13

    sub-long v8, v8, v18

    const-wide/32 v13, 0x4a7bb0d

    and-long/2addr v13, v8

    sub-long v16, v16, v13

    const-wide/32 v13, 0x873d6d5

    and-long/2addr v13, v8

    sub-long/2addr v4, v13

    const-wide/32 v13, 0xa70aadc

    and-long/2addr v13, v8

    sub-long v21, v21, v13

    const-wide/32 v13, 0x3d8d723

    and-long/2addr v13, v8

    sub-long v27, v27, v13

    const-wide/32 v13, 0x96fde93

    and-long/2addr v13, v8

    sub-long v29, v29, v13

    const-wide/32 v13, 0xb65129c

    and-long/2addr v13, v8

    sub-long v37, v37, v13

    const-wide/32 v13, 0x63bb124

    and-long/2addr v13, v8

    sub-long/2addr v0, v13

    const-wide/32 v13, 0x8335dc1

    and-long/2addr v8, v13

    sub-long v23, v23, v8

    const/16 v8, 0x1c

    shr-long v9, v16, v8

    add-long/2addr v4, v9

    and-long v9, v16, v71

    shr-long v13, v4, v8

    add-long v21, v21, v13

    and-long v4, v4, v71

    shr-long v13, v21, v8

    add-long v27, v27, v13

    and-long v13, v21, v71

    shr-long v16, v27, v8

    add-long v29, v29, v16

    and-long v16, v27, v71

    shr-long v18, v29, v8

    add-long v37, v37, v18

    and-long v18, v29, v71

    shr-long v20, v37, v8

    add-long v0, v0, v20

    and-long v20, v37, v71

    shr-long v27, v0, v8

    add-long v23, v23, v27

    and-long v0, v0, v71

    shr-long v27, v23, v8

    add-long v41, v41, v27

    and-long v23, v23, v71

    shr-long v27, v41, v8

    add-long v25, v25, v27

    and-long v27, v41, v71

    shr-long v29, v25, v8

    add-long v31, v31, v29

    and-long v25, v25, v71

    shr-long v29, v31, v8

    add-long v43, v43, v29

    and-long v29, v31, v71

    shr-long v31, v43, v8

    add-long v33, v33, v31

    and-long v31, v43, v71

    shr-long v37, v33, v8

    add-long v35, v35, v37

    and-long v33, v33, v71

    shr-long v37, v35, v8

    add-long v6, v6, v37

    and-long v35, v35, v71

    shr-long v37, v6, v8

    add-long v11, v11, v37

    and-long v6, v6, v71

    const/16 v15, 0x39

    new-array v15, v15, [B

    shl-long/2addr v4, v8

    or-long/2addr v4, v9

    const/4 v9, 0x0

    invoke-static {v4, v5, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v4, v16, v8

    or-long/2addr v4, v13

    const/4 v9, 0x7

    invoke-static {v4, v5, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v4, v20, v8

    or-long v4, v18, v4

    const/16 v9, 0xe

    invoke-static {v4, v5, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v4, v23, v8

    or-long/2addr v0, v4

    invoke-static {v0, v1, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v0, v25, v8

    or-long v0, v27, v0

    invoke-static {v0, v1, v15, v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v0, v31, v8

    or-long v0, v29, v0

    const/16 v3, 0x23

    invoke-static {v0, v1, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v0, v35, v8

    or-long v0, v33, v0

    invoke-static {v0, v1, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    shl-long v0, v11, v8

    or-long/2addr v0, v6

    const/16 v2, 0x31

    invoke-static {v0, v1, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/if;->throw(J[BI)V

    return-object v15
.end method

.method private static public([II)[B
    .locals 11

    const/16 v0, 0x1c

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe

    const/16 v4, 0x1c

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/16 v6, 0x10

    if-ltz v3, :cond_0

    aget v7, p0, v3

    add-int/lit8 v4, v4, -0x1

    ushr-int/lit8 v8, v7, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    aput v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    aput v7, v1, v4

    move v5, v7

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c0

    new-array p0, p0, [B

    const/4 v3, 0x1

    shl-int v4, v3, p1

    add-int/lit8 v5, v4, -0x1

    ushr-int/lit8 v3, v4, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget v8, v1, v2

    :goto_2
    if-ge v4, v6, :cond_2

    ushr-int v9, v8, v4

    and-int/lit8 v10, v9, 0x1

    if-ne v10, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    and-int/2addr v9, v5

    add-int/2addr v9, v7

    and-int v7, v9, v3

    shl-int/lit8 v10, v7, 0x1

    sub-int/2addr v9, v10

    add-int/lit8 v10, p1, -0x1

    ushr-int/2addr v7, v10

    shl-int/lit8 v10, v2, 0x4

    add-int/2addr v10, v4

    int-to-byte v9, v9

    aput-byte v9, p0, v10

    add-int/2addr v4, p1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x10

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private static return(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V
    .locals 4

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/if;->const(Lorg/bouncycastle/crypto/Xof;B[B)V

    const/16 v0, 0x39

    invoke-interface {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->protected([B)[B

    move-result-object v1

    new-array v3, v0, [B

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/if;->implements([B[BI)V

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/if;->const(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {p0, v3, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p3, p4, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length p3, p1

    invoke-interface {p0, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->protected([B)[B

    move-result-object p0

    invoke-static {v1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/if;->do([B[B[B)[B

    move-result-object p0

    invoke-static {v3, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    invoke-static {p0, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static static([BI[BB[BII[BI)V
    .locals 13

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/if;->if([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->case()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    move-object v4, p0

    move v5, p1

    invoke-interface {v1, p0, p1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v0, v3, [B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->interface([BI[B)V

    new-array v5, v3, [B

    invoke-static {v0, v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/if;->implements([B[BI)V

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, v5

    move v5, v6

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->return(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static strictfp(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v0}, Landroid/support/v4/qg2;->strictfp([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v0}, Landroid/support/v4/qg2;->throws([I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {p0}, Landroid/support/v4/qg2;->throws([I)V

    return-void
.end method

.method private static super(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static switch([BI[BI[BB[BII[BI)V
    .locals 13

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/if;->if([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->case()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    move-object v4, p0

    move v5, p1

    invoke-interface {v1, p0, p1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v3, v3, [B

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->interface([BI[B)V

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/if;->return(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synchronized([I[ILorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->volatile()V

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->public([II)[B

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->public([II)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->continue(Lorg/bouncycastle/math/ec/rfc8032/if$for;I)[Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->strictfp(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    const/16 v0, 0x1bf

    :goto_0
    if-lez v0, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/if;->a:[Lorg/bouncycastle/math/ec/rfc8032/if$for;

    aget-object v1, v5, v1

    invoke-static {v4, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->extends(ZLorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    :cond_2
    aget-byte v1, p1, v0

    if-eqz v1, :cond_4

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    aget-object v1, p2, v1

    invoke-static {v2, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->extends(ZLorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->package(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    goto :goto_1
.end method

.method private static this([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static throw(J[BI)V
    .locals 1

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->super(I[BI)V

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/if;->final(I[BI)V

    return-void
.end method

.method private static throws([BI[BI[BB[BII)Z
    .locals 6

    invoke-static {p4}, Lorg/bouncycastle/math/ec/rfc8032/if;->if([B)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x39

    invoke-static {p0, p1, v0}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object v1

    const/16 v2, 0x72

    add-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Landroid/support/v4/q3;->instanceof([BII)[B

    move-result-object p0

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->for([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->new([B)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    const/4 v4, 0x1

    invoke-static {p2, p3, v4, p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->catch([BIZLorg/bouncycastle/math/ec/rfc8032/if$for;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->case()Lorg/bouncycastle/crypto/Xof;

    move-result-object v4

    new-array v5, v2, [B

    invoke-static {v4, p5, p4}, Lorg/bouncycastle/math/ec/rfc8032/if;->const(Lorg/bouncycastle/crypto/Xof;B[B)V

    const/16 p4, 0x39

    invoke-interface {v4, v1, v0, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, p2, p3, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, p6, p7, p8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v5, v0, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/if;->protected([B)[B

    move-result-object p2

    const/16 p3, 0xe

    new-array p5, p3, [I

    invoke-static {p0, v0, p5}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    new-array p0, p3, [I

    invoke-static {p2, v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    new-instance p2, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    invoke-direct {p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    invoke-static {p5, p0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/if;->synchronized([I[ILorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    new-array p0, p4, [B

    invoke-static {p2, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/if;->while(Lorg/bouncycastle/math/ec/rfc8032/if$for;[BI)V

    invoke-static {p0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static transient([BLorg/bouncycastle/math/ec/rfc8032/if$for;)V
    .locals 12

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->volatile()V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->strictfp(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->class([BI[I)V

    aget p0, v1, v2

    xor-int/lit8 p0, p0, -0x1

    const/4 v3, 0x1

    and-int/2addr p0, v3

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/if;->const:[I

    const/16 v5, 0xe

    invoke-static {v5, p0, v1, v4, v1}, Landroid/support/v4/q21;->import(II[I[I[I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    aput p0, v1, v5

    invoke-static {v0, v1, v2}, Landroid/support/v4/q21;->k(I[II)I

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/if$new;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/if$new;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    const/16 v4, 0x11

    :goto_0
    move v6, v4

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    ushr-int/lit8 v10, v6, 0x5

    aget v10, v1, v10

    and-int/lit8 v11, v6, 0x1f

    ushr-int/2addr v10, v11

    shl-int v11, v3, v8

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v9, v11

    shl-int/2addr v10, v8

    xor-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v3

    neg-int v8, v7

    xor-int/2addr v8, v9

    and-int/2addr v8, v0

    invoke-static {v5, v8, p0}, Lorg/bouncycastle/math/ec/rfc8032/if;->abstract(IILorg/bouncycastle/math/ec/rfc8032/if$new;)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/if$new;->do:[I

    invoke-static {v7, v8}, Landroid/support/v4/qg2;->try(I[I)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->default(Lorg/bouncycastle/math/ec/rfc8032/if$new;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/if;->package(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    goto :goto_0
.end method

.method public static try()Lorg/bouncycastle/crypto/Xof;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->case()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    return-object v0
.end method

.method public static volatile()V
    .locals 16

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/if;->synchronized:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/if;->abstract:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Landroid/support/v4/qg2;->case([II[II)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/if;->continue:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {v3, v5, v4, v5}, Landroid/support/v4/qg2;->case([II[II)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->private(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/if;->continue(Lorg/bouncycastle/math/ec/rfc8032/if$for;I)[Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/if;->a:[Lorg/bouncycastle/math/ec/rfc8032/if$for;

    const/16 v3, 0xa00

    new-array v3, v3, [I

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v3, v6, :cond_6

    new-array v7, v6, [Lorg/bouncycastle/math/ec/rfc8032/if$for;

    new-instance v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;

    invoke-direct {v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/if$for;-><init>(Lorg/bouncycastle/math/ec/rfc8032/if$do;)V

    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->strictfp(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v6, :cond_2

    invoke-static {v10, v1, v8}, Lorg/bouncycastle/math/ec/rfc8032/if;->extends(ZLorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->package(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->finally(Lorg/bouncycastle/math/ec/rfc8032/if$for;)Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object v11

    aput-object v11, v7, v9

    add-int v11, v3, v9

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    :goto_2
    const/16 v11, 0x12

    if-ge v10, v11, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/if;->package(Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    new-array v9, v6, [Lorg/bouncycastle/math/ec/rfc8032/if$for;

    aput-object v8, v9, v5

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x4

    if-ge v8, v12, :cond_4

    shl-int v12, v10, v8

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_3

    sub-int v14, v11, v12

    aget-object v14, v9, v14

    invoke-static {v14}, Lorg/bouncycastle/math/ec/rfc8032/if;->finally(Lorg/bouncycastle/math/ec/rfc8032/if$for;)Lorg/bouncycastle/math/ec/rfc8032/if$for;

    move-result-object v14

    aput-object v14, v9, v11

    aget-object v14, v7, v8

    aget-object v15, v9, v11

    invoke-static {v5, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/if;->extends(ZLorg/bouncycastle/math/ec/rfc8032/if$for;Lorg/bouncycastle/math/ec/rfc8032/if$for;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_5

    aget-object v8, v9, v7

    iget-object v10, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v10, v10}, Landroid/support/v4/qg2;->import([I[I)V

    iget-object v10, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v10, v11, v10}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object v10, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v10, v11, v10}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object v10, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    invoke-static {v10, v5, v11, v4}, Landroid/support/v4/qg2;->case([II[II)V

    add-int/lit8 v4, v4, 0x10

    iget-object v8, v8, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/if;->b:[I

    invoke-static {v8, v5, v10, v4}, Landroid/support/v4/qg2;->case([II[II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method private static while(Lorg/bouncycastle/math/ec/rfc8032/if$for;[BI)V
    .locals 3

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/qg2;->else()[I

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->for:[I

    invoke-static {v2, v1}, Landroid/support/v4/qg2;->import([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->do:[I

    invoke-static {v2, v1, v0}, Landroid/support/v4/qg2;->return([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/if$for;->if:[I

    invoke-static {p0, v1, v1}, Landroid/support/v4/qg2;->return([I[I[I)V

    invoke-static {v0}, Landroid/support/v4/qg2;->switch([I)V

    invoke-static {v1}, Landroid/support/v4/qg2;->switch([I)V

    invoke-static {v1, p1, p2}, Landroid/support/v4/qg2;->final([I[BI)V

    add-int/lit8 p2, p2, 0x39

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x0

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method
