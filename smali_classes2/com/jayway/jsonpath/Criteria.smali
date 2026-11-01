.class public Lcom/jayway/jsonpath/Criteria;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/Predicate;


# instance fields
.field private final criteriaChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/Criteria;",
            ">;"
        }
    .end annotation
.end field

.field private criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

.field private left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

.field private right:Lcom/jayway/jsonpath/internal/filter/ValueNode;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/jayway/jsonpath/Criteria;-><init>(Ljava/util/List;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/Criteria;",
            ">;",
            "Lcom/jayway/jsonpath/internal/filter/ValueNode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/jayway/jsonpath/Criteria;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->criteriaChain:Ljava/util/List;

    .line 4
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Criteria;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/jayway/jsonpath/JsonPathException;

    const-string v1, "Criteria build exception. Complete on criteria before defining next."

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jayway/jsonpath/Criteria;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Criteria;

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/Criteria;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->fromString(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    move-result-object p0

    iput-object p0, v0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 3
    invoke-static {p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p0

    iput-object p0, v0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/jayway/jsonpath/Criteria;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    aget-object v0, p0, v2

    aget-object v1, p0, v3

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-static {v0, v1, p0}, Lcom/jayway/jsonpath/Criteria;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    if-ne v0, v3, :cond_1

    .line 5
    aget-object p0, p0, v2

    const-string v0, "EXISTS"

    const-string v1, "true"

    invoke-static {p0, v0, v1}, Lcom/jayway/jsonpath/Criteria;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v0, "Could not parse criteria"

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Lcom/jayway/jsonpath/InvalidPathException;

    const-string v0, "Criteria can not be null"

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static prefixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private toRelationalExpressionNodes()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jayway/jsonpath/Criteria;->criteriaChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/Criteria;->criteriaChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/Criteria;

    .line 3
    new-instance v3, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;

    iget-object v4, v2, Lcom/jayway/jsonpath/Criteria;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    iget-object v5, v2, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iget-object v2, v2, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-direct {v3, v4, v5, v2}, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;Lcom/jayway/jsonpath/internal/filter/RelationalOperator;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static where(Lcom/jayway/jsonpath/internal/Path;)Lcom/jayway/jsonpath/Criteria;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Criteria;

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createPathNode(Lcom/jayway/jsonpath/internal/Path;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/Criteria;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    return-object v0
.end method

.method public static where(Ljava/lang/String;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/Criteria;

    invoke-static {p0}, Lcom/jayway/jsonpath/Criteria;->prefixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/Criteria;-><init>(Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    return-object v0
.end method


# virtual methods
.method public all(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/jayway/jsonpath/Criteria;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "collection can not be null"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->ALL:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public varargs all([Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/Criteria;->all(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public and(Ljava/lang/String;)Lcom/jayway/jsonpath/Criteria;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/Criteria;->checkComplete()V

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/Criteria;

    iget-object v1, p0, Lcom/jayway/jsonpath/Criteria;->criteriaChain:Ljava/util/List;

    invoke-static {p1}, Lcom/jayway/jsonpath/Criteria;->prefixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/jayway/jsonpath/Criteria;-><init>(Ljava/util/List;Lcom/jayway/jsonpath/internal/filter/ValueNode;)V

    return-object v0
.end method

.method public apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/Criteria;->toRelationalExpressionNodes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;

    .line 2
    invoke-virtual {v1, p1}, Lcom/jayway/jsonpath/internal/filter/RelationalExpressionNode;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->CONTAINS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public empty(Z)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EMPTY:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->TRUE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    :goto_0
    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public eq(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/Criteria;->is(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public exists(Z)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EXISTS:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/Criteria;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->asExistsCheck(Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->left:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public gt(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->GT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public gte(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->GTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public in(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/jayway/jsonpath/Criteria;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "collection can not be null"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->IN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public varargs in([Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/Criteria;->in(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public is(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->EQ:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public lt(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->LT:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public lte(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->LTE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public matches(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->MATCHES:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PredicateNode;-><init>(Lcom/jayway/jsonpath/Predicate;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public ne(Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->NE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public nin(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/jayway/jsonpath/Criteria;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "collection can not be null"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->NIN:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public varargs nin([Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/Criteria;->nin(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public notEmpty()Lcom/jayway/jsonpath/Criteria;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/Criteria;->empty(Z)Lcom/jayway/jsonpath/Criteria;

    move-result-object v0

    return-object v0
.end method

.method public regex(Ljava/util/regex/Pattern;)Lcom/jayway/jsonpath/Criteria;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "pattern can not be null"

    .line 1
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->REGEX:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 3
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public size(I)Lcom/jayway/jsonpath/Criteria;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->SIZE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->toValueNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public subsetof(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/jayway/jsonpath/Criteria;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "collection can not be null"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->SUBSETOF:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method

.method public varargs subsetof([Ljava/lang/Object;)Lcom/jayway/jsonpath/Criteria;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/Criteria;->subsetof(Ljava/util/Collection;)Lcom/jayway/jsonpath/Criteria;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/Criteria;->toRelationalExpressionNodes()Ljava/util/Collection;

    move-result-object v0

    const-string v1, " && "

    invoke-static {v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/Class;)Lcom/jayway/jsonpath/Criteria;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/jayway/jsonpath/Criteria;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/filter/RelationalOperator;->TYPE:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    iput-object v0, p0, Lcom/jayway/jsonpath/Criteria;->criteriaType:Lcom/jayway/jsonpath/internal/filter/RelationalOperator;

    .line 2
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createClassNode(Ljava/lang/Class;)Lcom/jayway/jsonpath/internal/filter/ValueNode$ClassNode;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Criteria;->right:Lcom/jayway/jsonpath/internal/filter/ValueNode;

    return-object p0
.end method
