.class final Lfreemarker/core/ExtendedDecimalFormatParser$else;
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ExtendedDecimalFormatParser$final;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/core/ExtendedDecimalFormatParser;->for(Lfreemarker/core/ExtendedDecimalFormatParser;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$final;

    const-string p2, "Must contain exactly 1 character."

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$final;-><init>(Ljava/lang/String;)V

    throw p1
.end method
