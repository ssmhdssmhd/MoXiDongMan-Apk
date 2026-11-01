.class final Lfreemarker/core/ExtendedDecimalFormatParser$break;
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

    .line 1
    sget-object v0, Landroid/support/v4/ml2;->if:Lfreemarker/core/_Java6;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/ExtendedDecimalFormatParser;->for(Lfreemarker/core/ExtendedDecimalFormatParser;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lfreemarker/core/_Java6;->setExponentSeparator(Ljava/text/DecimalFormatSymbols;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$final;

    const-string p2, "For setting the exponent separator you need Java 6 or later."

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$final;-><init>(Ljava/lang/String;)V

    throw p1
.end method
