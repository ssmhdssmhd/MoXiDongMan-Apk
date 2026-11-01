.class final Lorg/mozilla/javascript/NativeMath;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final Id_E:I = 0x25

.field private static final Id_LN10:I = 0x27

.field private static final Id_LN2:I = 0x28

.field private static final Id_LOG10E:I = 0x2a

.field private static final Id_LOG2E:I = 0x29

.field private static final Id_PI:I = 0x26

.field private static final Id_SQRT1_2:I = 0x2b

.field private static final Id_SQRT2:I = 0x2c

.field private static final Id_abs:I = 0x2

.field private static final Id_acos:I = 0x3

.field private static final Id_acosh:I = 0x1e

.field private static final Id_asin:I = 0x4

.field private static final Id_asinh:I = 0x1f

.field private static final Id_atan:I = 0x5

.field private static final Id_atan2:I = 0x6

.field private static final Id_atanh:I = 0x20

.field private static final Id_cbrt:I = 0x14

.field private static final Id_ceil:I = 0x7

.field private static final Id_clz32:I = 0x24

.field private static final Id_cos:I = 0x8

.field private static final Id_cosh:I = 0x15

.field private static final Id_exp:I = 0x9

.field private static final Id_expm1:I = 0x16

.field private static final Id_floor:I = 0xa

.field private static final Id_fround:I = 0x23

.field private static final Id_hypot:I = 0x17

.field private static final Id_imul:I = 0x1c

.field private static final Id_log:I = 0xb

.field private static final Id_log10:I = 0x19

.field private static final Id_log1p:I = 0x18

.field private static final Id_log2:I = 0x22

.field private static final Id_max:I = 0xc

.field private static final Id_min:I = 0xd

.field private static final Id_pow:I = 0xe

.field private static final Id_random:I = 0xf

.field private static final Id_round:I = 0x10

.field private static final Id_sign:I = 0x21

.field private static final Id_sin:I = 0x11

.field private static final Id_sinh:I = 0x1a

.field private static final Id_sqrt:I = 0x12

.field private static final Id_tan:I = 0x13

.field private static final Id_tanh:I = 0x1b

.field private static final Id_toSource:I = 0x1

.field private static final Id_trunc:I = 0x1d

.field private static final LAST_METHOD_ID:I = 0x24

.field private static final LOG2E:D = 1.4426950408889634

.field private static final MATH_TAG:Ljava/lang/Object;

.field private static final MAX_ID:I = 0x2c

