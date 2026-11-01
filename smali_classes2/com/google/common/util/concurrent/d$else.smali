.class final Lcom/google/common/util/concurrent/d$else;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/d$else$new;,
        Lcom/google/common/util/concurrent/d$else$for;
    }
.end annotation


# instance fields
.field public final break:Lcom/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue<",
            "Lcom/google/common/util/concurrent/d$new;",
            ">;"
        }
    .end annotation
.end field

.field public case:Z
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation
.end field

.field public final do:Lcom/google/common/util/concurrent/transient;

.field public final else:I

.field public final for:Lcom/google/common/collect/Multiset;
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset<",
            "Lcom/google/common/util/concurrent/Service$for;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:Lcom/google/common/util/concurrent/transient$do;

.field public final if:Lcom/google/common/collect/SetMultimap;
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap<",
            "Lcom/google/common/util/concurrent/Service$for;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Ljava/util/Map;
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/Service;",
            "Lcom/google/common/base/throws;",
            ">;"
        }
    .end annotation
.end field

.field public final this:Lcom/google/common/util/concurrent/transient$do;

.field public try:Z
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/r0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/transient;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/transient;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    .line 3
    const-class v0, Lcom/google/common/util/concurrent/Service$for;

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/a2;->for(Ljava/lang/Class;)Lcom/google/common/collect/a2$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/a2$catch;->else()Lcom/google/common/collect/a2$class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/a2$class;->break()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    .line 5
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    .line 6
    invoke-static {}, Lcom/google/common/collect/Maps;->o()Ljava/util/IdentityHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    .line 7
    new-instance v1, Lcom/google/common/util/concurrent/d$else$for;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/d$else$for;-><init>(Lcom/google/common/util/concurrent/d$else;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/d$else;->goto:Lcom/google/common/util/concurrent/transient$do;

    .line 8
    new-instance v1, Lcom/google/common/util/concurrent/d$else$new;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/d$else$new;-><init>(Lcom/google/common/util/concurrent/d$else;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/d$else;->this:Lcom/google/common/util/concurrent/transient$do;

    .line 9
    new-instance v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    iput-object v1, p0, Lcom/google/common/util/concurrent/d$else;->break:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/util/concurrent/d$else;->else:I

    .line 11
    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    return-void
.end method


# virtual methods
.method public break()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->break:Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-static {}, Lcom/google/common/util/concurrent/d;->if()Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method public case()V
    .locals 4
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Lcom/google/common/util/concurrent/d$else;->else:I

    if-ne v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to be healthy after starting. The following services are not running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    .line 3
    invoke-static {v1}, Lcom/google/common/base/public;->const(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/common/collect/b2;->final(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    throw v0
.end method

.method public catch()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/d$else;->case:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/d$else;->try:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/x1;->while()Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->class()Lcom/google/common/collect/b1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/b1;->values()Lcom/google/common/collect/r0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/Service;

    .line 7
    invoke-interface {v2}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v3

    sget-object v4, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    if-eq v3, v4, :cond_1

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Services started transitioning asynchronously before the ServiceManager was constructed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 11
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public class()Lcom/google/common/collect/b1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b1<",
            "Lcom/google/common/util/concurrent/Service$for;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/h1;->builder()Lcom/google/common/collect/h1$do;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v1}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/common/util/concurrent/d$try;

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/common/collect/h1$do;->throw(Ljava/util/Map$Entry;)Lcom/google/common/collect/h1$do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/h1$do;->class()Lcom/google/common/collect/h1;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 9
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public const()Lcom/google/common/collect/x0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/x1;->return(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/Service;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/throws;

    .line 6
    invoke-virtual {v2}, Lcom/google/common/base/throws;->this()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/google/common/util/concurrent/d$try;

    if-nez v4, :cond_0

    .line 7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4}, Lcom/google/common/base/throws;->else(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 9
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    new-instance v2, Lcom/google/common/util/concurrent/d$else$do;

    invoke-direct {v2, p0}, Lcom/google/common/util/concurrent/d$else$do;-><init>(Lcom/google/common/util/concurrent/d$else;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/common/collect/k2;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/k2;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    invoke-static {v0}, Lcom/google/common/collect/x0;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 14
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public do(Lcom/google/common/util/concurrent/d$new;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->break:Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;->if(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public else()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->package()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "It is incorrect to execute listeners with the monitor held."

    .line 3
    invoke-static {v0, v1}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->break:Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->for()V

    return-void
.end method

.method public final(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$for;Lcom/google/common/util/concurrent/Service$for;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Landroid/support/v4/af1;->new(Z)V

    .line 3
    iget-object v2, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/d$else;->case:Z

    .line 5
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/d$else;->try:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 7
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->else()V

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    .line 9
    invoke-interface {v2, p2, p1}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Service %s not at the expected location in the state map %s"

    .line 10
    invoke-static {v2, v3, p1, p2}, Landroid/support/v4/af1;->O(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    .line 12
    invoke-interface {p2, p3, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "Service %s in the state map unexpectedly at %s"

    .line 13
    invoke-static {p2, v2, p1, p3}, Landroid/support/v4/af1;->O(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/base/throws;

    if-nez p2, :cond_2

    .line 15
    invoke-static {}, Lcom/google/common/base/throws;->for()Lcom/google/common/base/throws;

    move-result-object p2

    .line 16
    iget-object v2, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {p3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p2}, Lcom/google/common/base/throws;->this()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {p2}, Lcom/google/common/base/throws;->class()Lcom/google/common/base/throws;

    .line 19
    instance-of v3, p1, Lcom/google/common/util/concurrent/d$try;

    if-nez v3, :cond_3

    .line 20
    invoke-static {}, Lcom/google/common/util/concurrent/d;->do()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Started {0} in {1}."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object p2, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_3
    sget-object p2, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    if-ne p3, p2, :cond_4

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/d$else;->goto(Lcom/google/common/util/concurrent/Service;)V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    invoke-interface {p1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    iget p3, p0, Lcom/google/common/util/concurrent/d$else;->else:I

    if-ne p1, p3, :cond_5

    .line 24
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->this()V

    goto :goto_1

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    sget-object p3, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    invoke-interface {p1, p3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    iget-object p3, p0, Lcom/google/common/util/concurrent/d$else;->for:Lcom/google/common/collect/Multiset;

    invoke-interface {p3, p2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/common/util/concurrent/d$else;->else:I

    if-ne p1, p2, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->break()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 28
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->else()V

    return-void

    :catchall_0
    move-exception p1

    .line 29
    iget-object p2, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 30
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->else()V

    .line 31
    throw p1
.end method

.method public for(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->goto:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/transient;->a(Lcom/google/common/util/concurrent/transient$do;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->case()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timeout waiting for the services to become healthy. The following services have not started: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    .line 6
    invoke-static {v0, v1}, Lcom/google/common/collect/g1;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/common/collect/b2;->final(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 8
    throw p1
.end method

.method public goto(Lcom/google/common/util/concurrent/Service;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->break:Lcom/google/common/util/concurrent/ListenerCallQueue;

    new-instance v1, Lcom/google/common/util/concurrent/d$else$if;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/d$else$if;-><init>(Lcom/google/common/util/concurrent/d$else;Lcom/google/common/util/concurrent/Service;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->goto:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/transient;->while(Lcom/google/common/util/concurrent/transient$do;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d$else;->case()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 4
    throw v0
.end method

.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->this:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/transient;->while(Lcom/google/common/util/concurrent/transient$do;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void
.end method

.method public super(Lcom/google/common/util/concurrent/Service;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/throws;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->new:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/base/throws;->for()Lcom/google/common/base/throws;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 5
    throw p1
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->break:Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-static {}, Lcom/google/common/util/concurrent/d;->for()Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method public try(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d$else;->this:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/transient;->a(Lcom/google/common/util/concurrent/transient$do;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timeout waiting for the services to stop. The following services have not stopped: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/common/util/concurrent/d$else;->if:Lcom/google/common/collect/SetMultimap;

    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/common/collect/b2;->final(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/google/common/util/concurrent/d$else;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 7
    throw p1
.end method
