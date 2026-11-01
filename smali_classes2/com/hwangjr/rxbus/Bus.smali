.class public Lcom/hwangjr/rxbus/Bus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_IDENTIFIER:Ljava/lang/String; = "default"


# instance fields
.field private final enforcer:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

.field private final finder:Lcom/hwangjr/rxbus/finder/Finder;

.field private final flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final identifier:Ljava/lang/String;

.field private final producersByType:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Lcom/hwangjr/rxbus/entity/ProducerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribersByType:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/entity/SubscriberEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-direct {p0, v0}, Lcom/hwangjr/rxbus/Bus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;)V
    .locals 1

    const-string v0, "default"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/hwangjr/rxbus/Bus;-><init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/hwangjr/rxbus/finder/Finder;->ANNOTATED:Lcom/hwangjr/rxbus/finder/Finder;

    invoke-direct {p0, p1, p2, v0}, Lcom/hwangjr/rxbus/Bus;-><init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;Ljava/lang/String;Lcom/hwangjr/rxbus/finder/Finder;)V

    return-void
.end method

.method public constructor <init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;Ljava/lang/String;Lcom/hwangjr/rxbus/finder/Finder;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hwangjr/rxbus/Bus;->subscribersByType:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hwangjr/rxbus/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hwangjr/rxbus/Bus;->flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;

    .line 9
    iput-object p1, p0, Lcom/hwangjr/rxbus/Bus;->enforcer:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    .line 10
    iput-object p2, p0, Lcom/hwangjr/rxbus/Bus;->identifier:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/hwangjr/rxbus/Bus;->finder:Lcom/hwangjr/rxbus/finder/Finder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->MAIN:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    invoke-direct {p0, v0, p1}, Lcom/hwangjr/rxbus/Bus;-><init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchProducerResult(Lcom/hwangjr/rxbus/entity/SubscriberEvent;Lcom/hwangjr/rxbus/entity/ProducerEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->produce()Lio/reactivex/for;

    move-result-object p2

    new-instance v0, Lcom/hwangjr/rxbus/Bus$1;

    invoke-direct {v0, p0, p1}, Lcom/hwangjr/rxbus/Bus$1;-><init>(Lcom/hwangjr/rxbus/Bus;Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V

    invoke-virtual {p2, v0}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private getClassesFor(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->handle(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/hwangjr/rxbus/Bus;->getClassesFor(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hwangjr/rxbus/Bus;->flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getProducerForEventType(Lcom/hwangjr/rxbus/entity/EventType;)Lcom/hwangjr/rxbus/entity/ProducerEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    return-object p1
.end method

.method public getSubscribersForEventType(Lcom/hwangjr/rxbus/entity/EventType;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/entity/SubscriberEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->subscribersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "rxbus_default_tag"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Event to post must not be null."

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->enforcer:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    invoke-interface {v0, p0}, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->enforce(Lcom/hwangjr/rxbus/Bus;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hwangjr/rxbus/Bus;->flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 6
    new-instance v3, Lcom/hwangjr/rxbus/entity/EventType;

    invoke-direct {v3, p1, v2}, Lcom/hwangjr/rxbus/entity/EventType;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/hwangjr/rxbus/Bus;->getSubscribersForEventType(Lcom/hwangjr/rxbus/entity/EventType;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    .line 9
    invoke-virtual {p0, p2, v3}, Lcom/hwangjr/rxbus/Bus;->dispatch(Ljava/lang/Object;Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 10
    instance-of p1, p2, Lcom/hwangjr/rxbus/entity/DeadEvent;

    if-nez p1, :cond_2

    .line 11
    new-instance p1, Lcom/hwangjr/rxbus/entity/DeadEvent;

    invoke-direct {p1, p0, p2}, Lcom/hwangjr/rxbus/entity/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "Object to register must not be null."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->enforcer:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    invoke-interface {v0, p0}, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->enforce(Lcom/hwangjr/rxbus/Bus;)V

    .line 3
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->finder:Lcom/hwangjr/rxbus/finder/Finder;

    invoke-interface {v0, p1}, Lcom/hwangjr/rxbus/finder/Finder;->findAllProducers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hwangjr/rxbus/entity/EventType;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    .line 6
    iget-object v4, p0, Lcom/hwangjr/rxbus/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    if-nez v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/hwangjr/rxbus/Bus;->subscribersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    .line 10
    invoke-direct {p0, v4, v3}, Lcom/hwangjr/rxbus/Bus;->dispatchProducerResult(Lcom/hwangjr/rxbus/entity/SubscriberEvent;Lcom/hwangjr/rxbus/entity/ProducerEvent;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Producer method for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " found on type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but already registered by type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v4}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->finder:Lcom/hwangjr/rxbus/finder/Finder;

    invoke-interface {v0, p1}, Lcom/hwangjr/rxbus/finder/Finder;->findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hwangjr/rxbus/entity/EventType;

    .line 16
    iget-object v2, p0, Lcom/hwangjr/rxbus/Bus;->subscribersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_4

    .line 17
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/hwangjr/rxbus/Bus;->subscribersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 19
    :cond_4
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 20
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object already registered."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hwangjr/rxbus/entity/EventType;

    .line 24
    iget-object v2, p0, Lcom/hwangjr/rxbus/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v1}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    .line 28
    invoke-virtual {v1}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->isValid()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 29
    :cond_9
    invoke-virtual {v2}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    invoke-direct {p0, v2, v1}, Lcom/hwangjr/rxbus/Bus;->dispatchProducerResult(Lcom/hwangjr/rxbus/entity/SubscriberEvent;Lcom/hwangjr/rxbus/entity/ProducerEvent;)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bus \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hwangjr/rxbus/Bus;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "Object to unregister must not be null."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->enforcer:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    invoke-interface {v0, p0}, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->enforce(Lcom/hwangjr/rxbus/Bus;)V

    .line 3
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->finder:Lcom/hwangjr/rxbus/finder/Finder;

    invoke-interface {v0, p1}, Lcom/hwangjr/rxbus/finder/Finder;->findAllProducers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " registered?"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hwangjr/rxbus/entity/EventType;

    .line 6
    invoke-virtual {p0, v3}, Lcom/hwangjr/rxbus/Bus;->getProducerForEventType(Lcom/hwangjr/rxbus/entity/EventType;)Lcom/hwangjr/rxbus/entity/ProducerEvent;

    move-result-object v4

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, v4}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/hwangjr/rxbus/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    invoke-virtual {v1}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->invalidate()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing event producer for an annotated method. Is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus;->finder:Lcom/hwangjr/rxbus/finder/Finder;

    invoke-interface {v0, p1}, Lcom/hwangjr/rxbus/finder/Finder;->findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hwangjr/rxbus/entity/EventType;

    invoke-virtual {p0, v3}, Lcom/hwangjr/rxbus/Bus;->getSubscribersForEventType(Lcom/hwangjr/rxbus/entity/EventType;)Ljava/util/Set;

    move-result-object v3

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    .line 18
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    invoke-virtual {v5}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->invalidate()V

    goto :goto_2

    .line 20
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing event subscriber for an annotated method. Is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method
