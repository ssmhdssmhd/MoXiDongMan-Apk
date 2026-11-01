.class public Lcom/jayway/jsonpath/JsonPath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final path:Lcom/jayway/jsonpath/internal/Path;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "path can not be null"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/internal/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    return-void
.end method

.method public static varargs compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "json can not be null or empty"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/JsonPath;

    invoke-direct {v0, p0, p1}, Lcom/jayway/jsonpath/JsonPath;-><init>(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)V

    return-object v0
.end method

.method public static isPathDefinite(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jayway/jsonpath/Predicate;

    .line 1
    invoke-static {p0, v0}, Lcom/jayway/jsonpath/JsonPath;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/JsonPath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jayway/jsonpath/JsonPath;->isDefinite()Z

    move-result p0

    return p0
.end method

.method public static parse(Ljava/io/File;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/File;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/File;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    .line 3
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    .line 8
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    .line 6
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    .line 7
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/net/URL;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/net/URL;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/net/URL;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/net/URL;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    return-object p0
.end method

.method public static varargs read(Ljava/io/File;Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/File;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/jayway/jsonpath/ReadContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs read(Ljava/io/InputStream;Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/jayway/jsonpath/ReadContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs read(Ljava/lang/Object;Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/jayway/jsonpath/JsonPath;->parse(Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/jayway/jsonpath/ReadContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs read(Ljava/lang/String;Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/jayway/jsonpath/ReadContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs read(Ljava/net/URL;Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "[",
            "Lcom/jayway/jsonpath/Predicate;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/net/URL;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/jayway/jsonpath/ReadContext;->read(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            "Lcom/jayway/jsonpath/internal/EvaluationContext;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    invoke-virtual {p2, v0}, Lcom/jayway/jsonpath/Configuration;->containsOption(Lcom/jayway/jsonpath/Option;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getPathList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static using(Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/ParseContext;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    return-object v0
.end method

.method public static using(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/ParseContext;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/ParseContextImpl;

    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 2
    invoke-static {p3, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p1, p3, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->updateOperations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/internal/PathRef;

    .line 5
    invoke-virtual {v2, p2, p3}, Lcom/jayway/jsonpath/internal/PathRef;->add(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3, v0}, Lcom/jayway/jsonpath/JsonPath;->resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 2
    invoke-static {p2, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p1, p2, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->updateOperations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/internal/PathRef;

    .line 5
    invoke-virtual {v2, p2}, Lcom/jayway/jsonpath/internal/PathRef;->delete(Lcom/jayway/jsonpath/Configuration;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/jayway/jsonpath/JsonPath;->resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefinite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/Path;->isDefinite()Z

    move-result v0

    return v0
.end method

.method public map(Ljava/lang/Object;Lcom/jayway/jsonpath/MapFunction;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/MapFunction;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "configuration can not be null"

    .line 2
    invoke-static {p3, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mapFunction can not be null"

    .line 3
    invoke-static {p2, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p1, p3, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->updateOperations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/internal/PathRef;

    .line 6
    invoke-virtual {v2, p2, p3}, Lcom/jayway/jsonpath/internal/PathRef;->convert(Lcom/jayway/jsonpath/MapFunction;Lcom/jayway/jsonpath/Configuration;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p3, v0}, Lcom/jayway/jsonpath/JsonPath;->resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "key can not be null or empty"

    .line 2
    invoke-static {p2, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 3
    invoke-static {p4, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p1, p4, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->updateOperations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/internal/PathRef;

    .line 6
    invoke-virtual {v2, p2, p3, p4}, Lcom/jayway/jsonpath/internal/PathRef;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p4, v0}, Lcom/jayway/jsonpath/JsonPath;->resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->defaultConfiguration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/io/File;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/File;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json file can not be null"

    .line 23
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "json file does not exist"

    invoke-static {v1, v2}, Lcom/jayway/jsonpath/internal/Utils;->isTrue(ZLjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "jsonProvider can not be null"

    .line 25
    invoke-static {p2, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 26
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/io/InputStream;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {v1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public read(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->defaultConfiguration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/io/InputStream;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json input stream can not be null"

    .line 30
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 31
    invoke-static {p2, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UTF-8"

    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/io/InputStream;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json input stream can not be null"

    .line 33
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "charset can not be null"

    .line 34
    invoke-static {p2, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 35
    invoke-static {p3, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :try_start_0
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->defaultConfiguration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/jayway/jsonpath/Option;->AS_PATH_LIST:Lcom/jayway/jsonpath/Option;

    invoke-virtual {p2, v0}, Lcom/jayway/jsonpath/Configuration;->containsOption(Lcom/jayway/jsonpath/Option;)Z

    move-result v1

    .line 3
    sget-object v2, Lcom/jayway/jsonpath/Option;->ALWAYS_RETURN_LIST:Lcom/jayway/jsonpath/Option;

    invoke-virtual {p2, v2}, Lcom/jayway/jsonpath/Configuration;->containsOption(Lcom/jayway/jsonpath/Option;)Z

    move-result v3

    .line 4
    sget-object v4, Lcom/jayway/jsonpath/Option;->SUPPRESS_EXCEPTIONS:Lcom/jayway/jsonpath/Option;

    invoke-virtual {p2, v4}, Lcom/jayway/jsonpath/Configuration;->containsOption(Lcom/jayway/jsonpath/Option;)Z

    move-result v4

    .line 5
    :try_start_0
    iget-object v5, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v5}, Lcom/jayway/jsonpath/internal/Path;->isFunctionPath()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v0, p1, p1, p2}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/JsonPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Options "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " are not allowed when using path functions!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v0, p1, p1, p2}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getPath()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v0, p1, p1, p2}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue(Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz v3, :cond_3

    .line 10
    iget-object v2, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v2}, Lcom/jayway/jsonpath/internal/Path;->isDefinite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createArray()Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v5

    invoke-interface {v5, v2, v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    if-eqz v4, :cond_7

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createArray()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createArray()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {p1}, Lcom/jayway/jsonpath/internal/Path;->isDefinite()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createArray()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 16
    :cond_7
    throw p1
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->defaultConfiguration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null or empty"

    .line 18
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "jsonProvider can not be null"

    .line 19
    invoke-static {p2, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->defaultConfiguration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/JsonPath;->read(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public renameKey(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "newKeyName can not be null or empty"

    .line 2
    invoke-static {p3, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 3
    invoke-static {p4, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p1, p4, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->updateOperations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/internal/PathRef;

    .line 6
    invoke-virtual {v2, p2, p3, p4}, Lcom/jayway/jsonpath/internal/PathRef;->renameKey(Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p4, v0}, Lcom/jayway/jsonpath/JsonPath;->resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json can not be null"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 2
    invoke-static {p3, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/JsonPath;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p1, p3, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->updateOperations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/jsonpath/internal/PathRef;

    .line 5
    invoke-virtual {v2, p2, p3}, Lcom/jayway/jsonpath/internal/PathRef;->set(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3, v0}, Lcom/jayway/jsonpath/JsonPath;->resultByConfiguration(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
