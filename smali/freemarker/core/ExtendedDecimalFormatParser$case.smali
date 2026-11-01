.class final Lfreemarker/core/ExtendedDecimalFormatParser$case;
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
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser;->if(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$final;

    const-string p2, "Malformed integer."

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$final;-><init>(Ljava/lang/String;)V

    throw p1
.end method
