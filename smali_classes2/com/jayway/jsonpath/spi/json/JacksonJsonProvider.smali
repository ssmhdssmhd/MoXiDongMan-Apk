.class public Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;
.super Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;
.source "SourceFile"


# static fields
.field private static final defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private static final defaultObjectReader:Lcom/fasterxml/jackson/databind/ObjectReader;


# instance fields
.field public objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field public objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->defaultObjectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->defaultObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->defaultObjectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {p0, v0, v1}, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 5
    iput-object p2, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method


# virtual methods
.method public bridge synthetic createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->createArray()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public createMap()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
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
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/io/Reader;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

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

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/jayway/jsonpath/spi/json/JacksonJsonProvider;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 7
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 8
    :catch_0
    new-instance p1, Lcom/jayway/jsonpath/InvalidJsonException;

    invoke-direct {p1}, Lcom/jayway/jsonpath/InvalidJsonException;-><init>()V

    throw p1
.end method
