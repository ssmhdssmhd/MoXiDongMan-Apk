.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$PredicateMatchEvaluator;
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
    name = "PredicateMatchEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$PredicateMatchEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPredicateNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;->getPredicate()Lcom/jayway/jsonpath/Predicate;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    return p1
.end method
