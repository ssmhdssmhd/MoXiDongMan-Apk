.class public final Landroid/support/v4/ge0;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v4/ge0;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Landroid/support/v4/ge0;

.field public static final ONE:Landroid/support/v4/ge0;

.field public static final ONE_FIFTH:Landroid/support/v4/ge0;

.field public static final ONE_HALF:Landroid/support/v4/ge0;

.field public static final ONE_QUARTER:Landroid/support/v4/ge0;

.field public static final ONE_THIRD:Landroid/support/v4/ge0;

.field public static final THREE_FIFTHS:Landroid/support/v4/ge0;

.field public static final THREE_QUARTERS:Landroid/support/v4/ge0;

.field public static final TWO_FIFTHS:Landroid/support/v4/ge0;

.field public static final TWO_QUARTERS:Landroid/support/v4/ge0;

.field public static final TWO_THIRDS:Landroid/support/v4/ge0;

.field public static final ZERO:Landroid/support/v4/ge0;

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient do:I

.field private transient for:Ljava/lang/String;

.field private transient if:Ljava/lang/String;

.field private final numerator:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/support/v4/ge0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->ZERO:Landroid/support/v4/ge0;

    .line 2
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v2, v2}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->ONE:Landroid/support/v4/ge0;

    .line 3
    new-instance v0, Landroid/support/v4/ge0;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->ONE_HALF:Landroid/support/v4/ge0;

    .line 4
    new-instance v0, Landroid/support/v4/ge0;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->ONE_THIRD:Landroid/support/v4/ge0;

    .line 5
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->TWO_THIRDS:Landroid/support/v4/ge0;

    .line 6
    new-instance v0, Landroid/support/v4/ge0;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->ONE_QUARTER:Landroid/support/v4/ge0;

    .line 7
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v1, v4}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->TWO_QUARTERS:Landroid/support/v4/ge0;

    .line 8
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v3, v4}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->THREE_QUARTERS:Landroid/support/v4/ge0;

    .line 9
    new-instance v0, Landroid/support/v4/ge0;

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->ONE_FIFTH:Landroid/support/v4/ge0;

    .line 10
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v1, v5}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->TWO_FIFTHS:Landroid/support/v4/ge0;

    .line 11
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v3, v5}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->THREE_FIFTHS:Landroid/support/v4/ge0;

    .line 12
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, v4, v5}, Landroid/support/v4/ge0;-><init>(II)V

    sput-object v0, Landroid/support/v4/ge0;->FOUR_FIFTHS:Landroid/support/v4/ge0;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/ge0;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/support/v4/ge0;->if:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    .line 5
    iput p1, p0, Landroid/support/v4/ge0;->numerator:I

    .line 6
    iput p2, p0, Landroid/support/v4/ge0;->denominator:I

    return-void
.end method

