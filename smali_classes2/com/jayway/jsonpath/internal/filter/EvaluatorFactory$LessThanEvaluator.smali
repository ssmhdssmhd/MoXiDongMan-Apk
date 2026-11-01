.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEvaluator;
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
    name = "LessThanEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isNumberNode()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isNumberNode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asNumberNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->getNumber()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asNumberNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;->getNumber()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isStringNode()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isStringNode()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v1
.end method
