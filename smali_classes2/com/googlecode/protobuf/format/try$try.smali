.class final Lcom/googlecode/protobuf/format/try$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/protobuf/format/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# static fields
.field private static final break:Ljava/util/regex/Pattern;

.field private static final catch:Ljava/util/regex/Pattern;

.field private static final class:Ljava/util/regex/Pattern;

.field private static final const:Ljava/util/regex/Pattern;

.field private static final this:Ljava/util/regex/Pattern;


# instance fields
.field private case:I

.field private final do:Ljava/lang/CharSequence;

.field private else:I

.field private for:Ljava/lang/String;

.field private goto:I

.field private final if:Ljava/util/regex/Matcher;

.field private new:I

.field private try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(\\s|(#.*$))++"

    const/16 v1, 0x8

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/protobuf/format/try$try;->this:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/protobuf/format/try$try;->break:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?"

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/protobuf/format/try$try;->catch:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?f?"

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/protobuf/format/try$try;->class:Ljava/util/regex/Pattern;

    const-string v0, "nanf?"

    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/protobuf/format/try$try;->const:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    .line 4
    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->try:I

    .line 5
    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->case:I

    .line 6
    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->else:I

    .line 7
    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->goto:I

    .line 8
    iput-object p1, p0, Lcom/googlecode/protobuf/format/try$try;->do:Ljava/lang/CharSequence;

    .line 9
    sget-object v0, Lcom/googlecode/protobuf/format/try$try;->this:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    .line 10
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/try$try;->public()V

    .line 11
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/googlecode/protobuf/format/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/protobuf/format/try$try;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    return-object p1
.end method

.method private public()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/googlecode/protobuf/format/try$try;->this:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 2
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method

.method private super(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    return-object p1
.end method

.method private try(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_0
    const/16 v0, 0x22

    if-eq v1, v0, :cond_2

    const/16 v0, 0x27

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Expected string."

    .line 2
    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/googlecode/protobuf/format/try;->volatile(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/googlecode/protobuf/format/try$if; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "String missing ending quote."

    .line 11
    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public break()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/googlecode/protobuf/format/try;->static(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->super(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public case()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/try$try;->catch:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 7
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 8
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->final(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->new()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public class()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/googlecode/protobuf/format/try;->throws(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->super(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public const()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/googlecode/protobuf/format/try;->default(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->super(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public else()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/try$try;->class:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    if-eqz v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    return v0

    .line 4
    :cond_1
    sget-object v0, Lcom/googlecode/protobuf/format/try$try;->const:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->final(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public for()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "Expected \"true\" or \"false\"."

    .line 5
    invoke-virtual {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public goto()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2
    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x5f

    if-ne v1, v2, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "Expected identifier."

    .line 3
    invoke-virtual {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    return-object v0
.end method

.method public if(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->return(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/googlecode/protobuf/format/try$try;->import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object p1

    throw p1
.end method

.method public import(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/try$new;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/googlecode/protobuf/format/try$try;->try:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/googlecode/protobuf/format/try$try;->case:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/googlecode/protobuf/format/try$new;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public native(Ljava/lang/String;)Lcom/googlecode/protobuf/format/try$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/try$new;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/googlecode/protobuf/format/try$try;->else:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/googlecode/protobuf/format/try$try;->goto:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/googlecode/protobuf/format/try$new;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public new()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->try(Ljava/util/List;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->try(Ljava/util/List;)V

    goto :goto_0
.end method

.method public return(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public this()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/try$new;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/googlecode/protobuf/format/try;->return(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/protobuf/format/try$try;->while()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/try$try;->super(Ljava/lang/NumberFormatException;)Lcom/googlecode/protobuf/format/try$new;

    move-result-object v0

    throw v0
.end method

.method public throw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-gt v2, v0, :cond_1

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public while()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/googlecode/protobuf/format/try$try;->try:I

    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->else:I

    .line 2
    iget v0, p0, Lcom/googlecode/protobuf/format/try$try;->case:I

    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->goto:I

    .line 3
    :goto_0
    iget v0, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->do:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/googlecode/protobuf/format/try$try;->try:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->try:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->case:I

    goto :goto_1

    .line 7
    :cond_0
    iget v0, p0, Lcom/googlecode/protobuf/format/try$try;->case:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->case:I

    .line 8
    :goto_1
    iget v0, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    goto :goto_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/googlecode/protobuf/format/try$try;->break:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 12
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->do:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->for:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$try;->if:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/googlecode/protobuf/format/try$try;->new:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 17
    :goto_2
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/try$try;->public()V

    :goto_3
    return-void
.end method
