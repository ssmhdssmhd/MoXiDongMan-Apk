.class public Lfreemarker/core/else$if;
.super Lfreemarker/core/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final break:I = 0x4

.field private static final case:I = 0x0

.field private static final catch:I = 0x5

.field private static final class:Ljava/util/Map;

.field private static final else:I = 0x1

.field private static final goto:I = 0x2

.field private static final this:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/core/else$if;->super()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/core/else$if;->class:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/else;-><init>()V

    return-void
.end method

.method private static import(Ljava/lang/Number;)Ljava/math/BigInteger;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static super()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, Ljava/math/BigInteger;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v1, Ljava/math/BigDecimal;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static throw(Ljava/lang/Number;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lfreemarker/core/else$if;->class:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    nop

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Landroid/support/v4/nl2;

    const-string v0, "The Number object was null."

    invoke-direct {p0, v0}, Landroid/support/v4/nl2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unknown number type "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/support/v4/nl2;-><init>([Ljava/lang/Object;)V

    throw v0
.end method

.method private static while(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/core/else$if;->throw(Ljava/lang/Number;)I

    move-result p0

    .line 2
    invoke-static {p1}, Lfreemarker/core/else$if;->throw(Ljava/lang/Number;)I

    move-result p1

    if-le p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_3

    :cond_1
    if-ge p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p1

    :goto_1
    if-eq p0, v1, :cond_3

    if-ne p0, v2, :cond_6

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    if-ge p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move p0, p1

    :goto_2
    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    return v1

    :cond_6
    :goto_3
    return v0
.end method


# virtual methods
.method public case(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/else$if;->while(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/nl2;

    const-string p2, "Can\'t calculate remainder on BigDecimals"

    invoke-direct {p1, p2}, Landroid/support/v4/nl2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    rem-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    rem-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 10
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    rem-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public catch(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/else$if;->while(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 7
    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_5

    const-wide/16 v0, -0x1

    xor-long/2addr v0, v2

    xor-long/2addr v0, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_5

    .line 13
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1

    .line 15
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int v0, p1, p2

    xor-int v1, v0, p1

    if-gez v1, :cond_7

    xor-int/lit8 v1, p2, -0x1

    xor-int/2addr v1, v0

    if-gez v1, :cond_7

    int-to-long v0, p1

    int-to-long p1, p2

    sub-long/2addr v0, p1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public else(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/else$if;->while(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    iget v0, p0, Lfreemarker/core/else;->if:I

    if-le p2, v0, :cond_0

    iget p2, p0, Lfreemarker/core/else;->for:I

    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_0
    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 7
    :cond_2
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 8
    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_7

    .line 14
    div-long v0, v4, v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_7
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1
    return-object p1

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    mul-int v0, p1, p2

    if-eqz p1, :cond_a

    .line 19
    div-int v1, v0, p1

    if-ne v1, p2, :cond_9

    goto :goto_2

    :cond_9
    int-to-long v0, p1

    int-to-long p1, p2

    mul-long v0, v0, p1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    .line 21
    :cond_a
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 1
    invoke-static {p1}, Lfreemarker/core/else;->if(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/c81;->if(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public for(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/else$if;->while(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 7
    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_5

    xor-long v0, v4, v2

    cmp-long v2, v0, v6

    if-gez v2, :cond_5

    .line 13
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1

    .line 15
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int v0, p1, p2

    xor-int v1, v0, p1

    if-gez v1, :cond_7

    xor-int v1, v0, p2

    if-gez v1, :cond_7

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    .line 18
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    .line 19
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public new(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/else$if;->while(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 7
    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    cmpg-double v0, v4, p1

    if-gez v0, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    cmpl-double v0, v4, p1

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 11
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 12
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_6

    const/4 v1, -0x1

    goto :goto_1

    :cond_6
    cmpl-float p1, p1, p2

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 13
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 14
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    cmp-long v0, v4, p1

    if-gez v0, :cond_9

    const/4 v1, -0x1

    goto :goto_2

    :cond_9
    cmp-long v0, v4, p1

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 15
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_c

    const/4 v1, -0x1

    goto :goto_3

    :cond_c
    if-ne p1, p2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v1, 0x1

    :goto_3
    return v1
.end method

.method public try(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/else$if;->while(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lfreemarker/core/else;->do(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    iget v1, p0, Lfreemarker/core/else;->do:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8
    iget v1, p0, Lfreemarker/core/else;->for:I

    invoke-virtual {p1, p2, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 10
    :cond_1
    invoke-static {p1}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lfreemarker/core/else$if;->import(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 13
    aget-object v1, v0, v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 14
    aget-object p1, v0, p1

    return-object p1

    .line 15
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 16
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 17
    iget p2, p0, Lfreemarker/core/else;->do:I

    iget v1, p0, Lfreemarker/core/else;->for:I

    invoke-virtual {v0, p1, p2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 21
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 22
    rem-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 23
    div-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_6
    long-to-double v0, v0

    long-to-double p1, p1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 25
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 26
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 27
    rem-int v0, p1, p2

    if-nez v0, :cond_8

    .line 28
    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8
    int-to-double v0, p1

    int-to-double p1, p2

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
