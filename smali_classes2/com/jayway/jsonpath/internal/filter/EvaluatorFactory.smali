.class public Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SubsetOfEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$PredicateMatchEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ContainsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$AllEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$NotInEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$InEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EmptyEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SizeEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$GreaterThanEqualsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$GreaterThanEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEqualsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeSafeEqualsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EqualsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeSafeNotEqualsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$NotEqualsEvaluator;,
        Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ExistsEvaluator;
    }
.end annotation


# static fields
.field private static final evaluators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jayway/jsonpath/internal/filter/RelationalOperator;",
            "Lcom/jayway/jsonpath/internal/filter/Evaluator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory;->evaluators:Ljava/util/Map;

    .line 2
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EXISTS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ExistsEvaluator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ExistsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->NE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$NotEqualsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$NotEqualsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TSNE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeSafeNotEqualsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeSafeNotEqualsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EqualsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EqualsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TSEQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeSafeEqualsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeSafeEqualsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->LT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->LTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEqualsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$LessThanEqualsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->GT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$GreaterThanEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$GreaterThanEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->GTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$GreaterThanEqualsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$GreaterThanEqualsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->REGEX:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$RegexpEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->SIZE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SizeEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SizeEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EMPTY:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EmptyEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$EmptyEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->IN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$InEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$InEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->NIN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$NotInEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$NotInEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->ALL:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$AllEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$AllEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->CONTAINS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ContainsEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$ContainsEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->MATCHES:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$PredicateMatchEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$PredicateMatchEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TYPE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->SUBSETOF:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    new-instance v2, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SubsetOfEvaluator;

    invoke-direct {v2, v3}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$SubsetOfEvaluator;-><init>(Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1900()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory;->evaluators:Ljava/util/Map;

    return-object v0
.end method

.method public static createEvaluator(Lcom/jayway/jsonpath/internal/filter/RelationalOperator;)Lcom/jayway/jsonpath/internal/filter/Evaluator;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory;->evaluators:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/internal/filter/Evaluator;

    return-object p0
.end method
