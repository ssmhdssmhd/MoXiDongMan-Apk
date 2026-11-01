.class public Lfreemarker/core/else$do;
.super Lfreemarker/core/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/else;-><init>()V

    return-void
.end method

.method private super(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v1, p0, Lfreemarker/core/else;->do:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    iget v1, p0, Lfreemarker/core/else;->for:I

    invoke-virtual {p1, p2, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public case(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 3
    rem-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public catch(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .line 1
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    iget v0, p0, Lfreemarker/core/else;->if:I

    if-le p2, v0, :cond_0

    .line 5
    iget p2, p0, Lfreemarker/core/else;->for:I

    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/else;->if(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public new(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 10

    .line 1
    invoke-static {p1}, Lfreemarker/template/utility/catch;->do(Ljava/lang/Number;)I

    move-result v0

    .line 2
    invoke-static {p2}, Lfreemarker/template/utility/catch;->do(Ljava/lang/Number;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v1, :cond_2

    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    return v2

    .line 3
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_a

    .line 4
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 5
    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1

    .line 6
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 7
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 8
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 9
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 10
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 11
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    .line 12
    :cond_7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 13
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1

    .line 14
    :cond_8
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_9

    .line 15
    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p1, p2}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result p1

    return p1

    .line 16
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a

    .line 17
    check-cast p1, Ljava/lang/Short;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p1, p2}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p1

    return p1

    .line 18
    :cond_a
    instance-of v0, p1, Ljava/lang/Double;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz v0, :cond_d

    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 21
    invoke-static {p2}, Lfreemarker/template/utility/catch;->if(Ljava/lang/Number;)Z

    move-result v7

    if-eqz v7, :cond_c

    cmpl-double p1, v5, v1

    if-nez p1, :cond_b

    const/4 v3, -0x1

    :cond_b
    return v3

    .line 22
    :cond_c
    instance-of v7, p2, Ljava/lang/Float;

    if-eqz v7, :cond_d

    .line 23
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 24
    :cond_d
    instance-of v5, p1, Ljava/lang/Float;

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    if-eqz v5, :cond_10

    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 26
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 27
    invoke-static {p2}, Lfreemarker/template/utility/catch;->if(Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_f

    cmpl-float p1, v7, v6

    if-nez p1, :cond_e

    const/4 v3, -0x1

    :cond_e
    return v3

    .line 28
    :cond_f
    instance-of v8, p2, Ljava/lang/Double;

    if-eqz v8, :cond_10

    float-to-double v0, v7

    .line 29
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 30
    :cond_10
    instance-of v7, p2, Ljava/lang/Double;

    if-eqz v7, :cond_13

    .line 31
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 32
    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 33
    invoke-static {p1}, Lfreemarker/template/utility/catch;->if(Ljava/lang/Number;)Z

    move-result v9

    if-eqz v9, :cond_12

    cmpl-double p1, v7, v1

    if-nez p1, :cond_11

    goto :goto_1

    :cond_11
    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_12
    if-eqz v5, :cond_13

    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 35
    :cond_13
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_16

    .line 36
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 38
    invoke-static {p1}, Lfreemarker/template/utility/catch;->if(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_15

    cmpl-float p1, v1, v6

    if-nez p1, :cond_14

    goto :goto_2

    :cond_14
    const/4 v3, -0x1

    :goto_2
    return v3

    :cond_15
    if-eqz v0, :cond_16

    .line 39
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    float-to-double v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 40
    :cond_16
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public try(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2}, Lfreemarker/core/else$do;->super(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method
