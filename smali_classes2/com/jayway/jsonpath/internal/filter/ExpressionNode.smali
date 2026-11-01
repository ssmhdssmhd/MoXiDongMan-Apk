.class public abstract Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/Predicate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExpressionNode(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/LogicalOperator;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
    .locals 2

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->AND:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    if-ne p1, v0, :cond_1

    .line 2
    instance-of p1, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->getOperator()Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->append(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalAnd(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of p1, p0, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->getOperator()Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    move-result-object v0

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/LogicalOperator;->OR:Lcom/jayway/jsonpath/internal/filter/LogicalOperator;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1, p2}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->append(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-static {p2, p0}, Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;->createLogicalOr(Lcom/jayway/jsonpath/internal/filter/ExpressionNode;Lcom/jayway/jsonpath/internal/filter/ExpressionNode;)Lcom/jayway/jsonpath/internal/filter/LogicalExpressionNode;

    move-result-object p0

    return-object p0
.end method
