.class public Lfreemarker/ext/beans/_BeansAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static case(Lfreemarker/ext/beans/this;[Ljava/lang/Object;Lfreemarker/ext/beans/try;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Landroid/support/v4/vm;->do:[Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/this;->goto()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object v0

    .line 4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v1, 0x1

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 6
    aget-object v5, p1, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 8
    array-length v4, p1

    sub-int/2addr v4, v1

    .line 9
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-ge v3, v4, :cond_2

    add-int v5, v1, v3

    .line 10
    aget-object v5, p1, v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    aput-object v0, v2, v1

    move-object p1, v2

    .line 12
    :cond_3
    invoke-virtual {p0, p2, p1}, Lfreemarker/ext/beans/this;->new(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static do(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BWC:",
            "Lfreemarker/ext/beans/else;",
            ">(TBWC;)TBWC;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/else;->do(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/beans/else;

    return-object p0
.end method

.method public static else(Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/ext/beans/try;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lfreemarker/ext/beans/try;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lfreemarker/ext/beans/_BeansAPI;->try(Ljava/lang/Class;[Ljava/lang/Object;)Lfreemarker/ext/beans/this;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lfreemarker/ext/beans/_BeansAPI;->case(Lfreemarker/ext/beans/this;[Ljava/lang/Object;Lfreemarker/ext/beans/try;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lfreemarker/ext/beans/else;Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;)Lfreemarker/ext/beans/try;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BW:",
            "Lfreemarker/ext/beans/try;",
            "BWC:",
            "Lfreemarker/ext/beans/else;",
            ">(TBWC;",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "TBWC;",
            "Ljava/lang/ref/WeakReference<",
            "TBW;>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TBW;>;",
            "Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory<",
            "TBW;TBWC;>;)TBW;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 7
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/try;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    invoke-static {p0}, Lfreemarker/ext/beans/_BeansAPI;->do(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/else;

    move-result-object p0

    .line 10
    invoke-interface {p3, p0}, Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;->create(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/try;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lfreemarker/ext/beans/try;->isWriteProtected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    monitor-enter p1

    .line 13
    :try_start_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfreemarker/ext/beans/try;

    :cond_3
    if-nez v2, :cond_4

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object p3, v2

    .line 16
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-static {p1, p2}, Lfreemarker/ext/beans/_BeansAPI;->goto(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    return-object p3

    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 19
    :cond_5
    new-instance p0, Landroid/support/v4/mc;

    invoke-direct {p0}, Landroid/support/v4/mc;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    .line 20
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static goto(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BW:",
            "Lfreemarker/ext/beans/try;",
            "BWC:",
            "Lfreemarker/ext/beans/else;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "TBWC;",
            "Ljava/lang/ref/WeakReference<",
            "TBW;>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TBW;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 7
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public static if(Lfreemarker/ext/beans/new;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/new;->if()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/const;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/else;->if()Lfreemarker/ext/beans/const;

    move-result-object p0

    return-object p0
.end method

.method private static try(Ljava/lang/Class;[Ljava/lang/Object;)Lfreemarker/ext/beans/this;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lfreemarker/ext/beans/this;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Landroid/support/v4/vm;->do:[Ljava/lang/Object;

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/ext/beans/if;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/if;-><init>([Ljava/lang/Object;Z)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 7
    aget-object v6, v3, v5

    .line 8
    new-instance v7, Lfreemarker/ext/beans/transient;

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lfreemarker/ext/beans/transient;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V

    .line 9
    invoke-static {v6}, Lfreemarker/ext/beans/j;->goto(Ljava/lang/reflect/Member;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0, p1, v4}, Lfreemarker/ext/beans/if;->new(Ljava/util/List;Z)Lfreemarker/ext/beans/default;

    move-result-object p1

    .line 13
    sget-object v3, Lfreemarker/ext/beans/while;->do:Lfreemarker/ext/beans/while;

    if-ne p1, v3, :cond_3

    .line 14
    invoke-virtual {v0, v2, v1}, Lfreemarker/ext/beans/if;->new(Ljava/util/List;Z)Lfreemarker/ext/beans/default;

    move-result-object p1

    .line 15
    :cond_3
    instance-of v0, p1, Lfreemarker/ext/beans/while;

    if-eqz v0, :cond_6

    if-eq p1, v3, :cond_5

    .line 16
    sget-object v0, Lfreemarker/ext/beans/while;->if:Lfreemarker/ext/beans/while;

    if-ne p1, v0, :cond_4

    .line 17
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are multiple public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " constructors that match the compatible parameter list with the same preferability."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There\'s no public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " constructor with compatible parameter list."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    check-cast p1, Lfreemarker/ext/beans/this;

    return-object p1
.end method
