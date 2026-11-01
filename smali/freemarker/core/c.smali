.class Lfreemarker/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/c$throw;,
        Lfreemarker/core/c$super;,
        Lfreemarker/core/c$final;,
        Lfreemarker/core/c$class;,
        Lfreemarker/core/c$catch;,
        Lfreemarker/core/c$break;,
        Lfreemarker/core/c$this;,
        Lfreemarker/core/c$goto;,
        Lfreemarker/core/c$else;,
        Lfreemarker/core/c$case;,
        Lfreemarker/core/c$try;,
        Lfreemarker/core/c$new;,
        Lfreemarker/core/c$for;,
        Lfreemarker/core/c$while;,
        Lfreemarker/core/c$const;,
        Lfreemarker/core/c$if;
    }
.end annotation


# static fields
.field private static final do:Ljava/math/BigDecimal;

.field private static final for:Ljava/math/BigDecimal;

.field private static final if:Ljava/math/BigDecimal;

.field private static final new:Ljava/math/BigInteger;

.field private static final try:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/c;->do:Ljava/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    sput-object v2, Lfreemarker/core/c;->if:Ljava/math/BigDecimal;

    const-wide v2, 0x7fffffffffffffffL

    .line 3
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    sput-object v4, Lfreemarker/core/c;->for:Ljava/math/BigDecimal;

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/c;->new:Ljava/math/BigInteger;

    .line 5
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/c;->try:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/c;->do:Ljava/math/BigDecimal;

    return-object v0
.end method

.method private static final for(Ljava/lang/Number;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Double;

    const-string v1, "Number doesn\'t fit into a 64 bit signed integer (long): "

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p0, v5, v7

    if-gtz p0, :cond_0

    const-wide/high16 v7, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double p0, v5, v7

    if-ltz p0, :cond_0

    double-to-long v0, v5

    return-wide v0

    .line 3
    :cond_0
    new-instance p0, Landroid/support/v4/vl2;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x5f000000

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_2

    const/high16 v0, -0x21000000

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_2

    float-to-long v0, p0

    return-wide v0

    .line 7
    :cond_2
    new-instance v0, Landroid/support/v4/vl2;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-direct {v0, v3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    .line 10
    check-cast p0, Ljava/math/BigDecimal;

    const/4 v0, 0x4

    invoke-virtual {p0, v4, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 11
    sget-object v0, Lfreemarker/core/c;->for:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_4

    sget-object v0, Lfreemarker/core/c;->if:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_4
    new-instance v0, Landroid/support/v4/vl2;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p0, v3, v2

    invoke-direct {v0, v3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 14
    :cond_5
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_7

    .line 15
    check-cast p0, Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lfreemarker/core/c;->try:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Lfreemarker/core/c;->new:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 17
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 18
    :cond_6
    new-instance v0, Landroid/support/v4/vl2;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p0, v3, v2

    invoke-direct {v0, v3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 19
    :cond_7
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    new-instance v0, Landroid/support/v4/vl2;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Unsupported number type: "

    aput-object v3, v1, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 21
    :cond_9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic if(Ljava/lang/Number;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/core/c;->for(Ljava/lang/Number;)J

    move-result-wide v0

    return-wide v0
.end method
