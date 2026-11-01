.class public Landroid/support/v4/f51;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:Ljava/lang/Byte;

.field public static final case:Ljava/lang/Integer;

.field public static final catch:Ljava/lang/Byte;

.field public static final class:Ljava/lang/Byte;

.field public static final const:Ljava/lang/Double;

.field public static final do:Ljava/lang/Long;

.field public static final else:Ljava/lang/Short;

.field public static final final:Ljava/lang/Double;

.field public static final for:Ljava/lang/Long;

.field public static final goto:Ljava/lang/Short;

.field public static final if:Ljava/lang/Long;

.field public static final import:Ljava/lang/Float;

.field public static final new:Ljava/lang/Integer;

.field public static final super:Ljava/lang/Double;

.field public static final this:Ljava/lang/Short;

.field public static final throw:Ljava/lang/Float;

.field public static final try:Ljava/lang/Integer;

.field public static final while:Ljava/lang/Float;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->do:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->if:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->for:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/support/v4/f51;->new:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Landroid/support/v4/f51;->try:Ljava/lang/Integer;

    const/4 v2, -0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Landroid/support/v4/f51;->case:Ljava/lang/Integer;

    .line 7
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Landroid/support/v4/f51;->else:Ljava/lang/Short;

    .line 8
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Landroid/support/v4/f51;->goto:Ljava/lang/Short;

    .line 9
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Landroid/support/v4/f51;->this:Ljava/lang/Short;

    .line 10
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->break:Ljava/lang/Byte;

    .line 11
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->catch:Ljava/lang/Byte;

    .line 12
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->class:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->const:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->final:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->super:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->throw:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->while:Ljava/lang/Float;

    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Landroid/support/v4/f51;->import:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;F)F
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static abstract([I)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 5
    aget v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/f51;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static break(Ljava/lang/String;)Z
    .locals 16

    .line 1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    array-length v2, v0

    .line 4
    aget-char v3, v0, v1

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x46

    const/16 v8, 0x66

    const/16 v9, 0x39

    const/16 v10, 0x30

    if-le v2, v6, :cond_d

    .line 5
    aget-char v11, v0, v3

    if-ne v11, v10, :cond_d

    .line 6
    aget-char v11, v0, v6

    const/16 v12, 0x78

    if-eq v11, v12, :cond_6

    aget-char v11, v0, v6

    const/16 v12, 0x58

    if-ne v11, v12, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    aget-char v11, v0, v6

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 8
    :goto_1
    array-length v2, v0

    if-ge v6, v2, :cond_5

    .line 9
    aget-char v2, v0, v6

    if-lt v2, v10, :cond_4

    aget-char v2, v0, v6

    const/16 v3, 0x37

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1

    :cond_5
    return v5

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_7

    return v1

    .line 10
    :cond_7
    :goto_4
    array-length v2, v0

    if-ge v3, v2, :cond_c

    .line 11
    aget-char v2, v0, v3

    if-lt v2, v10, :cond_8

    aget-char v2, v0, v3

    if-le v2, v9, :cond_a

    :cond_8
    aget-char v2, v0, v3

    const/16 v4, 0x61

    if-lt v2, v4, :cond_9

    aget-char v2, v0, v3

    if-le v2, v8, :cond_a

    :cond_9
    aget-char v2, v0, v3

    const/16 v4, 0x41

    if-lt v2, v4, :cond_b

    aget-char v2, v0, v3

    if-le v2, v7, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    return v1

    :cond_c
    return v5

    :cond_d
    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    const/16 v14, 0x45

    const/16 v15, 0x65

    const/16 v4, 0x2e

    if-lt v3, v2, :cond_1b

    add-int/lit8 v7, v2, 0x1

    if-ge v3, v7, :cond_e

    if-eqz v6, :cond_e

    if-nez v11, :cond_e

    const/16 v7, 0x46

    goto :goto_a

    .line 12
    :cond_e
    array-length v2, v0

    if-ge v3, v2, :cond_19

    .line 13
    aget-char v2, v0, v3

    if-lt v2, v10, :cond_f

    aget-char v2, v0, v3

    if-gt v2, v9, :cond_f

    return v5

    .line 14
    :cond_f
    aget-char v2, v0, v3

    if-eq v2, v15, :cond_18

    aget-char v2, v0, v3

    if-ne v2, v14, :cond_10

    goto :goto_9

    .line 15
    :cond_10
    aget-char v2, v0, v3

    if-ne v2, v4, :cond_13

    if-nez v13, :cond_12

    if-eqz v12, :cond_11

    goto :goto_7

    :cond_11
    return v11

    :cond_12
    :goto_7
    return v1

    :cond_13
    if-nez v6, :cond_15

    .line 16
    aget-char v2, v0, v3

    const/16 v4, 0x64

    if-eq v2, v4, :cond_14

    aget-char v2, v0, v3

    const/16 v4, 0x44

    if-eq v2, v4, :cond_14

    aget-char v2, v0, v3

    if-eq v2, v8, :cond_14

    aget-char v2, v0, v3

    const/16 v7, 0x46

    if-ne v2, v7, :cond_15

    :cond_14
    return v11

    .line 17
    :cond_15
    aget-char v2, v0, v3

    const/16 v4, 0x6c

    if-eq v2, v4, :cond_17

    aget-char v0, v0, v3

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_16

    goto :goto_8

    :cond_16
    return v1

    :cond_17
    :goto_8
    if-eqz v11, :cond_18

    if-nez v12, :cond_18

    if-nez v13, :cond_18

    const/4 v1, 0x1

    :cond_18
    :goto_9
    return v1

    :cond_19
    if-nez v6, :cond_1a

    if-eqz v11, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 18
    :cond_1b
    :goto_a
    aget-char v5, v0, v3

    if-lt v5, v10, :cond_1c

    aget-char v5, v0, v3

    if-gt v5, v9, :cond_1c

    const/16 v5, 0x2d

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto :goto_e

    .line 19
    :cond_1c
    aget-char v5, v0, v3

    if-ne v5, v4, :cond_1f

    if-nez v13, :cond_1e

    if-eqz v12, :cond_1d

    goto :goto_b

    :cond_1d
    const/16 v5, 0x2d

    const/4 v13, 0x1

    goto :goto_e

    :cond_1e
    :goto_b
    return v1

    .line 20
    :cond_1f
    aget-char v4, v0, v3

    if-eq v4, v15, :cond_24

    aget-char v4, v0, v3

    if-ne v4, v14, :cond_20

    goto :goto_d

    .line 21
    :cond_20
    aget-char v4, v0, v3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_22

    aget-char v4, v0, v3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_21

    goto :goto_c

    :cond_21
    return v1

    :cond_22
    const/16 v5, 0x2d

    :goto_c
    if-nez v6, :cond_23

    return v1

    :cond_23
    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_e

    :cond_24
    :goto_d
    const/16 v5, 0x2d

    if-eqz v12, :cond_25

    return v1

    :cond_25
    if-nez v11, :cond_26

    return v1

    :cond_26
    const/4 v6, 0x1

    const/4 v12, 0x1

    :goto_e
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x2d

    const/4 v5, 0x1

    goto/16 :goto_6
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static case(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static catch(BBB)B
    .locals 0

    if-le p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method

.method public static class([B)B
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 5
    aget-byte v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static const(DDD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static continue(JJJ)J
    .locals 1

    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    cmp-long p2, p4, p0

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide p4, p0

    :goto_0
    return-wide p4
.end method

.method public static d(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/f51;->e(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static default(DDD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static do(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid number."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;J)J
    .locals 0

    if-nez p0, :cond_0

    return-wide p1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static else(Ljava/lang/String;)Ljava/lang/Number;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x6

    const-string v3, "0x"

    const-string v4, "0X"

    const-string v5, "-0x"

    const-string v6, "-0X"

    const-string v7, "#"

    const-string v8, "-#"

    .line 2
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 3
    aget-object v6, v3, v5

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x10

    if-lez v2, :cond_8

    move v1, v2

    .line 6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-gt v2, v3, :cond_7

    const/16 v1, 0x37

    if-ne v2, v3, :cond_4

    if-le v4, v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    if-gt v2, v3, :cond_6

    if-ne v2, v3, :cond_5

    if-le v4, v1, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->try(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 10
    :cond_6
    :goto_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->case(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 11
    :cond_7
    :goto_4
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->if(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 12
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2e

    .line 13
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v8, 0x65

    .line 14
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x45

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    const-string v9, " is not a valid number."

    const/4 v10, -0x1

    if-le v7, v10, :cond_b

    if-le v8, v10, :cond_a

    if-lt v8, v7, :cond_9

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v8, v11, :cond_9

    add-int/lit8 v11, v7, 0x1

    .line 16
    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 17
    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    add-int/lit8 v11, v7, 0x1

    .line 18
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 19
    :goto_5
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_7

    :cond_b
    if-le v8, v10, :cond_d

    .line 21
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v8, v7, :cond_c

    .line 22
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 23
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v7, v0

    :goto_6
    move-object v11, v1

    const/4 v12, 0x0

    .line 24
    :goto_7
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    if-nez v13, :cond_1a

    if-eq v2, v6, :cond_1a

    if-le v8, v10, :cond_e

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v8, v3, :cond_e

    add-int/2addr v8, v5

    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 27
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v7}, Landroid/support/v4/f51;->goto(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v1}, Landroid/support/v4/f51;->goto(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    :goto_8
    const/16 v7, 0x44

    if-eq v2, v7, :cond_16

    const/16 v7, 0x46

    if-eq v2, v7, :cond_14

    const/16 v7, 0x4c

    if-eq v2, v7, :cond_10

    const/16 v7, 0x64

    if-eq v2, v7, :cond_16

    const/16 v7, 0x66

    if-eq v2, v7, :cond_14

    const/16 v6, 0x6c

    if-ne v2, v6, :cond_19

    :cond_10
    if-nez v11, :cond_13

    if-nez v1, :cond_13

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_11

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/f51;->this(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    invoke-static {v3}, Landroid/support/v4/f51;->this(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 30
    :cond_12
    :try_start_0
    invoke-static {v3}, Landroid/support/v4/f51;->case(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    invoke-static {v3}, Landroid/support/v4/f51;->if(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 32
    :cond_13
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_14
    :try_start_1
    invoke-static {v3}, Landroid/support/v4/f51;->new(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    cmpl-float v2, v2, v14

    if-nez v2, :cond_15

    if-eqz v6, :cond_16

    :cond_15
    return-object v1

    .line 35
    :catch_1
    :cond_16
    :try_start_2
    invoke-static {v3}, Landroid/support/v4/f51;->for(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    float-to-double v4, v2

    cmpl-double v2, v4, v15

    if-nez v2, :cond_17

    if-eqz v6, :cond_18

    :cond_17
    return-object v1

    .line 37
    :catch_2
    :cond_18
    :try_start_3
    invoke-static {v3}, Landroid/support/v4/f51;->do(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 38
    :catch_3
    :cond_19
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    if-le v8, v10, :cond_1b

    .line 39
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v8, v2, :cond_1b

    add-int/2addr v8, v5

    .line 40
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    if-nez v11, :cond_1c

    if-nez v1, :cond_1c

    .line 41
    :try_start_4
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->try(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 42
    :catch_4
    :try_start_5
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->case(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 43
    :catch_5
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->if(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1c
    invoke-static {v7}, Landroid/support/v4/f51;->goto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1}, Landroid/support/v4/f51;->goto(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v4, 0x1

    :cond_1d
    const/4 v1, 0x7

    if-gt v12, v1, :cond_1f

    .line 45
    :try_start_6
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->new(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    cmpl-float v2, v2, v14

    if-nez v2, :cond_1e

    if-eqz v4, :cond_1f

    :cond_1e
    return-object v1

    :catch_6
    nop

    :cond_1f
    if-gt v12, v3, :cond_21

    .line 47
    :try_start_7
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->for(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    cmpl-double v5, v2, v15

    if-nez v5, :cond_20

    if-eqz v4, :cond_21

    :cond_20
    return-object v1

    .line 49
    :catch_7
    :cond_21
    invoke-static/range {p0 .. p0}, Landroid/support/v4/f51;->do(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 50
    :cond_22
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public static extends([D)D
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 5
    :cond_0
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1

    .line 6
    aget-wide v0, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static f(Ljava/lang/String;)S
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/f51;->g(Ljava/lang/String;S)S

    move-result p0

    return p0
.end method

.method public static final([D)D
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 5
    :cond_0
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1

    .line 6
    aget-wide v0, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static finally(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static for(Ljava/lang/String;)Ljava/lang/Double;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;S)S
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method private static goto(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static h(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array cannot be empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    const-string v1, "-"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "0x"

    .line 2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-nez v3, :cond_4

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "#"

    .line 3
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "0"

    .line 4
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_3

    const/16 v0, 0x8

    move v0, v3

    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    move v0, v1

    const/16 v4, 0xa

    goto :goto_1

    :cond_4
    :goto_0
    add-int/lit8 v0, v1, 0x2

    .line 5
    :goto_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public static implements(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/f51;->instanceof(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static import([I)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 5
    aget v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static instanceof(Ljava/lang/String;D)D
    .locals 0

    if-nez p0, :cond_0

    return-wide p1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static interface([S)S
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 5
    aget-short v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static native(JJJ)J
    .locals 1

    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    cmp-long p2, p4, p0

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide p4, p0

    :goto_0
    return-wide p4
.end method

.method public static new(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static package([F)F
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 5
    :cond_0
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 6
    aget v0, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static private(III)I
    .locals 0

    if-ge p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method

.method public static protected(Ljava/lang/String;)B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/f51;->transient(Ljava/lang/String;B)B

    move-result p0

    return p0
.end method

.method public static public([J)J
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 4
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 5
    aget-wide v0, p0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static return(SSS)S
    .locals 0

    if-le p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method

.method public static static([S)S
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 5
    aget-short v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static strictfp([J)J
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 4
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 5
    aget-wide v0, p0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static super(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static switch(BBB)B
    .locals 0

    if-ge p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method

.method public static synchronized(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/f51;->a(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static this(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static throw([F)F
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 5
    :cond_0
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 6
    aget v0, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static throws([B)B
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/f51;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 5
    aget-byte v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static transient(Ljava/lang/String;B)B
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static try(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static volatile(SSS)S
    .locals 0

    if-ge p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method

.method public static while(III)I
    .locals 0

    if-le p1, p0, :cond_0

    move p0, p1

    :cond_0
    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    return p2
.end method
