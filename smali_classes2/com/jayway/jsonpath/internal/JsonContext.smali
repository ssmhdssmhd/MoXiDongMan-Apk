.class public Lcom/jayway/jsonpath/internal/JsonContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/DocumentContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final configuration:Lcom/jayway/jsonpath/Configuration;

.field private final json:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/JsonContext;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 2
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 3
    invoke-static {p2, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    .line 5
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    return-void
.end method

.method private convert(Ljava/lang/Object;Lcom/jayway/jsonpath/TypeRef;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/TypeRef<",
            "TT;>;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jayway/jsonpath/spi/mapper/MappingProvider;->map(Ljava/lang/Object;Lcom/jayway/jsonpath/TypeRef;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jayway/jsonpath/spi/mapper/MappingProvider;->map(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jayway/jsonpath/Option;

    sget-object v3, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/Configuration;->addOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/jayway/jsonpath/JsonPath;->add(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    const-string v2, "Add path {} new value {}"

    invoke-interface {v1, v2, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs add(Ljava/lang/String;Ljava/lang/Object;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 0

    .line 1
    invoke-static {p1, p3}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jayway/jsonpath/internal/JsonContext;->add(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1

    return-object p1
.end method

.method public configuration()Lcom/jayway/jsonpath/Configuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    return-object v0
.end method

.method public delete(Lcom/jayway/jsonpath/JsonPath;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jayway/jsonpath/Option;

    sget-object v3, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/Configuration;->addOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jayway/jsonpath/JsonPath;->delete(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    const-string v1, "Delete path {}"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs delete(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/JsonContext;->delete(Lcom/jayway/jsonpath/JsonPath;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1

    return-object p1
.end method

.method public json()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    return-object v0
.end method

.method public jsonString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/jayway/jsonpath/ReadContext;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jayway/jsonpath/EvaluationListener;

    .line 1
    new-instance v1, Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;-><init>(ILcom/jayway/jsonpath/internal/JsonContext$1;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/JsonContext;->withListeners([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/ReadContext;

    move-result-object p1

    return-object p1
.end method

.method public map(Lcom/jayway/jsonpath/JsonPath;Lcom/jayway/jsonpath/MapFunction;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {p1, v0, p2, v1}, Lcom/jayway/jsonpath/JsonPath;->map(Ljava/lang/Object;Lcom/jayway/jsonpath/MapFunction;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs map(Ljava/lang/String;Lcom/jayway/jsonpath/MapFunction;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 0

    .line 1
    invoke-static {p1, p3}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jayway/jsonpath/internal/JsonContext;->map(Lcom/jayway/jsonpath/JsonPath;Lcom/jayway/jsonpath/MapFunction;)Lcom/jayway/jsonpath/DocumentContext;

    return-object p0
.end method

.method public put(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/String;Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/jayway/jsonpath/Option;

    sget-object v4, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/jayway/jsonpath/Configuration;->addOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/jayway/jsonpath/JsonPath;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p2, v3, v2

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const-string v0, "Put path {} key {} value {}"

    invoke-interface {v1, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 0

    .line 1
    invoke-static {p1, p4}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/jayway/jsonpath/internal/JsonContext;->put(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/String;Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jayway/jsonpath/JsonPath;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jayway/jsonpath/JsonPath;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "path can not be null"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {p1, v0, v1}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jayway/jsonpath/JsonPath;Lcom/jayway/jsonpath/TypeRef;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jayway/jsonpath/JsonPath;",
            "Lcom/jayway/jsonpath/TypeRef<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/JsonContext;->read(Lcom/jayway/jsonpath/JsonPath;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {p0, p1, p2, v0}, Lcom/jayway/jsonpath/internal/JsonContext;->convert(Ljava/lang/Object;Lcom/jayway/jsonpath/TypeRef;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jayway/jsonpath/JsonPath;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/JsonContext;->read(Lcom/jayway/jsonpath/JsonPath;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {p0, p1, p2, v0}, Lcom/jayway/jsonpath/internal/JsonContext;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/String;Lcom/jayway/jsonpath/TypeRef;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/jayway/jsonpath/TypeRef<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jayway/jsonpath/Predicate;

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/internal/JsonContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {p0, p1, p2, v0}, Lcom/jayway/jsonpath/internal/JsonContext;->convert(Ljava/lang/Object;Lcom/jayway/jsonpath/TypeRef;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs read(Ljava/lang/String;Ljava/lang/Class;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p3}, Lcom/jayway/jsonpath/internal/JsonContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {p0, p1, p2, p3}, Lcom/jayway/jsonpath/internal/JsonContext;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "path can not be null or empty"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2
    invoke-static {}, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->getCache()Lcom/jayway/jsonpath/spi/cache/Cache;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object p1, v3, v0

    .line 5
    invoke-virtual {v2}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/Utils;->concat([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {v1, v0}, Lcom/jayway/jsonpath/spi/cache/Cache;->get(Ljava/lang/String;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0, v2}, Lcom/jayway/jsonpath/internal/JsonContext;->read(Lcom/jayway/jsonpath/JsonPath;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    .line 9
    invoke-interface {v1, v0, p1}, Lcom/jayway/jsonpath/spi/cache/Cache;->put(Ljava/lang/String;Lcom/jayway/jsonpath/JsonPath;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/JsonContext;->read(Lcom/jayway/jsonpath/JsonPath;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public renameKey(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/String;Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jayway/jsonpath/Option;

    sget-object v3, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/Configuration;->addOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/jayway/jsonpath/JsonPath;->renameKey(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    sget-object p2, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    const-string v1, "Rename path {} new value {}"

    invoke-interface {v0, v1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs renameKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 0

    .line 1
    invoke-static {p1, p4}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/jayway/jsonpath/internal/JsonContext;->renameKey(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/String;Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jayway/jsonpath/Option;

    sget-object v3, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/Configuration;->addOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/jayway/jsonpath/JsonPath;->set(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/jayway/jsonpath/internal/JsonContext;->logger:Lorg/slf4j/Logger;

    const-string v2, "Set path {} new value {}"

    invoke-interface {v1, v2, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs set(Ljava/lang/String;Ljava/lang/Object;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 0

    .line 1
    invoke-static {p1, p3}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jayway/jsonpath/internal/JsonContext;->set(Lcom/jayway/jsonpath/JsonPath;Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1

    return-object p1
.end method

.method public varargs withListeners([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/ReadContext;
    .locals 3

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/JsonContext;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/JsonContext;->json:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/JsonContext;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v2, p1}, Lcom/jayway/jsonpath/Configuration;->setEvaluationListeners([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/jayway/jsonpath/internal/JsonContext;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    return-object v0
.end method
