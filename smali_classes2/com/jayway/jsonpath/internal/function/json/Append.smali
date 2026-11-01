.class public Lcom/jayway/jsonpath/internal/function/json/Append;
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

    if-eqz p5, :cond_1

    .line 2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 3
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jayway/jsonpath/internal/function/Parameter;

    .line 4
    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 5
    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p5

    .line 6
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/function/Parameter;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p3, p5, p4}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object p3
.end method
