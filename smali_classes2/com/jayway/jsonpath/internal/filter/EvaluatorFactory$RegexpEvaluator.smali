.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/filter/Evaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexpEvaluator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;-><init>()V

    return-void
.end method

.method private getInput(Lcom/jayway/jsonpath/internal/filter/ValueNode;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isStringNode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isNumberNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isBooleanNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asBooleanNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private matches(Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;->getCompiledPattern()Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isPatternNode()Z

    move-result p3

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isPatternNode()Z

    move-result v0

    xor-int/2addr p3, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isPatternNode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPatternNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;->getInput(Lcom/jayway/jsonpath/internal/filter/ValueNode;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;->matches(Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPatternNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;->getInput(Lcom/jayway/jsonpath/internal/filter/ValueNode;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;->matches(Lcom/jayway/jsonpath/internal/filter/ValueNode$PatternNode;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