.field private static final serialVersionUID:J = -0x7aa9e4af6da33631L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Math"

    .line 1
    sput-object v0, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeMath;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMath;-><init>()V

    const/16 v1, 0x2c

    .line 2
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 3
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 4
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    const/4 p1, 0x2

    const-string v1, "Math"

    .line 6
    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static js_hypot([Ljava/lang/Object;)D
    .locals 11

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 1
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 2
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    .line 3
    sget-wide v6, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    cmpl-double v8, v4, v6

    if-nez v8, :cond_1

    return-wide v4

    :cond_1
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_3

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v4, v8

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    mul-double v4, v4, v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v6

    .line 4
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_imul([Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method private static js_pow(DD)D
    .locals 20

    move-wide/from16 v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v0

    if-eqz v8, :cond_0

    move-wide v4, v0

    goto/16 :goto_3

    :cond_0
    cmpl-double v8, v0, v6

    if-nez v8, :cond_1

    move-wide v4, v2

    goto/16 :goto_3

    :cond_1
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x1

    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v16, p0, v6

    if-nez v16, :cond_5

    div-double v2, v2, p0

    cmpl-double v16, v2, v6

    if-lez v16, :cond_2

    cmpl-double v2, v0, v6

    if-lez v2, :cond_f

    goto :goto_0

    :cond_2
    double-to-long v2, v0

    long-to-double v8, v2

    cmpl-double v17, v8, v0

    if-nez v17, :cond_4

    and-long/2addr v2, v12

    cmp-long v8, v2, v10

    if-eqz v8, :cond_4

    cmpl-double v2, v0, v6

    if-lez v2, :cond_3

    const-wide/high16 v8, -0x8000000000000000L

    goto/16 :goto_2

    :cond_3
    move-wide v8, v14

    goto/16 :goto_2

    :cond_4
    cmpl-double v2, v0, v6

    if-lez v2, :cond_f

    goto :goto_0

    .line 1
    :cond_5
    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v17, v8, v8

    if-eqz v17, :cond_e

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    cmpl-double v19, v0, v4

    if-nez v19, :cond_7

    cmpg-double v0, p0, v17

    if-ltz v0, :cond_f

    cmpg-double v0, v2, p0

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    cmpg-double v0, v17, p0

    if-gez v0, :cond_e

    cmpg-double v0, p0, v2

    if-gez v0, :cond_e

    goto :goto_0

    :cond_7
    cmpl-double v19, v0, v14

    if-nez v19, :cond_a

    cmpg-double v0, p0, v17

    if-ltz v0, :cond_9

    cmpg-double v0, v2, p0

    if-gez v0, :cond_8

    goto :goto_0

    :cond_8
    cmpg-double v0, v17, p0

    if-gez v0, :cond_e

    cmpg-double v0, p0, v2

    if-gez v0, :cond_e

    goto :goto_3

    :cond_9
    :goto_0
    move-wide v4, v6

    goto :goto_3

    :cond_a
    cmpl-double v2, p0, v4

    if-nez v2, :cond_b

    cmpl-double v2, v0, v6

    if-lez v2, :cond_9

    goto :goto_3

    :cond_b
    cmpl-double v2, p0, v14

    if-nez v2, :cond_e

    double-to-long v2, v0

    long-to-double v8, v2

    cmpl-double v17, v8, v0

    if-nez v17, :cond_d

    and-long/2addr v2, v12

    cmp-long v8, v2, v10

    if-eqz v8, :cond_d

    cmpl-double v2, v0, v6

    if-lez v2, :cond_c

    goto :goto_1

    :cond_c
    const-wide/high16 v14, -0x8000000000000000L

    :goto_1
    move-wide v4, v14

    goto :goto_3

    :cond_d
    cmpl-double v2, v0, v6

    if-lez v2, :cond_9

    goto :goto_3

    :cond_e
    :goto_2
    move-wide v4, v8

    :cond_f
    :goto_3
    return-wide v4
.end method

.method private static js_trunc(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p5

    .line 1
    sget-object v1, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x3ff71547652b82feL    # 1.4426950408889634

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v13, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v19, 0x0

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_0
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    const/16 v6, 0x20

    cmpl-double v7, v0, v19

    if-eqz v7, :cond_3

    cmpl-double v7, v0, v0

    if-nez v7, :cond_3

    cmpl-double v7, v0, v13

    if-eqz v7, :cond_3

    cmpl-double v7, v0, v11

    if-nez v7, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    cmp-long v7, v0, v2

    if-nez v7, :cond_2

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    ushr-long/2addr v0, v10

    long-to-double v0, v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_1
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    :cond_4
    :goto_1
    move-wide/from16 v17, v0

    goto/16 :goto_6

    .line 11
    :pswitch_2
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpg-double v2, v0, v19

    if-gez v2, :cond_5

    goto/16 :goto_6

    .line 12
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    goto :goto_1

    .line 13
    :pswitch_3
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v0

    if-nez v2, :cond_8

    cmpl-double v2, v0, v19

    if-nez v2, :cond_7

    div-double/2addr v15, v0

    cmpl-double v0, v15, v19

    if-lez v0, :cond_6

    .line 14
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 15
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 16
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 17
    :cond_8
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 18
    :pswitch_4
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v0

    if-nez v2, :cond_b

    cmpg-double v2, v6, v0

    if-gtz v2, :cond_b

    cmpg-double v2, v0, v15

    if-gtz v2, :cond_b

    cmpl-double v2, v0, v19

    if-nez v2, :cond_a

    div-double/2addr v15, v0

    cmpl-double v0, v15, v19

    if-lez v0, :cond_9

    .line 19
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 20
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_a
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v4, v0, v15

    sub-double/2addr v0, v15

    div-double/2addr v4, v0

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 22
    :cond_b
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_5
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v13

    if-eqz v2, :cond_10

    cmpl-double v2, v0, v11

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    cmpl-double v2, v0, v0

    if-nez v2, :cond_f

    cmpl-double v2, v0, v19

    if-nez v2, :cond_e

    div-double/2addr v15, v0

    cmpl-double v0, v15, v19

    if-lez v0, :cond_d

    .line 24
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 25
    :cond_d
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_e
    mul-double v2, v0, v0

    add-double/2addr v2, v15

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 27
    :cond_f
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 28
    :cond_10
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_6
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v0

    if-nez v2, :cond_11

    mul-double v2, v0, v0

    sub-double/2addr v2, v15

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 31
    :cond_11
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 32
    :pswitch_7
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeMath;->js_trunc(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 34
    :pswitch_8
    invoke-static/range {p5 .. p5}, Lorg/mozilla/javascript/NativeMath;->js_imul([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_9
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 37
    :pswitch_a
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 39
    :pswitch_b
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 41
    :pswitch_c
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 43
    :pswitch_d
    invoke-static/range {p5 .. p5}, Lorg/mozilla/javascript/NativeMath;->js_hypot([Ljava/lang/Object;)D

    move-result-wide v17

    goto/16 :goto_6

    .line 44
    :pswitch_e
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 46
    :pswitch_f
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 48
    :pswitch_10
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 50
    :pswitch_11
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 52
    :pswitch_12
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 54
    :pswitch_13
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v13

    if-eqz v2, :cond_1f

    cmpl-double v2, v0, v11

    if-nez v2, :cond_12

    goto/16 :goto_6

    .line 55
    :cond_12
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto/16 :goto_1

    .line 56
    :pswitch_14
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v17

    cmpl-double v0, v17, v17

    if-nez v0, :cond_1f

    cmpl-double v0, v17, v13

    if-eqz v0, :cond_1f

    cmpl-double v0, v17, v11

    if-eqz v0, :cond_1f

    .line 57
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    long-to-double v0, v0

    goto/16 :goto_1

    :cond_13
    cmpg-double v0, v17, v19

    if-gez v0, :cond_14

    .line 58
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    goto/16 :goto_1

    :cond_14
    cmpl-double v0, v17, v19

    if-eqz v0, :cond_1f

    :goto_3
    move-wide/from16 v17, v19

    goto/16 :goto_6

    .line 59
    :pswitch_15
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    goto/16 :goto_6

    .line 60
    :pswitch_16
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    const/4 v3, 0x1

    .line 61
    invoke-static {v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeMath;->js_pow(DD)D

    move-result-wide v17

    goto/16 :goto_6

    :pswitch_17
    const/16 v2, 0xc

    if-ne v1, v2, :cond_15

    goto :goto_4

    :cond_15
    move-wide v11, v13

    .line 62
    :goto_4
    array-length v3, v0

    if-eq v10, v3, :cond_18

    .line 63
    aget-object v3, v0, v10

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    cmpl-double v5, v3, v3

    if-eqz v5, :cond_16

    move-wide/from16 v17, v3

    goto/16 :goto_6

    :cond_16
    if-ne v1, v2, :cond_17

    .line 64
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_5

    .line 65
    :cond_17
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :goto_5
    move-wide v11, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_18
    move-wide/from16 v17, v11

    goto/16 :goto_6

    .line 66
    :pswitch_18
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpg-double v2, v0, v19

    if-gez v2, :cond_19

    goto/16 :goto_6

    .line 67
    :cond_19
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto/16 :goto_1

    .line 68
    :pswitch_19
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    goto/16 :goto_6

    .line 70
    :pswitch_1a
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v13

    if-nez v2, :cond_1a

    goto/16 :goto_1

    :cond_1a
    cmpl-double v2, v0, v11

    if-nez v2, :cond_1b

    goto :goto_3

    .line 71
    :cond_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto/16 :goto_1

    .line 72
    :pswitch_1b
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v13

    if-eqz v2, :cond_1f

    cmpl-double v2, v0, v11

    if-nez v2, :cond_1c

    goto :goto_6

    .line 73
    :cond_1c
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto/16 :goto_1

    .line 74
    :pswitch_1c
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    goto :goto_6

    .line 76
    :pswitch_1d
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    const/4 v3, 0x1

    .line 77
    invoke-static {v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    goto :goto_6

    .line 78
    :pswitch_1e
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v17

    goto :goto_6

    .line 80
    :pswitch_1f
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    cmpl-double v0, v2, v2

    if-nez v0, :cond_1f

    cmpg-double v0, v6, v2

    if-gtz v0, :cond_1f

    cmpg-double v0, v2, v15

    if-gtz v0, :cond_1f

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1d

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto/16 :goto_1

    :cond_1d
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto/16 :goto_1

    .line 82
    :pswitch_20
    invoke-static {v0, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v2, v0, v19

    if-nez v2, :cond_1e

    goto/16 :goto_3

    :cond_1e
    cmpg-double v2, v0, v19

    if-gez v2, :cond_4

    neg-double v0, v0

    goto/16 :goto_1

    .line 83
    :cond_1f
    :goto_6
    invoke-static/range {v17 .. v18}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_21
    const-string v0, "Math"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x72

    const/4 v5, 0x4

    const/16 v9, 0x6c

    const/16 v10, 0x70

    const/16 v11, 0x65

    const/16 v12, 0x4c

    const/16 v13, 0x68

    const/16 v15, 0x74

    const/16 v6, 0x63

    const/16 v4, 0x61

    const/16 v3, 0x73

    const/4 v8, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "toSource"

    const/4 v5, 0x1

    goto/16 :goto_1

    :pswitch_1
    const/16 v5, 0x2b

    const-string v1, "SQRT1_2"

    goto/16 :goto_1

    .line 2
    :pswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_0

    const/16 v5, 0x2a

    const-string v1, "LOG10E"

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x66

    if-ne v1, v3, :cond_1

    const/16 v5, 0x23

    const-string v1, "fround"

    goto/16 :goto_1

    :cond_1
    if-ne v1, v2, :cond_24

    const/16 v5, 0xf

    const-string v1, "random"

    goto/16 :goto_1

    .line 3
    :pswitch_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_f

    const/16 v12, 0x53

    if-eq v1, v12, :cond_e

    if-eq v1, v4, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v13, :cond_8

    if-eq v1, v9, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v15, :cond_4

    if-eq v1, v11, :cond_3

    const/16 v2, 0x66

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xa

    const-string v1, "floor"

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x16

    const-string v1, "expm1"

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0x1d

    const-string v1, "trunc"

    goto/16 :goto_1

    :cond_5
    const/16 v5, 0x10

    const-string v1, "round"

    goto/16 :goto_1

    .line 4
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_7

    const/16 v5, 0x19

    const-string v1, "log10"

    goto/16 :goto_1

    :cond_7
    if-ne v1, v10, :cond_24

    const/16 v5, 0x18

    const-string v1, "log1p"

    goto/16 :goto_1

    :cond_8
    const/16 v5, 0x17

    const-string v1, "hypot"

    goto/16 :goto_1

    :cond_9
    const/16 v5, 0x24

    const-string v1, "clz32"

    goto/16 :goto_1

    .line 5
    :cond_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_b

    const/16 v5, 0x1e

    const-string v1, "acosh"

    goto/16 :goto_1

    :cond_b
    if-ne v1, v3, :cond_c

    const/16 v5, 0x1f

    const-string v1, "asinh"

    goto/16 :goto_1

    :cond_c
    if-ne v1, v15, :cond_24

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_d

    .line 7
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_24

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_24

    const/4 v8, 0x6

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x3

    const/16 v3, 0x6e

    if-ne v1, v13, :cond_24

    .line 8
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    const/16 v8, 0x20

    goto/16 :goto_2

    :cond_e
    const/16 v5, 0x2c

    const-string v1, "SQRT2"

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x29

    const-string v1, "LOG2E"

    goto/16 :goto_1

    .line 9
    :pswitch_4
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_19

    if-eq v1, v11, :cond_18

    const/16 v2, 0x69

    if-eq v1, v2, :cond_16

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_15

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_13

    const/16 v2, 0x71

    if-eq v1, v2, :cond_12

    if-eq v1, v3, :cond_11

    if-eq v1, v15, :cond_10

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "acos"

    const/4 v5, 0x3

    goto/16 :goto_1

    :pswitch_6
    const/16 v5, 0x14

    const-string v1, "cbrt"

    goto/16 :goto_1

    :pswitch_7
    const/16 v5, 0x1b

    const-string v1, "tanh"

    goto/16 :goto_1

    :cond_10
    const/4 v5, 0x5

    const-string v1, "atan"

    goto/16 :goto_1

    :cond_11
    const-string v1, "asin"

    goto/16 :goto_1

    :cond_12
    const/16 v5, 0x12

    const-string v1, "sqrt"

    goto/16 :goto_1

    .line 10
    :cond_13
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_14

    .line 11
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_24

    const/16 v8, 0x15

    goto/16 :goto_2

    :cond_14
    const/4 v2, 0x3

    if-ne v1, v9, :cond_24

    .line 12
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x67

    if-ne v1, v3, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_24

    const/16 v8, 0x22

    goto/16 :goto_2

    :cond_15
    const/16 v5, 0x1c

    const-string v1, "imul"

    goto/16 :goto_1

    :cond_16
    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_17

    .line 14
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_24

    const/16 v8, 0x1a

    goto/16 :goto_2

    :cond_17
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_24

    .line 15
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_24

    const/16 v8, 0x21

    goto/16 :goto_2

    :cond_18
    const/4 v5, 0x7

    const-string v1, "ceil"

    goto/16 :goto_1

    :cond_19
    const/16 v5, 0x27

    const-string v1, "LN10"

    goto/16 :goto_1

    .line 16
    :pswitch_8
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_23

    if-eq v1, v4, :cond_22

    if-eq v1, v6, :cond_21

    if-eq v1, v11, :cond_20

    if-eq v1, v10, :cond_1f

    if-eq v1, v9, :cond_1e

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_1c

    if-eq v1, v3, :cond_1b

    if-eq v1, v15, :cond_1a

    goto/16 :goto_0

    .line 17
    :cond_1a
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_24

    const/16 v8, 0x13

    goto/16 :goto_2

    :cond_1b
    const/16 v2, 0x6e

    .line 18
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_24

    const/16 v8, 0x11

    goto/16 :goto_2

    :cond_1c
    const/16 v2, 0x6e

    const/16 v3, 0x69

    .line 19
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1d

    .line 20
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    const/16 v8, 0xd

    goto/16 :goto_2

    :cond_1d
    const/16 v2, 0x78

    if-ne v1, v2, :cond_24

    .line 21
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_24

    const/16 v8, 0xc

    goto/16 :goto_2

    .line 22
    :cond_1e
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_24

    const/16 v8, 0xb

    goto/16 :goto_2

    :cond_1f
    const/16 v2, 0x6f

    .line 23
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x77

    if-ne v1, v3, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_24

    const/16 v8, 0xe

    goto/16 :goto_2

    .line 24
    :cond_20
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_24

    const/16 v8, 0x9

    goto :goto_2

    .line 25
    :cond_21
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_24

    const/16 v8, 0x8

    goto :goto_2

    .line 26
    :cond_22
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_24

    const/4 v8, 0x2

    goto :goto_2

    .line 27
    :cond_23
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_24

    const/16 v8, 0x28

    goto :goto_2

    .line 28
    :pswitch_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_24

    const/16 v8, 0x26

    goto :goto_2

    .line 29
    :pswitch_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_24

    const/16 v8, 0x25

    goto :goto_2

    :cond_24
    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v1, :cond_25

    if-eq v1, v0, :cond_25

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_2

    :cond_25
    move v8, v5

    :goto_2
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Math"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/16 v0, 0x24

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "clz32"

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "fround"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "log2"

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "sign"

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "atanh"

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "asinh"

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "acosh"

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "trunc"

    goto/16 :goto_2

    :pswitch_8
    const-string v0, "imul"

    goto :goto_0

    :pswitch_9
    const-string v0, "tanh"

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "sinh"

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "log10"

    goto :goto_2

    :pswitch_c
    const-string v0, "log1p"

    goto :goto_2

    :pswitch_d
    const-string v0, "hypot"

    goto :goto_0

    :pswitch_e
    const-string v0, "expm1"

    goto :goto_2

    :pswitch_f
    const-string v0, "cosh"

    goto :goto_2

    :pswitch_10
    const-string v0, "cbrt"

    goto :goto_2

    :pswitch_11
    const-string v0, "tan"

    goto :goto_2

    :pswitch_12
    const-string v0, "sqrt"

    goto :goto_2

    :pswitch_13
    const-string v0, "sin"

    goto :goto_2

    :pswitch_14
    const-string v0, "round"

    goto :goto_2

    :pswitch_15
    const-string v1, "random"

    goto :goto_1

    :pswitch_16
    const-string v0, "pow"

    goto :goto_0

    :pswitch_17
    const-string v0, "min"

    goto :goto_0

    :pswitch_18
    const-string v0, "max"

    goto :goto_0

    :pswitch_19
    const-string v0, "log"

    goto :goto_2

    :pswitch_1a
    const-string v0, "floor"

    goto :goto_2

    :pswitch_1b
    const-string v0, "exp"

    goto :goto_2

    :pswitch_1c
    const-string v0, "cos"

    goto :goto_2

    :pswitch_1d
    const-string v0, "ceil"

    goto :goto_2

    :pswitch_1e
    const-string v0, "atan2"

    :goto_0
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_1f
    const-string v0, "atan"

    goto :goto_2

    :pswitch_20
    const-string v0, "asin"

    goto :goto_2

    :pswitch_21
    const-string v0, "acos"

    goto :goto_2

    :pswitch_22
    const-string v0, "abs"

    goto :goto_2

    :pswitch_23
    const-string v1, "toSource"

    :goto_1
    move-object v0, v1

    const/4 v2, 0x0

    .line 2
    :goto_2
    sget-object v1, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_4

    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    const-string v2, "SQRT2"

    goto :goto_3

    :pswitch_25
    const-wide v0, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    const-string v2, "SQRT1_2"

    goto :goto_3

    :pswitch_26
    const-wide v0, 0x3fdbcb7b1526e50eL    # 0.4342944819032518

    const-string v2, "LOG10E"

    goto :goto_3

    :pswitch_27
    const-wide v0, 0x3ff71547652b82feL    # 1.4426950408889634

    const-string v2, "LOG2E"

    goto :goto_3

    :pswitch_28
    const-wide v0, 0x3fe62e42fefa39efL    # 0.6931471805599453

    const-string v2, "LN2"

    goto :goto_3

    :pswitch_29
    const-wide v0, 0x40026bb1bbb55516L    # 2.302585092994046

    const-string v2, "LN10"

    goto :goto_3

    :pswitch_2a
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-string v2, "PI"

    goto :goto_3

    :pswitch_2b
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-string v2, "E"

    .line 4
    :goto_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method
