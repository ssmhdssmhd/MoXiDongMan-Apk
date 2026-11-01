.class final Lcom/google/protobuf/j1$else;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "else"
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

    sput-object v0, Lcom/google/protobuf/j1$else;->this:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j1$else;->break:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?"

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j1$else;->catch:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?f?"

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j1$else;->class:Ljava/util/regex/Pattern;

    const-string v0, "nanf?"

    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j1$else;->const:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/protobuf/j1$else;->new:I

    .line 4
    iput v0, p0, Lcom/google/protobuf/j1$else;->try:I

    .line 5
    iput v0, p0, Lcom/google/protobuf/j1$else;->case:I

    .line 6
    iput v0, p0, Lcom/google/protobuf/j1$else;->else:I

    .line 7
    iput v0, p0, Lcom/google/protobuf/j1$else;->goto:I

    .line 8
    iput-object p1, p0, Lcom/google/protobuf/j1$else;->do:Ljava/lang/CharSequence;

    .line 9
    sget-object v0, Lcom/google/protobuf/j1$else;->this:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/j1$else;->extends()V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/google/protobuf/j1$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/j1$else;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private case(Ljava/util/List;)V
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
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p1

    throw p1

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/j1;->d(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/j1$if; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "String missing ending quote."

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p1

    throw p1
.end method

.method public static synthetic do(Lcom/google/protobuf/j1$else;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    return-object p0
.end method

.method private extends()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/j1$else;->this:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method

.method private public(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Couldn\'t parse integer: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p1

    return-object p1
.end method

.method private super(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Couldn\'t parse number: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->this()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/j1$for; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public break()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/j1;->native(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->public(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0
.end method

.method public catch()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/j1;->public(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->public(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0
.end method

.method public class()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->try()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public const()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/j1;->static(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->public(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0
.end method

.method public continue()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->catch()J
    :try_end_0
    .catch Lcom/google/protobuf/j1$for; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public default(Ljava/lang/String;)Lcom/google/protobuf/j1$for;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$for;

    iget v1, p0, Lcom/google/protobuf/j1$else;->else:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/j1$else;->goto:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/protobuf/j1$for;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public else()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j1$else;->catch:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->super(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0
.end method

.method public final()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/j1;->switch(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->public(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0
.end method

.method public finally(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public for(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->finally(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object p1

    throw p1
.end method

.method public goto()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j1$else;->class:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    if-eqz v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    return v0

    .line 4
    :cond_1
    sget-object v0, Lcom/google/protobuf/j1$else;->const:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->super(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

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

.method public import()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1$else;->goto:I

    return v0
.end method

.method public interface(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/j1$goto;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$goto;

    iget v1, p0, Lcom/google/protobuf/j1$else;->else:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/j1$else;->goto:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/protobuf/j1$goto;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public native()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1$else;->else:I

    return v0
.end method

.method public new()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "True"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "t"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "1"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "False"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "f"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v1, "0"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected \"true\" or \"false\". Found \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    const/4 v0, 0x0

    return v0

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    const/4 v0, 0x1

    return v0
.end method

.method public package()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->else()D
    :try_end_0
    .catch Lcom/google/protobuf/j1$for; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public private()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->goto()F
    :try_end_0
    .catch Lcom/google/protobuf/j1$for; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public return(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

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

.method public strictfp()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->class()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/j1$for; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public switch()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1$else;->try:I

    iput v0, p0, Lcom/google/protobuf/j1$else;->else:I

    .line 2
    iget v0, p0, Lcom/google/protobuf/j1$else;->case:I

    iput v0, p0, Lcom/google/protobuf/j1$else;->goto:I

    .line 3
    :goto_0
    iget v0, p0, Lcom/google/protobuf/j1$else;->new:I

    iget-object v1, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->do:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/j1$else;->new:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/google/protobuf/j1$else;->try:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/j1$else;->try:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/protobuf/j1$else;->case:I

    goto :goto_1

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/protobuf/j1$else;->case:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/j1$else;->case:I

    .line 8
    :goto_1
    iget v0, p0, Lcom/google/protobuf/j1$else;->new:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/j1$else;->new:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    goto :goto_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/j1$else;->break:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->do:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/j1$else;->new:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->if:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/google/protobuf/j1$else;->new:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 17
    :goto_2
    invoke-direct {p0}, Lcom/google/protobuf/j1$else;->extends()V

    :goto_3
    return-void
.end method

.method public this()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_1
    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected identifier. Found \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j1$else;->throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->switch()V

    return-object v0
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1$else;->case:I

    return v0
.end method

.method public throws(Ljava/lang/String;)Lcom/google/protobuf/j1$for;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$for;

    iget v1, p0, Lcom/google/protobuf/j1$else;->try:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/protobuf/j1$else;->case:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/protobuf/j1$for;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public try()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->case(Ljava/util/List;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/j1$else;->for:Ljava/lang/String;

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
    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$else;->case(Ljava/util/List;)V

    goto :goto_0
.end method

.method public volatile()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/j1$else;->final()J
    :try_end_0
    .catch Lcom/google/protobuf/j1$for; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public while()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/j1$else;->try:I

    return v0
.end method
