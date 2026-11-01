.class public Lcom/jayway/jsonpath/spi/cache/LRUCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/spi/cache/Cache;


# instance fields
.field private final limit:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jayway/jsonpath/JsonPath;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->queue:Ljava/util/Deque;

    .line 5
    iput p1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->limit:I

    return-void
.end method

.method private addKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private removeFirstOccurrence(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private removeLast()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->queue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private removeThenAddKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->queue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/jayway/jsonpath/JsonPath;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jayway/jsonpath/JsonPath;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/cache/LRUCache;->removeThenAddKey(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getSilent(Ljava/lang/String;)Lcom/jayway/jsonpath/JsonPath;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jayway/jsonpath/JsonPath;

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/jayway/jsonpath/JsonPath;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jayway/jsonpath/JsonPath;

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/cache/LRUCache;->removeThenAddKey(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/cache/LRUCache;->addKey(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->limit:I

    if-le p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/cache/LRUCache;->removeLast()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/cache/LRUCache;->removeFirstOccurrence(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/cache/LRUCache;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
