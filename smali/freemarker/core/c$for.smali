.class Lfreemarker/core/c$for;
.super Lfreemarker/core/abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/abstract;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    new-instance p2, Landroid/support/v4/az1;

    neg-int p1, p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(I)V

    :cond_0
    return-object p2

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Ljava/math/BigDecimal;

    .line 6
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_2

    .line 7
    new-instance p2, Landroid/support/v4/az1;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    :cond_2
    return-object p2

    .line 8
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 9
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_4

    .line 10
    new-instance p1, Landroid/support/v4/az1;

    neg-double v0, v0

    invoke-direct {p1, v0, v1}, Landroid/support/v4/az1;-><init>(D)V

    return-object p1

    :cond_4
    return-object p2

    .line 11
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 12
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 13
    new-instance p2, Landroid/support/v4/az1;

    neg-float p1, p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(F)V

    :cond_6
    return-object p2

    .line 14
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 15
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_8

    .line 16
    new-instance p1, Landroid/support/v4/az1;

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Landroid/support/v4/az1;-><init>(J)V

    return-object p1

    :cond_8
    return-object p2

    .line 17
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 18
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    if-gez p1, :cond_a

    .line 19
    new-instance p2, Landroid/support/v4/az1;

    neg-int p1, p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(I)V

    :cond_a
    return-object p2

    .line 20
    :cond_b
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_d

    .line 21
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-gez p1, :cond_c

    .line 22
    new-instance p2, Landroid/support/v4/az1;

    neg-int p1, p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(I)V

    :cond_c
    return-object p2

    .line 23
    :cond_d
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_f

    .line 24
    check-cast p1, Ljava/math/BigInteger;

    .line 25
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_e

    .line 26
    new-instance p2, Landroid/support/v4/az1;

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    :cond_e
    return-object p2

    .line 27
    :cond_f
    new-instance p2, Landroid/support/v4/vl2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Unsupported number class: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p2
.end method
