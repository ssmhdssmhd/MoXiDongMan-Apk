.class final Lfreemarker/core/ExtendedDecimalFormatParser$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ExtendedDecimalFormatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ExtendedDecimalFormatParser$final;
        }
    .end annotation

    const-string v0, "up"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_0
    const-string v0, "down"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_1
    const-string v0, "ceiling"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_2
    const-string v0, "floor"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_3
    const-string v0, "halfDown"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p2, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_4
    const-string v0, "halfEven"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_5
    const-string v0, "halfUp"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_6
    const-string v0, "unnecessary"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 16
    sget-object p2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 17
    :goto_0
    sget-object v0, Landroid/support/v4/ml2;->if:Lfreemarker/core/_Java6;

    if-eqz v0, :cond_7

    .line 18
    invoke-static {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser;->do(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/math/RoundingMode;)Ljava/math/RoundingMode;

    return-void

    .line 19
    :cond_7
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$final;

    const-string p2, "For setting the rounding mode you need Java 6 or later."

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$final;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_8
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$final;

    const-string p2, "Should be one of: up, down, ceiling, floor, halfDown, halfEven, unnecessary"

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$final;-><init>(Ljava/lang/String;)V

    throw p1
.end method
