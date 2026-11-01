.class public Lcom/jayway/jsonpath/internal/function/text/Length;
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

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p4}, Lcom/jayway/jsonpath/internal/EvaluationContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p4}, Lcom/jayway/jsonpath/internal/EvaluationContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p4}, Lcom/jayway/jsonpath/internal/EvaluationContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
