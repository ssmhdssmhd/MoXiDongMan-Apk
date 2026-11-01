.class public Lcom/jayway/jsonpath/spi/json/JettisonProvider;
.super Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;,
        Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;,
        Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;,
        Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;,
        Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonUnwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static jettisonUnwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lorg/codehaus/jettison/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static jettisonWrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/codehaus/jettison/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private parse(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;->nextClean()C

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;->back()V

    const/16 v1, 0x7b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;

    invoke-direct {v0, p1, v2}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v0

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;

    invoke-direct {v0, p1, v2}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p1, Lorg/codehaus/jettison/json/JSONException;

    const-string v0, "Invalid JSON"

    invoke-direct {p1, v0}, Lorg/codehaus/jettison/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/codehaus/jettison/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public createArray()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v0
.end method

.method public bridge synthetic createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->createArray()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public createMap()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v0
.end method

.method public getArrayIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/codehaus/jettison/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/codehaus/jettison/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonUnwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/codehaus/jettison/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/codehaus/jettison/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonUnwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
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

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->length(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    instance-of v1, p1, Lorg/codehaus/jettison/json/JSONArray;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->length(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/codehaus/jettison/json/JSONObject;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Lorg/codehaus/jettison/json/JSONObject;

    invoke-virtual {p1}, Lorg/codehaus/jettison/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public isArray(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/codehaus/jettison/json/JSONArray;

    return p1
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/codehaus/jettison/json/JSONObject;

    return p1
.end method

.method public length(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONArray;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/codehaus/jettison/json/JSONArray;

    invoke-virtual {p1}, Lorg/codehaus/jettison/json/JSONArray;->length()I

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONObject;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/codehaus/jettison/json/JSONObject;

    invoke-virtual {p1}, Lorg/codehaus/jettison/json/JSONObject;->length()I

    move-result p1

    return p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    .line 8
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 9
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->parse(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/jayway/jsonpath/InvalidJsonException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/InvalidJsonException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->parse(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONArray;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->length(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v2, p1

    check-cast v2, Lorg/codehaus/jettison/json/JSONArray;

    invoke-virtual {v2, v0, v1}, Lorg/codehaus/jettison/json/JSONArray;->put(ILjava/lang/Object;)Lorg/codehaus/jettison/json/JSONArray;

    .line 6
    move-object v0, p1

    check-cast v0, Lorg/codehaus/jettison/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/codehaus/jettison/json/JSONArray;->remove(Ljava/lang/Object;)Lorg/codehaus/jettison/json/JSONArray;

    .line 7
    :cond_1
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONObject;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lorg/codehaus/jettison/json/JSONObject;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codehaus/jettison/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jettison/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Lorg/codehaus/jettison/json/JSONArray;

    invoke-static {p3}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonWrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/codehaus/jettison/json/JSONArray;->put(ILjava/lang/Object;)Lorg/codehaus/jettison/json/JSONArray;
    :try_end_0
    .catch Lorg/codehaus/jettison/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONArray;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    :goto_0
    move-object v1, p1

    check-cast v1, Lorg/codehaus/jettison/json/JSONArray;

    invoke-static {p3}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonWrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jettison/json/JSONArray;->put(ILjava/lang/Object;)Lorg/codehaus/jettison/json/JSONArray;

    .line 4
    :cond_1
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONObject;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lorg/codehaus/jettison/json/JSONObject;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonWrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/codehaus/jettison/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/jettison/json/JSONObject;
    :try_end_0
    .catch Lorg/codehaus/jettison/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
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
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONArray;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/codehaus/jettison/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/codehaus/jettison/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/codehaus/jettison/json/JSONObject;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/codehaus/jettison/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/codehaus/jettison/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/codehaus/jettison/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->jettisonUnwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
