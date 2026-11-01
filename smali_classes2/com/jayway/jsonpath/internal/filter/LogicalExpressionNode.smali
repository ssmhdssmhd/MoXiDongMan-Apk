.class public Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
.super Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
.source "SourceFile"


# instance fields
.field public chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/filter/ExpressionNode;",
            ">;"
        }
    .end annotation
.end field

.field private final operator:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->operator:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    return-void
.end method

.method private constructor <init>(Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/internal/filter/LogicalOperator;",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/internal/filter/ExpressionNode;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->operator:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    return-void
.end method

.method public static createLogicalAnd(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-direct {v0, p0, v1, p1}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)V

    return-object v0
.end method

.method public static createLogicalAnd(Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/internal/filter/ExpressionNode;",
            ">;)",
            "Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-direct {v0, v1, p0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static createLogicalNot(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
    .locals 3

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->NOT:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)V

    return-object v0
.end method

.method public static createLogicalOr(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-direct {v0, p0, v1, p1}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)V

    return-object v0
.end method

.method public static createLogicalOr(Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/internal/filter/ExpressionNode;",
            ">;)",
            "Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-direct {v0, v1, p0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public and(Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalAnd(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object p1

    return-object p1
.end method

.method public append(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->operator:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    .line 3
    invoke-interface {v1, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    return v3

    .line 4
    :cond_2
    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    if-ne v0, v1, :cond_5

    .line 5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    .line 6
    invoke-interface {v1, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_4
    return v2

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;

    .line 8
    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public getOperator()Lcom/jayway/jsonpath/internal/filter/LogicalOperator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->operator:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    return-object v0
.end method

.method public or(Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalOr(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->operator:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    invoke-virtual {v3}, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->getOperatorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->chain:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/jayway/jsonpath/internal/Utils;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
