.class public Lcom/jayway/jsonpath/internal/path/WildcardPathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 3

    .line 1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v0

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    :goto_1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    :try_end_0
    .catch Lcom/jayway/jsonpath/PathNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/jayway/jsonpath/Option;->REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    throw p2

    :cond_2
    return-void
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 1

    const-string v0, "[*]"

    return-object v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
