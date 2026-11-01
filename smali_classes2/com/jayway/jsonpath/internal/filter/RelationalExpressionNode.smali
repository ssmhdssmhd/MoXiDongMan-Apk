.class public Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;
.super Lcom/jayway/jsonpath/internal/filter/ExpressionNode;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

.field private final relationalOperator:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field private final right:Lcom/jayway/jsonpath/internal/filter/ValueNode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/RelationalOperator;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ExpressionNode;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->relationalOperator:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 4
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 5
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ExpressionNode {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 3
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isPathNode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->evaluate(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object v0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->isPathNode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->evaluate(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object v1

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->relationalOperator:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    invoke-static {v2}, Lcom/jayway/jsonpath/internal/filter/EvaluatorFactory;->createEvaluator(Lcom/jayway/jsonpath/internal/filter/RelationalOperator;)Lcom/jayway/jsonpath/internal/filter/Evaluator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2, v0, v1, p1}, Lcom/jayway/jsonpath/internal/filter/Evaluator;->evaluate(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->relationalOperator:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    sget-object v1, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EXISTS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->relationalOperator:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
