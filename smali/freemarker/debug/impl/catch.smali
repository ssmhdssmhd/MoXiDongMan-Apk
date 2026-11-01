.class Lfreemarker/debug/impl/catch;
.super Lfreemarker/debug/impl/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/catch$for;,
        Lfreemarker/debug/impl/catch$if;
    }
.end annotation


# instance fields
.field private final case:Lfreemarker/debug/impl/else;

.field private else:Lfreemarker/debug/impl/do;

.field private final for:Ljava/util/HashSet;

.field private final if:Ljava/util/Map;

.field private final new:Ljava/util/Map;

.field private final try:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/debug/impl/if;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfreemarker/debug/impl/catch;->try:Ljava/lang/ref/ReferenceQueue;

    .line 6
    :try_start_0
    new-instance v0, Lfreemarker/debug/impl/else;

    invoke-direct {v0, p0}, Lfreemarker/debug/impl/else;-><init>(Lfreemarker/debug/impl/catch;)V

    iput-object v0, p0, Lfreemarker/debug/impl/catch;->case:Lfreemarker/debug/impl/else;

    .line 7
    new-instance v1, Lfreemarker/debug/impl/do;

    invoke-static {v0}, Ljava/rmi/server/RemoteObject;->toStub(Ljava/rmi/Remote;)Ljava/rmi/Remote;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-direct {v1, v0}, Lfreemarker/debug/impl/do;-><init>(Ljava/io/Serializable;)V

    iput-object v1, p0, Lfreemarker/debug/impl/catch;->else:Lfreemarker/debug/impl/do;

    .line 8
    invoke-virtual {v1}, Lfreemarker/debug/impl/do;->case()V
    :try_end_0
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/rmi/RemoteException;->printStackTrace()V

    .line 10
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private class(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/debug/impl/catch;->const(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/debug/impl/catch$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/debug/impl/catch$if;-><init>(Lfreemarker/debug/impl/catch$do;)V

    .line 3
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private const(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/debug/impl/catch;->import()V

    .line 2
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/debug/impl/catch$if;

    return-object p1
.end method

.method private static final(Lfreemarker/core/b4;I)Lfreemarker/core/b4;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_8

    invoke-virtual {p0}, Lfreemarker/core/h4;->getEndLine()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/b4;->static()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/b4;

    .line 5
    invoke-static {v3, p1}, Lfreemarker/debug/impl/catch;->final(Lfreemarker/core/b4;I)Lfreemarker/core/b4;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/b4;

    if-nez v1, :cond_3

    move-object v1, v3

    .line 9
    :cond_3
    invoke-virtual {v3}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v3}, Lfreemarker/core/h4;->getEndLine()I

    move-result v4

    if-le v4, p1, :cond_4

    move-object v1, v3

    .line 10
    :cond_4
    invoke-virtual {v3}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v4

    invoke-virtual {v3}, Lfreemarker/core/h4;->getEndLine()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v4

    if-ne v4, p1, :cond_5

    move-object v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p0

    :cond_8
    :goto_3
    return-object v1
.end method

.method private import()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->try:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lfreemarker/debug/impl/catch$for;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v1, v0, Lfreemarker/debug/impl/catch$for;->do:Ljava/lang/String;

    invoke-direct {p0, v1}, Lfreemarker/debug/impl/catch;->const(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lfreemarker/debug/impl/catch$if;->do:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Lfreemarker/debug/impl/catch$if;->do()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    iget-object v0, v0, Lfreemarker/debug/impl/catch$for;->do:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private return(Lfreemarker/debug/impl/catch$if;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lfreemarker/debug/impl/catch$if;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p1, Lfreemarker/debug/impl/catch$if;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/debug/impl/catch$for;

    .line 4
    invoke-virtual {v0}, Lfreemarker/debug/impl/catch$for;->do()Lfreemarker/template/static;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/debug/impl/catch;->throws(Lfreemarker/core/b4;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private switch(Lfreemarker/template/static;Landroid/support/v4/hc;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/hc;->getLine()I

    move-result p2

    invoke-static {p1, p2}, Lfreemarker/debug/impl/catch;->final(Lfreemarker/core/b4;I)Lfreemarker/core/b4;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    instance-of v0, p1, Lfreemarker/core/w;

    if-eqz v0, :cond_1

    .line 3
    move-object p2, p1

    check-cast p2, Lfreemarker/core/w;

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p1}, Lfreemarker/core/y4;->break(Lfreemarker/core/b4;)Lfreemarker/core/b4;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {p2}, Lfreemarker/core/y4;->break(Lfreemarker/core/b4;)Lfreemarker/core/b4;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lfreemarker/core/b4;->protected(Ljavax/swing/tree/TreeNode;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lfreemarker/core/y4;->goto(Lfreemarker/core/b4;I)Lfreemarker/core/b4;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lfreemarker/core/b4;->n(ILfreemarker/core/b4;)V

    return-void
.end method

.method private throws(Lfreemarker/core/b4;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-static {p1, v2}, Lfreemarker/core/y4;->goto(Lfreemarker/core/b4;I)Lfreemarker/core/b4;

    move-result-object v3

    .line 3
    :goto_1
    instance-of v4, v3, Lfreemarker/core/w;

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v3, v1}, Lfreemarker/core/y4;->goto(Lfreemarker/core/b4;I)Lfreemarker/core/b4;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v2, v3}, Lfreemarker/core/b4;->n(ILfreemarker/core/b4;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v3}, Lfreemarker/debug/impl/catch;->throws(Lfreemarker/core/b4;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static while(Lfreemarker/template/static;Landroid/support/v4/hc;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object p0

    invoke-virtual {p1}, Landroid/support/v4/hc;->getLine()I

    move-result p1

    invoke-static {p0, p1}, Lfreemarker/debug/impl/catch;->final(Lfreemarker/core/b4;I)Lfreemarker/core/b4;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lfreemarker/core/y4;->break(Lfreemarker/core/b4;)Lfreemarker/core/b4;

    move-result-object p1

    .line 3
    new-instance v0, Lfreemarker/core/w;

    invoke-direct {v0, p0}, Lfreemarker/core/w;-><init>(Lfreemarker/core/b4;)V

    .line 4
    invoke-virtual {p1, p0}, Lfreemarker/core/b4;->protected(Ljavax/swing/tree/TreeNode;)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lfreemarker/core/b4;->n(ILfreemarker/core/b4;)V

    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/hc;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/hc;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lfreemarker/debug/impl/catch;->class(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object v0

    .line 4
    iget-object v2, v0, Lfreemarker/debug/impl/catch$if;->if:Ljava/util/List;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 6
    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    iget-object v0, v0, Lfreemarker/debug/impl/catch$if;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/debug/impl/catch$for;

    .line 9
    invoke-virtual {v2}, Lfreemarker/debug/impl/catch$for;->do()Lfreemarker/template/static;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v2, p1}, Lfreemarker/debug/impl/catch;->while(Lfreemarker/template/static;Landroid/support/v4/hc;)V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public catch(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public default(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public else()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->else:Lfreemarker/debug/impl/do;

    invoke-virtual {v0}, Lfreemarker/debug/impl/do;->goto()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->case:Lfreemarker/debug/impl/else;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/rmi/server/UnicastRemoteObject;->unexportObject(Ljava/rmi/Remote;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-static {}, Lfreemarker/debug/impl/try;->for()V

    return-void
.end method

.method public for(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lfreemarker/debug/impl/catch;->const(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lfreemarker/debug/impl/catch$if;->if:Ljava/util/List;

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public native(Landroid/support/v4/hc;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/hc;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lfreemarker/debug/impl/catch;->const(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v3, v2, Lfreemarker/debug/impl/catch$if;->if:Ljava/util/List;

    .line 5
    invoke-static {v3, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 6
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object v3, v2, Lfreemarker/debug/impl/catch$if;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/debug/impl/catch$for;

    .line 9
    invoke-virtual {v4}, Lfreemarker/debug/impl/catch$for;->do()Lfreemarker/template/static;

    move-result-object v4

    if-nez v4, :cond_0

    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, v4, p1}, Lfreemarker/debug/impl/catch;->switch(Lfreemarker/template/static;Landroid/support/v4/hc;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Lfreemarker/debug/impl/catch$if;->do()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public public()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/debug/impl/catch$if;

    .line 4
    invoke-direct {p0, v2}, Lfreemarker/debug/impl/catch;->return(Lfreemarker/debug/impl/catch$if;)V

    .line 5
    invoke-virtual {v2}, Lfreemarker/debug/impl/catch$if;->do()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lfreemarker/debug/impl/catch;->const(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/debug/impl/catch;->return(Lfreemarker/debug/impl/catch$if;)V

    .line 4
    invoke-virtual {v1}, Lfreemarker/debug/impl/catch$if;->do()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public super()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/debug/impl/catch$if;

    iget-object v3, v3, Lfreemarker/debug/impl/catch$if;->if:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public this(Lfreemarker/core/d0;Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lfreemarker/debug/impl/try;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/debug/impl/try;

    .line 2
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :try_start_1
    new-instance v0, Landroid/support/v4/c80;

    invoke-direct {v0, p0, p2, p3, p1}, Landroid/support/v4/c80;-><init>(Ljava/lang/Object;Ljava/lang/String;ILfreemarker/debug/DebuggedEnvironment;)V

    .line 6
    iget-object p2, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 7
    :try_start_2
    iget-object p3, p0, Lfreemarker/debug/impl/catch;->new:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/debug/DebuggerListener;

    .line 9
    invoke-interface {v1, v0}, Lfreemarker/debug/DebuggerListener;->environmentSuspended(Landroid/support/v4/c80;)V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :try_start_3
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 12
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 13
    :catch_0
    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    :try_start_6
    invoke-virtual {p1}, Lfreemarker/debug/impl/try;->try()Z

    move-result p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 15
    iget-object p3, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    monitor-enter p3

    .line 16
    :try_start_7
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 17
    monitor-exit p3

    return p2

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    .line 18
    :goto_2
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception p3

    .line 19
    :try_start_a
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p2

    .line 20
    iget-object p3, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    monitor-enter p3

    .line 21
    :try_start_c
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 22
    monitor-exit p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 23
    throw p2

    :catchall_4
    move-exception p1

    .line 24
    :try_start_d
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p1

    :catchall_5
    move-exception p1

    .line 25
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public throw()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/catch;->for:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public try(Lfreemarker/template/static;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/debug/impl/catch;->if:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lfreemarker/debug/impl/catch;->class(Ljava/lang/String;)Lfreemarker/debug/impl/catch$if;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lfreemarker/debug/impl/catch$if;->do:Ljava/util/List;

    new-instance v4, Lfreemarker/debug/impl/catch$for;

    iget-object v5, p0, Lfreemarker/debug/impl/catch;->try:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v0, p1, v5}, Lfreemarker/debug/impl/catch$for;-><init>(Ljava/lang/String;Lfreemarker/template/static;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, v2, Lfreemarker/debug/impl/catch$if;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/hc;

    .line 7
    invoke-static {p1, v2}, Lfreemarker/debug/impl/catch;->while(Lfreemarker/template/static;Landroid/support/v4/hc;)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