.method private static case(II)I
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: add"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static do(II)I
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: add"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static for(II)I
    .locals 6

    const-string v0, "overflow: gcd is 2^31"

    if-eqz p0, :cond_b

    if-nez p1, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_3

    :cond_1
    if-lez p0, :cond_2

    neg-int p0, p0

    :cond_2
    if-lez p1, :cond_3

    neg-int p1, p1

    :cond_3
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, p0, 0x1

    const/16 v4, 0x1f

    if-nez v3, :cond_4

    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_4

    if-ge v1, v4, :cond_4

    .line 2
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v1, v4, :cond_9

    if-ne v3, v2, :cond_5

    move v0, p1

    goto :goto_1

    .line 3
    :cond_5
    div-int/lit8 v0, p0, 0x2

    neg-int v0, v0

    :cond_6
    :goto_1
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7

    .line 4
    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_7
    if-lez v0, :cond_8

    neg-int p0, v0

    goto :goto_2

    :cond_8
    move p1, v0

    :goto_2
    sub-int v0, p1, p0

    .line 5
    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    neg-int p0, p0

    shl-int p1, v2, v1

    mul-int p0, p0, p1

    return p0

    .line 6
    :cond_9
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    return v2

    :cond_b
    :goto_4
    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_c

    if-eq p1, v1, :cond_c

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 8
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static getFraction(D)Landroid/support/v4/ge0;
    .locals 23

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 9
    :goto_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_4

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    double-to-int v4, v2

    int-to-double v5, v4

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v5

    double-to-int v5, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-double v8, v5

    .line 12
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v2, v8

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    move/from16 v17, v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_1
    div-double v0, v6, v8

    double-to-int v0, v0

    move-wide/from16 p0, v10

    int-to-double v10, v0

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    sub-double/2addr v6, v10

    mul-int v1, v5, v12

    add-int/2addr v1, v13

    mul-int v5, v5, v14

    add-int/2addr v5, v15

    int-to-double v10, v1

    move v13, v0

    move v15, v1

    int-to-double v0, v5

    .line 14
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v0

    sub-double v0, v2, v10

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const/4 v0, 0x1

    add-int/lit8 v1, v16, 0x1

    move-wide/from16 v18, p0

    cmpl-double v16, v18, v10

    if-lez v16, :cond_2

    const/16 v0, 0x2710

    if-gt v5, v0, :cond_2

    if-lez v5, :cond_2

    const/16 v0, 0x19

    if-lt v1, v0, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v16, v1

    move/from16 v20, v14

    move v14, v5

    move v5, v13

    move v13, v12

    move v12, v15

    move/from16 v15, v20

    move-wide/from16 v21, v6

    move-wide v6, v8

    move-wide/from16 v8, v21

    goto :goto_1

    :cond_2
    const/16 v0, 0x19

    :goto_2
    if-eq v1, v0, :cond_3

    mul-int v4, v4, v14

    add-int/2addr v12, v4

    mul-int v12, v12, v17

    .line 16
    invoke-static {v12, v14}, Landroid/support/v4/ge0;->getReducedFraction(II)Landroid/support/v4/ge0;

    move-result-object v0

    return-object v0

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to convert double to fraction"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static getFraction(II)Landroid/support/v4/ge0;
    .locals 1

    if-eqz p1, :cond_2

    if-gez p1, :cond_1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: can\'t negate"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(III)Landroid/support/v4/ge0;
    .locals 4

    if-eqz p2, :cond_4

    if-ltz p2, :cond_3

    if-ltz p1, :cond_2

    if-gez p0, :cond_0

    int-to-long v0, p0

    int-to-long v2, p2

    mul-long v0, v0, v2

    int-to-long p0, p1

    sub-long/2addr v0, p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long v0, v0, v2

    int-to-long p0, p1

    add-long/2addr v0, p0

    :goto_0
    const-wide/32 p0, -0x80000000

    cmp-long v2, v0, p0

    if-ltz v2, :cond_1

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    .line 4
    new-instance p0, Landroid/support/v4/ge0;

    long-to-int p1, v0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/ge0;-><init>(II)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Numerator too large to represent as an Integer."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The numerator must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(Ljava/lang/String;)Landroid/support/v4/ge0;
    .locals 5

    if-eqz p0, :cond_4

    const/16 v0, 0x2e

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 20
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/ge0;->getFraction(D)Landroid/support/v4/ge0;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x20

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    .line 22
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v3

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 25
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v3

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 27
    invoke-static {v4, v1, p0}, Landroid/support/v4/ge0;->getFraction(III)Landroid/support/v4/ge0;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, v3}, Landroid/support/v4/ge0;->getFraction(II)Landroid/support/v4/ge0;

    move-result-object p0

    return-object p0

    .line 31
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v3

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 33
    invoke-static {v1, p0}, Landroid/support/v4/ge0;->getFraction(II)Landroid/support/v4/ge0;

    move-result-object p0

    return-object p0

    .line 34
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getReducedFraction(II)Landroid/support/v4/ge0;
    .locals 2

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroid/support/v4/ge0;->ZERO:Landroid/support/v4/ge0;

    return-object p0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    .line 2
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :cond_1
    if-gez p1, :cond_3

    if-eq p0, v0, :cond_2

    if-eq p1, v0, :cond_2

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: can\'t negate"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Landroid/support/v4/ge0;->for(II)I

    move-result v0

    .line 5
    div-int/2addr p0, v0

    .line 6
    div-int/2addr p1, v0

    .line 7
    new-instance v0, Landroid/support/v4/ge0;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private if(Landroid/support/v4/ge0;Z)Landroid/support/v4/ge0;
    .locals 5

    if-eqz p1, :cond_8

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/ge0;->negate()Landroid/support/v4/ge0;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    iget v0, p1, Landroid/support/v4/ge0;->numerator:I

    if-nez v0, :cond_2

    return-object p0

    .line 4
    :cond_2
    iget v0, p0, Landroid/support/v4/ge0;->denominator:I

    iget v1, p1, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v0, v1}, Landroid/support/v4/ge0;->for(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 5
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    iget v1, p1, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v0, v1}, Landroid/support/v4/ge0;->new(II)I

    move-result v0

    .line 6
    iget v1, p1, Landroid/support/v4/ge0;->numerator:I

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v1, v2}, Landroid/support/v4/ge0;->new(II)I

    move-result v1

    .line 7
    new-instance v2, Landroid/support/v4/ge0;

    if-eqz p2, :cond_3

    invoke-static {v0, v1}, Landroid/support/v4/ge0;->do(II)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Landroid/support/v4/ge0;->case(II)I

    move-result p2

    :goto_1
    iget v0, p0, Landroid/support/v4/ge0;->denominator:I

    iget p1, p1, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v0, p1}, Landroid/support/v4/ge0;->try(II)I

    move-result p1

    invoke-direct {v2, p2, p1}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v2

    .line 8
    :cond_4
    iget v1, p0, Landroid/support/v4/ge0;->numerator:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 9
    iget v2, p1, Landroid/support/v4/ge0;->numerator:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    :goto_2
    int-to-long v1, v0

    .line 11
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_3

    .line 12
    :cond_6
    invoke-static {v1, v0}, Landroid/support/v4/ge0;->for(II)I

    move-result v1

    :goto_3
    int-to-long v2, v1

    .line 13
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_7

    .line 15
    new-instance v2, Landroid/support/v4/ge0;

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    iget v3, p0, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v3, v0

    iget p1, p1, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr p1, v1

    invoke-static {v3, p1}, Landroid/support/v4/ge0;->try(II)I

    move-result p1

    invoke-direct {v2, p2, p1}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v2

    .line 16
    :cond_7
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "overflow: numerator too large after multiply"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The fraction must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static new(II)I
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: mul"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static try(II)I
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: mulPos"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abs()Landroid/support/v4/ge0;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    if-ltz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/ge0;->negate()Landroid/support/v4/ge0;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/ge0;->if(Landroid/support/v4/ge0;Z)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Landroid/support/v4/ge0;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Landroid/support/v4/ge0;->numerator:I

    iget v2, p1, Landroid/support/v4/ge0;->numerator:I

    if-ne v1, v2, :cond_1

    iget v3, p0, Landroid/support/v4/ge0;->denominator:I

    iget v4, p1, Landroid/support/v4/ge0;->denominator:I

    if-ne v3, v4, :cond_1

    return v0

    :cond_1
    int-to-long v3, v1

    .line 3
    iget p1, p1, Landroid/support/v4/ge0;->denominator:I

    int-to-long v5, p1

    mul-long v3, v3, v5

    int-to-long v1, v2

    .line 4
    iget p1, p0, Landroid/support/v4/ge0;->denominator:I

    int-to-long v5, p1

    mul-long v1, v1, v5

    cmp-long p1, v3, v1

    if-nez p1, :cond_2

    return v0

    :cond_2
    cmp-long p1, v3, v1

    if-gez p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/ge0;

    invoke-virtual {p0, p1}, Landroid/support/v4/ge0;->compareTo(Landroid/support/v4/ge0;)I

    move-result p1

    return p1
