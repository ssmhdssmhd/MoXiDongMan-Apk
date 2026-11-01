.class Lfreemarker/core/ExtendedDecimalFormatParser$final;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ExtendedDecimalFormatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "final"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser$final;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$300(Lfreemarker/core/ExtendedDecimalFormatParser$final;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/ExtendedDecimalFormatParser$final;->message:Ljava/lang/String;

    return-object p0
.end method
