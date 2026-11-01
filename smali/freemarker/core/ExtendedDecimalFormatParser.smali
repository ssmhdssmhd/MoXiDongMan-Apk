.class Lfreemarker/core/ExtendedDecimalFormatParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/ExtendedDecimalFormatParser$final;,
        Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;
    }
.end annotation


# static fields
.field private static final abstract:Ljava/lang/String; = "[...]"

.field private static final break:Ljava/lang/String; = "monetaryDecimalSeparator"

.field private static final case:Ljava/lang/String; = "roundingMode"

.field private static final catch:Ljava/lang/String; = "groupingSeparator"

.field private static final class:Ljava/lang/String; = "exponentSeparator"

.field private static final const:Ljava/lang/String; = "minusSign"

.field private static final continue:I = 0xa

.field private static final default:Ljava/lang/String; = "halfDown"

.field private static final else:Ljava/lang/String; = "multipier"

.field private static final extends:Ljava/lang/String; = "halfEven"

.field private static final final:Ljava/lang/String; = "infinity"

.field private static final finally:Ljava/lang/String; = "halfUp"

.field private static final goto:Ljava/lang/String; = "multiplier"

.field private static final import:Ljava/lang/String; = "zeroDigit"

.field private static final native:Ljava/lang/String; = "currencyCode"

.field private static final package:Ljava/lang/String; = "unnecessary"

.field private static final private:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final public:Ljava/lang/String; = "currencySymbol"

.field private static final return:Ljava/lang/String; = "up"

.field private static final static:Ljava/lang/String; = "down"

.field private static final super:Ljava/lang/String; = "nan"

.field private static final switch:Ljava/lang/String; = "ceiling"

.field private static final this:Ljava/lang/String; = "decimalSeparator"

.field private static final throw:Ljava/lang/String; = "percent"

.field private static final throws:Ljava/lang/String; = "floor"

.field private static final while:Ljava/lang/String; = "perMill"


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Ljava/text/DecimalFormatSymbols;

.field private if:I

.field private new:Ljava/math/RoundingMode;

.field private try:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$try;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$try;-><init>()V

    const-string v2, "roundingMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$case;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$case;-><init>()V

    const-string v2, "multiplier"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "multipier"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$else;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$else;-><init>()V

    const-string v2, "decimalSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$goto;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$goto;-><init>()V

    const-string v2, "monetaryDecimalSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$this;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$this;-><init>()V

    const-string v2, "groupingSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$break;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$break;-><init>()V

    const-string v2, "exponentSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$catch;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$catch;-><init>()V

    const-string v2, "minusSign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$class;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$class;-><init>()V

    const-string v2, "infinity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$const;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$const;-><init>()V

    const-string v2, "nan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$do;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$do;-><init>()V

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$if;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$if;-><init>()V

    const-string v2, "perMill"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$for;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$for;-><init>()V

    const-string v2, "zeroDigit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lfreemarker/core/ExtendedDecimalFormatParser$new;

    invoke-direct {v1}, Lfreemarker/core/ExtendedDecimalFormatParser$new;-><init>()V

    const-string v2, "currencyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sput-object v0, Lfreemarker/core/ExtendedDecimalFormatParser;->private:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    .line 3
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p1, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->for:Ljava/text/DecimalFormatSymbols;

    return-void
.end method

.method private break(Ljava/lang/String;Ljava/lang/String;ILfreemarker/core/ExtendedDecimalFormatParser$final;)Ljava/text/ParseException;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is an invalid value for the \""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" parameter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p4}, Lfreemarker/core/ExtendedDecimalFormatParser$final;->access$300(Lfreemarker/core/ExtendedDecimalFormatParser$final;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private case()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    .line 2
    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3b

    const/4 v6, 0x2

    if-ge v0, v1, :cond_4

    .line 3
    iget-object v7, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v5, :cond_0

    if-nez v3, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_0
    const/16 v5, 0x27

    if-ne v7, v5, :cond_3

    if-eqz v3, :cond_2

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_1

    .line 4
    iget-object v7, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v4, v6, :cond_5

    .line 5
    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    goto :goto_4

    .line 6
    :cond_5
    iget-object v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    add-int/lit8 v3, v0, -0x1

    goto :goto_3

    :cond_6
    move v3, v0

    .line 7
    :goto_3
    iget-object v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-ge v0, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 8
    :cond_7
    iput v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    return-object v2
.end method

.method private catch(Ljava/lang/String;I)Ljava/text/ParseException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported parameter name, "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". The supported names are: "

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object p1, Lfreemarker/core/ExtendedDecimalFormatParser;->private:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method private class()Ljava/text/DecimalFormat;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->case()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->super()V

    .line 3
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->final()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/text/DecimalFormat;

    iget-object v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->for:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->new:Ljava/math/RoundingMode;

    if-eqz v0, :cond_1

    .line 6
    sget-object v3, Landroid/support/v4/ml2;->if:Lfreemarker/core/_Java6;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v3, v2, v0}, Lfreemarker/core/_Java6;->setRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Setting rounding mode needs Java 6 or later"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->try:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->setMultiplier(I)V

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    .line 11
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    :catch_1
    :cond_3
    throw v2