.end method

.method public divideBy(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget v0, p1, Landroid/support/v4/ge0;->numerator:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/ge0;->invert()Landroid/support/v4/ge0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ge0;->multiplyBy(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "The fraction to divide by must not be zero"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The fraction must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubleValue()D
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/support/v4/ge0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/ge0;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/ge0;->getNumerator()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/ge0;->getNumerator()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getDenominator()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/ge0;->getDenominator()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/ge0;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    return v0
.end method

.method public getProperNumerator()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    iget v1, p0, Landroid/support/v4/ge0;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getProperWhole()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    iget v1, p0, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->do:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ge0;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/ge0;->do:I

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v4/ge0;->do:I

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    iget v1, p0, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invert()Landroid/support/v4/ge0;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-gez v0, :cond_0

    .line 2
    new-instance v1, Landroid/support/v4/ge0;

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    neg-int v2, v2

    neg-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v1

    .line 3
    :cond_0
    new-instance v1, Landroid/support/v4/ge0;

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    invoke-direct {v1, v2, v0}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/support/v4/ge0;->numerator:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p1, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v0, v1}, Landroid/support/v4/ge0;->for(II)I

    move-result v0

    .line 3
    iget v1, p1, Landroid/support/v4/ge0;->numerator:I

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v1, v2}, Landroid/support/v4/ge0;->for(II)I

    move-result v1

    .line 4
    iget v2, p0, Landroid/support/v4/ge0;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Landroid/support/v4/ge0;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/ge0;->new(II)I

    move-result v2

    iget v3, p0, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v3, v1

    iget p1, p1, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr p1, v0

    invoke-static {v3, p1}, Landroid/support/v4/ge0;->try(II)I

    move-result p1

    invoke-static {v2, p1}, Landroid/support/v4/ge0;->getReducedFraction(II)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Landroid/support/v4/ge0;->ZERO:Landroid/support/v4/ge0;

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The fraction must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public negate()Landroid/support/v4/ge0;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v1, Landroid/support/v4/ge0;

    neg-int v0, v0

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    invoke-direct {v1, v0, v2}, Landroid/support/v4/ge0;-><init>(II)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pow(I)Landroid/support/v4/ge0;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    sget-object p1, Landroid/support/v4/ge0;->ONE:Landroid/support/v4/ge0;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-gez p1, :cond_3

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ge0;->invert()Landroid/support/v4/ge0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/ge0;->pow(I)Landroid/support/v4/ge0;

    move-result-object v1

    div-int/2addr p1, v0

    neg-int p1, p1

    invoke-virtual {v1, p1}, Landroid/support/v4/ge0;->pow(I)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/ge0;->invert()Landroid/support/v4/ge0;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v4/ge0;->pow(I)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    invoke-virtual {p0, p0}, Landroid/support/v4/ge0;->multiplyBy(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;

    move-result-object v1

    .line 5
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_4

    .line 6
    div-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/ge0;->pow(I)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    div-int/2addr p1, v0

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/support/v4/ge0;->pow(I)Landroid/support/v4/ge0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p0}, Landroid/support/v4/ge0;->multiplyBy(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public reduce()Landroid/support/v4/ge0;
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Landroid/support/v4/ge0;->ZERO:Landroid/support/v4/ge0;

    invoke-virtual {p0, v0}, Landroid/support/v4/ge0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/ge0;->denominator:I

    invoke-static {v0, v1}, Landroid/support/v4/ge0;->for(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p0

    .line 4
    :cond_2
    iget v1, p0, Landroid/support/v4/ge0;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Landroid/support/v4/ge0;->denominator:I

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/ge0;->getFraction(II)Landroid/support/v4/ge0;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Landroid/support/v4/ge0;)Landroid/support/v4/ge0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/ge0;->if(Landroid/support/v4/ge0;Z)Landroid/support/v4/ge0;

    move-result-object p1

    return-object p1
.end method

.method public toProperString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 2
    iget v0, p0, Landroid/support/v4/ge0;->numerator:I

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Landroid/support/v4/ge0;->denominator:I

    if-ne v0, v1, :cond_1

    const-string v0, "1"

    .line 5
    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "-1"

    .line 6
    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    neg-int v0, v0

    :cond_3
    neg-int v1, v1

    const/16 v2, 0x2f

    const/16 v3, 0x20

    if-ge v0, v1, :cond_5

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/ge0;->getProperNumerator()I

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/ge0;->getProperWhole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getProperWhole()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getDenominator()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    .line 11
    :cond_6
    :goto_0
    iget-object v0, p0, Landroid/support/v4/ge0;->for:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ge0;->if:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/ge0;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ge0;->if:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ge0;->if:Ljava/lang/String;

    return-object v0
.end method
