.class final Lfreemarker/core/ExtendedDecimalFormatParser$new;
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ExtendedDecimalFormatParser$final;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/ExtendedDecimalFormatParser;->for(Lfreemarker/core/ExtendedDecimalFormatParser;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    return-void

    .line 3
    :catch_0
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$final;

    const-string p2, "Not a known ISO 4217 code."

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$final;-><init>(Ljava/lang/String;)V

    throw p1
.end method
