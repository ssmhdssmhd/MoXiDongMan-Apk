.class public Lcom/jayway/jsonpath/spi/cache/CacheProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cache:Lcom/jayway/jsonpath/spi/cache/Cache;

.field private static cachingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCache()Lcom/jayway/jsonpath/spi/cache/Cache;
    .locals 2

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cache:Lcom/jayway/jsonpath/spi/cache/Cache;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/jayway/jsonpath/spi/cache/CacheProvider;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cache:Lcom/jayway/jsonpath/spi/cache/Cache;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->getDefaultCache()Lcom/jayway/jsonpath/spi/cache/Cache;

    move-result-object v1

    sput-object v1, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cache:Lcom/jayway/jsonpath/spi/cache/Cache;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cache:Lcom/jayway/jsonpath/spi/cache/Cache;

    return-object v0
.end method

.method private static getDefaultCache()Lcom/jayway/jsonpath/spi/cache/Cache;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/spi/cache/LRUCache;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/spi/cache/LRUCache;-><init>(I)V

    return-object v0
.end method

.method public static setCache(Lcom/jayway/jsonpath/spi/cache/Cache;)V
    .locals 3

    const-string v0, "Cache may not be null"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, v0, v2}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/jayway/jsonpath/spi/cache/CacheProvider;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cache:Lcom/jayway/jsonpath/spi/cache/Cache;

    if-nez v2, :cond_1

    .line 4
    sput-object p0, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cache:Lcom/jayway/jsonpath/spi/cache/Cache;

    .line 5
    instance-of p0, p0, Lcom/jayway/jsonpath/spi/cache/NOOPCache;

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/jayway/jsonpath/spi/cache/CacheProvider;->cachingEnabled:Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance p0, Lcom/jayway/jsonpath/JsonPathException;

    const-string v1, "Cache provider must be configured before cache is accessed."

    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
