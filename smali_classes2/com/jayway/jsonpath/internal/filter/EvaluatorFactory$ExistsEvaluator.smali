.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ExistsEvaluator;
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
    name = "ExistsEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ExistsEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isBooleanNode()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isBooleanNode()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/JsonPathException;

    const-string p2, "Failed to evaluate exists expression"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asBooleanNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;->getBoolean()Z

    move-result p1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asBooleanNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;->getBoolean()Z

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
