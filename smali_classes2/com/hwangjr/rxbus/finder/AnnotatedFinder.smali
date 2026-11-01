.class public final Lcom/hwangjr/rxbus/finder/AnnotatedFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;
    }
.end annotation


# static fields
.field private static final PRODUCERS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUBSCRIBERS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->PRODUCERS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->SUBSCRIBERS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAllProducers(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Lcom/hwangjr/rxbus/entity/ProducerEvent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->PRODUCERS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0, v2}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->loadAnnotatedProducerMethods(Ljava/lang/Class;Ljava/util/Map;)V

    .line 6
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    new-instance v3, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;

    invoke-static {v4}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->access$100(Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;

    invoke-static {v5}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->access$200(Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;)Lcom/hwangjr/rxbus/thread/EventThread;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/hwangjr/rxbus/entity/ProducerEvent;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/hwangjr/rxbus/thread/EventThread;)V

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/entity/SubscriberEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->SUBSCRIBERS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0, v2}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->loadAnnotatedSubscriberMethods(Ljava/lang/Class;Ljava/util/Map;)V

    .line 6
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;

    .line 10
    new-instance v6, Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-static {v5}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->access$100(Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v5}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->access$200(Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;)Lcom/hwangjr/rxbus/thread/EventThread;

    move-result-object v5

    invoke-direct {v6, p0, v7, v5}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/hwangjr/rxbus/thread/EventThread;)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static loadAnnotatedMethods(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    const-class v5, Lcom/hwangjr/rxbus/annotation/Subscribe;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "rxbus_default_tag"

    const-string v8, " but is not \'public\'."

    const/4 v9, 0x1

    const-string v10, "Method "

    if-eqz v5, :cond_8

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 5
    array-length v11, v5

    if-ne v11, v9, :cond_7

    .line 6
    aget-object v5, v5, v2

    .line 7
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v11

    const-string v12, " has @Subscribe annotation on "

    if-nez v11, :cond_6

    .line 8
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    and-int/2addr v9, v11

    if-eqz v9, :cond_5

    .line 9
    const-class v8, Lcom/hwangjr/rxbus/annotation/Subscribe;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/hwangjr/rxbus/annotation/Subscribe;

    .line 10
    invoke-interface {v8}, Lcom/hwangjr/rxbus/annotation/Subscribe;->thread()Lcom/hwangjr/rxbus/thread/EventThread;

    move-result-object v9

    .line 11
    invoke-interface {v8}, Lcom/hwangjr/rxbus/annotation/Subscribe;->tags()[Lcom/hwangjr/rxbus/annotation/Tag;

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 12
    :cond_1
    array-length v8, v11

    :cond_2
    :goto_1
    if-lez v8, :cond_3

    add-int/lit8 v10, v8, -0x1

    .line 13
    aget-object v10, v11, v10

    invoke-interface {v10}, Lcom/hwangjr/rxbus/annotation/Tag;->value()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v7

    .line 14
    :goto_2
    new-instance v12, Lcom/hwangjr/rxbus/entity/EventType;

    invoke-direct {v12, v10, v5}, Lcom/hwangjr/rxbus/entity/EventType;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    invoke-interface {p2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-nez v10, :cond_4

    .line 16
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 17
    invoke-interface {p2, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    new-instance v12, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;

    invoke-direct {v12, v9, v4, v6}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;-><init>(Lcom/hwangjr/rxbus/thread/EventThread;Ljava/lang/reflect/Method;Lcom/hwangjr/rxbus/finder/AnnotatedFinder$1;)V

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    if-gtz v8, :cond_2

    goto/16 :goto_5

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " which is an interface.  Subscription must be on a concrete class type."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " has @Subscribe annotation but requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " arguments.  Methods must require a single argument."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_8
    const-class v5, Lcom/hwangjr/rxbus/annotation/Produce;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 23
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 24
    array-length v11, v5

    if-nez v11, :cond_11

    .line 25
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v11, Ljava/lang/Void;

    if-eq v5, v11, :cond_10

    .line 26
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v11

    const-string v12, " has @Produce annotation on "

    if-nez v11, :cond_f

    .line 28
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 29
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    and-int/2addr v9, v11

    if-eqz v9, :cond_d

    .line 30
    const-class v8, Lcom/hwangjr/rxbus/annotation/Produce;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/hwangjr/rxbus/annotation/Produce;

    .line 31
    invoke-interface {v8}, Lcom/hwangjr/rxbus/annotation/Produce;->thread()Lcom/hwangjr/rxbus/thread/EventThread;

    move-result-object v9

    .line 32
    invoke-interface {v8}, Lcom/hwangjr/rxbus/annotation/Produce;->tags()[Lcom/hwangjr/rxbus/annotation/Tag;

    move-result-object v8

    if-nez v8, :cond_9

    const/4 v10, 0x0

    goto :goto_3

    .line 33
    :cond_9
    array-length v10, v8

    :cond_a
    :goto_3
    if-lez v10, :cond_b

    add-int/lit8 v11, v10, -0x1

    .line 34
    aget-object v11, v8, v11

    invoke-interface {v11}, Lcom/hwangjr/rxbus/annotation/Tag;->value()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_b
    move-object v11, v7

    .line 35
    :goto_4
    new-instance v12, Lcom/hwangjr/rxbus/entity/EventType;

    invoke-direct {v12, v11, v5}, Lcom/hwangjr/rxbus/entity/EventType;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    invoke-interface {p1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 37
    new-instance v11, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;

    invoke-direct {v11, v9, v4, v6}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;-><init>(Lcom/hwangjr/rxbus/thread/EventThread;Ljava/lang/reflect/Method;Lcom/hwangjr/rxbus/finder/AnnotatedFinder$1;)V

    invoke-interface {p1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_a

    goto/16 :goto_5

    .line 38
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Producer for type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " has already been registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " has @Produce annotation but has no return type."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " which is an interface.  Producers must return a concrete class type."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " has a return type of void.  Must declare a non-void type."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "has @Produce annotation but requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " arguments.  Methods must require zero arguments."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 44
    :cond_13
    sget-object v0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->PRODUCERS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object p1, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->SUBSCRIBERS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static loadAnnotatedProducerMethods(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->loadAnnotatedMethods(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static loadAnnotatedSubscriberMethods(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0, v0, p1}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder;->loadAnnotatedMethods(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
