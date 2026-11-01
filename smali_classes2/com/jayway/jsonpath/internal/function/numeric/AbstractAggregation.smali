.class public abstract Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/function/PathFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getValue()Ljava/lang/Number;
.end method

.method public invoke(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/EvaluationContext;Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jayway/jsonpath/internal/PathRef;",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/internal/EvaluationContext;",
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/function/Parameter;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/jayway/jsonpath/internal/EvaluationContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p4}, Lcom/jayway/jsonpath/internal/EvaluationContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 4
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_0

    .line 5
    check-cast p3, Ljava/lang/Number;

    add-int/lit8 p2, p2, 0x1

    .line 6
    invoke-virtual {p0, p3}, Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;->next(Ljava/lang/Number;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_3

    .line 7
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jayway/jsonpath/internal/function/Parameter;

    .line 8
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/function/Parameter;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 9
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 10
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p3}, Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;->next(Ljava/lang/Number;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/function/numeric/AbstractAggregation;->getValue()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lcom/jayway/jsonpath/JsonPathException;

    const-string p2, "Aggregation function attempted to calculate value using empty array"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public abstract next(Ljava/lang/Number;)V
.end method
