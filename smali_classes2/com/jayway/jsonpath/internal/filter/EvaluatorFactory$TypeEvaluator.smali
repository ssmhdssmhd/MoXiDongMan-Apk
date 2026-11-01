.class Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeEvaluator;
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
    name = "TypeEvaluator"
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
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory$TypeEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asClassNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;->getClazz()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->type(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
