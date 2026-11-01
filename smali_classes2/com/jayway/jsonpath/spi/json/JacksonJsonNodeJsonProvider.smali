.class public Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;
.super Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;
.source "SourceFile"


# static fields
.field private static final defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field public objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setValueInObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p3, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_0

    .line 5
    :cond_1
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_0

    .line 7
    :cond_2
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_0

    .line 9
    :cond_3
    instance-of v0, p3, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 11
    :cond_4
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 13
    :cond_5
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 15
    :cond_6
    instance-of v0, p3, Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 17
    :cond_7
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 19
    :cond_8
    instance-of v0, p3, [B

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, [B

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;[B)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    :cond_9
    if-nez p3, :cond_a

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 22
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->createJsonElement(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :goto_0
    return-void
.end method

.method private toJsonArray(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 0

    .line 1
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-object p1
.end method

.method private toJsonObject(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 1
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p1
.end method


# virtual methods
.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createMap()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public getArrayIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonArray(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonObject(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 3
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonObject(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fieldNames()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isArray(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return p1
.end method

.method public length(Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonArray(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonObject(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result p1

    return p1

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/node/TextNode;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lcom/fasterxml/jackson/databind/node/TextNode;

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/TextNode;->size()I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance v0, Lcom/jayway/jsonpath/JsonPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length operation can not applied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "null"

    :goto_0
    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/Reader;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/jayway/jsonpath/InvalidJsonException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/InvalidJsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/InvalidJsonException;

    invoke-direct {v1, v0, p1}, Lcom/jayway/jsonpath/InvalidJsonException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1
.end method

.method public removeProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonObject(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonArray(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    .line 4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->remove(I)Lcom/fasterxml/jackson/databind/JsonNode;

    :goto_1
    return-void
.end method

.method public setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonArray(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 4
    invoke-direct {p0, p3}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->createJsonElement(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p3}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->createJsonElement(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->set(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0, p1, p2, p3}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->setValueInObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz p2, :cond_2

    .line 4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result p2

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 7
    invoke-direct {p0, p3}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->createJsonElement(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, p3}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->createJsonElement(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->set(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :goto_1
    return-void
.end method

.method public toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->toJsonArray(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonNodeJsonProvider;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/JsonPathException;

    const-string v0, "Not a JSON Node"

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v1, :cond_1

    return-object p1

    .line 2
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isValueNode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isInt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isLong()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isBigDecimal()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isDouble()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isFloat()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 18
    :cond_8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isBigDecimal()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 19
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    return-object p1
.end method
