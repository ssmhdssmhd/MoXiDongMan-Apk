.class public Lcom/jayway/jsonpath/internal/ParseContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/ParseContext;


# instance fields
.field private final configuration:Lcom/jayway/jsonpath/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->defaultConfiguration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;-><init>(Lcom/jayway/jsonpath/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/ParseContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "json file can not be null"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
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

.method public parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 1

    const-string v0, "UTF-8"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "json input stream can not be null"

    .line 7
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "charset can not be null"

    .line 8
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/ParseContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/jayway/jsonpath/internal/JsonContext;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/ParseContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {v0, p2, v1}, Lcom/jayway/jsonpath/internal/JsonContext;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public parse(Ljava/lang/Object;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "json object can not be null"

    .line 1
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/JsonContext;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/ParseContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {v0, p1, v1}, Lcom/jayway/jsonpath/internal/JsonContext;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "json string can not be null or empty"

    .line 3
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/ParseContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/jayway/jsonpath/internal/JsonContext;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/ParseContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-direct {v0, p1, v1}, Lcom/jayway/jsonpath/internal/JsonContext;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    return-object v0
.end method

.method public parse(Ljava/net/URL;)Lcom/jayway/jsonpath/DocumentContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "url can not be null"

    .line 16
    invoke-static {p1, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/ParseContextImpl;->parse(Ljava/io/InputStream;)Lcom/jayway/jsonpath/DocumentContext;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
