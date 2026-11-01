.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternNode"
.end annotation


# instance fields
.field private final compiledPattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v2, "/i"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->pattern:Ljava/lang/String;

    .line 8
    invoke-static {p1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->compiledPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->pattern:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->compiledPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public asPatternNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->compiledPattern:Ljava/util/regex/Pattern;

    iget-object p1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->compiledPattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public getCompiledPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->compiledPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public isPatternNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->compiledPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const-string v0, "i"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->pattern:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public type(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/Predicate$PredicateContext;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p1
.end method
