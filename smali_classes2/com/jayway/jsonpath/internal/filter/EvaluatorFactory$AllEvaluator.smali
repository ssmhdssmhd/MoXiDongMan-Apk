.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$AllEvaluator;
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
    name = "AllEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$AllEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJsonNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->asValueListNode(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isValueListNode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asValueListNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 7
    invoke-virtual {p1, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;->contains(Lcom/jayway/jsonpath/internal/filter/ValueNode;)Z

    move-result p3

    if-nez p3, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