.end method

.method public static const(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/ExtendedDecimalFormatParser;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/ExtendedDecimalFormatParser;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-direct {v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->class()Ljava/text/DecimalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/math/RoundingMode;)Ljava/math/RoundingMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->new:Ljava/math/RoundingMode;

    return-object p1
.end method

.method private else()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    const-string v5, "The "

    if-ge v4, v0, :cond_7

    .line 4
    iget-object v6, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x27

    const/4 v7, 0x1

    if-eq v4, v6, :cond_1

    const/16 v6, 0x22

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_6

    .line 5
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 6
    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ne v1, v2, :cond_2

    move v2, v4

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " character can only be used for quoting values, but it was in the middle of an non-quoted value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    if-ne v4, v2, :cond_6

    .line 8
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_4

    iget-object v5, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_4

    .line 9
    iget v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/2addr v3, v7

    iput v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    const/4 v3, 0x1

    goto :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    add-int/2addr v1, v7

    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/2addr v1, v7

    iput v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-eqz v3, :cond_5

    .line 12
    invoke-direct {p0, v0, v2}, Lfreemarker/core/ExtendedDecimalFormatParser;->throw(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    .line 13
    :cond_6
    :goto_2
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    goto :goto_0

    :cond_7
    :goto_3
    if-nez v2, :cond_9

    .line 14
    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    .line 15
    :cond_9
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " quotation wasn\'t closed when the end of the source was reached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private final()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    .line 4
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->try()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->super()V

    const/16 v4, 0x3d

    .line 6
    invoke-direct {p0, v4}, Lfreemarker/core/ExtendedDecimalFormatParser;->new(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->super()V

    .line 8
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    .line 9
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->else()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 10
    iget v6, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    .line 11
    sget-object v7, Lfreemarker/core/ExtendedDecimalFormatParser;->private:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;

    if-nez v7, :cond_2

    const-string v1, "currencySymbol"

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v5

    goto :goto_1

    .line 13
    :cond_1
    invoke-direct {p0, v3, v2}, Lfreemarker/core/ExtendedDecimalFormatParser;->catch(Ljava/lang/String;I)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 14
    :cond_2
    :try_start_0
    invoke-interface {v7, p0, v5}, Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;->handle(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lfreemarker/core/ExtendedDecimalFormatParser$final; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_1
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->super()V

    const/16 v2, 0x2c

    .line 16
    invoke-direct {p0, v2}, Lfreemarker/core/ExtendedDecimalFormatParser;->new(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-direct {p0}, Lfreemarker/core/ExtendedDecimalFormatParser;->super()V

    goto :goto_0

    .line 18
    :cond_3
    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ne v2, v0, :cond_5

    if-eqz v1, :cond_4

    .line 19
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->for:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    if-eq v2, v6, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "parameter separator whitespace or comma"

    .line 20
    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->this(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 21
    invoke-direct {p0, v3, v5, v4, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->break(Ljava/lang/String;Ljava/lang/String;ILfreemarker/core/ExtendedDecimalFormatParser$final;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_7
    const-string v0, "value"

    .line 22
    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->this(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "\"=\""

    .line 23
    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->this(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_9
    const-string v0, "name"

    .line 24
    invoke-direct {p0, v0}, Lfreemarker/core/ExtendedDecimalFormatParser;->this(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static synthetic for(Lfreemarker/core/ExtendedDecimalFormatParser;)Ljava/text/DecimalFormatSymbols;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->for:Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method private goto(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic if(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->try:Ljava/lang/Integer;

    return-object p1
.end method

.method private new(C)Z
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    iget p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    :goto_0
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lfreemarker/core/ExtendedDecimalFormatParser;->goto(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private this(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, 0xa

    if-lt v2, v0, :cond_1

    .line 4
    iget-object v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_1
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a(n) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at position "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0-based), but "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const-string p1, "reached the end of the input."

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private throw(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x27

    if-ne p2, v0, :cond_0

    const-string p2, "\'\'"

    const-string v0, "\'"

    goto :goto_0

    :cond_0
    const-string p2, "\"\""

    const-string v0, "\""

    .line 1
    :goto_0
    invoke-static {p1, p2, v0}, Lfreemarker/template/utility/super;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private try()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 3
    :goto_0
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    if-ge v4, v0, :cond_3

    .line 4
    iget-object v5, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    iget v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    add-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 8
    iget-object v0, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->do:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/ExtendedDecimalFormatParser;->if:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method
