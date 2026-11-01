.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EmptyEvaluator;
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
    name = "EmptyEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EmptyEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isStringNode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asStringNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;->isEmpty()Z

    move-result p1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asBooleanNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;->getBoolean()Z

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJsonNode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isEmpty(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asBooleanNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;->getBoolean()Z

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method
