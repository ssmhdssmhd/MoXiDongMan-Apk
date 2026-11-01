.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EqualsEvaluator;
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
    name = "EqualsEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EqualsEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJsonNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isJsonNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->equals(Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
