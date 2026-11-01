.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SubsetOfEvaluator;
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
    name = "SubsetOfEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SubsetOfEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJsonNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->asValueListNode(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isUndefinedNode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    move-result-object p2

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJsonNode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->asValueListNode(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isUndefinedNode()Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    move-result-object p1

    .line 11
    :goto_1
    invoke-virtual {p1, p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;->subsetof(Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;)Z

    move-result p1

    return p1
.end method
