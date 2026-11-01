.class public Lcom/jayway/jsonpath/internal/path/PredicatePathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# instance fields
.field private final predicates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jayway/jsonpath/Predicate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jayway/jsonpath/Predicate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->predicates:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->predicates:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->documentEvalCache()Ljava/util/HashMap;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Ljava/util/HashMap;)V

    .line 2
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->predicates:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jayway/jsonpath/Predicate;

    const/4 p3, 0x0

    .line 3
    :try_start_0
    invoke-interface {p2, v0}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result p2
    :try_end_0
    .catch Lcom/jayway/jsonpath/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    :catch_0
    return p3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->rootDocument()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1, p4}, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->accept(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p4, p1, p2, p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->rootDocument()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p4}, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->accept(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isUpstreamDefinite()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    :goto_2
    return-void

    .line 13
    :cond_6
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v0

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const-string p3, "Filter: %s can not be applied to primitives. Current context is: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->predicates:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "?"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
