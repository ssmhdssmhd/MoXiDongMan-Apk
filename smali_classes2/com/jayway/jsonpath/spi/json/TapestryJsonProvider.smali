.class public Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;
.super Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;

    invoke-direct {v0}, Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;->INSTANCE:Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tapestry5/json/JSONArray;

    invoke-direct {v0}, Lorg/apache/tapestry5/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public createMap()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tapestry5/json/JSONObject;

    invoke-direct {v0}, Lorg/apache/tapestry5/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getArrayIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/tapestry5/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/apache/tapestry5/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/apache/tapestry5/json/JSONObject;

    .line 2
    invoke-virtual {p1, p2}, Lorg/apache/tapestry5/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/tapestry5/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
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
    check-cast p1, Lorg/apache/tapestry5/json/JSONObject;

    invoke-virtual {p1}, Lorg/apache/tapestry5/json/JSONObject;->keys()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public isArray(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/apache/tapestry5/json/JSONArray;

    return p1
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/apache/tapestry5/json/JSONObject;

    return p1
.end method

.method public length(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/tapestry5/json/JSONArray;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/tapestry5/json/JSONArray;

    invoke-virtual {p1}, Lorg/apache/tapestry5/json/JSONArray;->length()I

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/apache/tapestry5/json/JSONObject;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/apache/tapestry5/json/JSONObject;

    invoke-virtual {p1}, Lorg/apache/tapestry5/json/JSONObject;->length()I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", unsupported type."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1, p2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "\\A"

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_0
    throw p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/tapestry5/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/apache/tapestry5/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lorg/apache/tapestry5/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 2
    :cond_0
    check-cast p1, Lorg/apache/tapestry5/json/JSONArray;

    .line 3
    invoke-virtual {p1, p2, p3}, Lorg/apache/tapestry5/json/JSONArray;->put(ILjava/lang/Object;)Lorg/apache/tapestry5/json/JSONArray;

    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lorg/apache/tapestry5/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/TapestryJsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/apache/tapestry5/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/apache/tapestry5/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/tapestry5/json/JSONObject;

    :cond_1
    return-void
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/tapestry5/json/JSONCollection;

    invoke-virtual {p1}, Lorg/apache/tapestry5/json/JSONCollection;->toCompactString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
