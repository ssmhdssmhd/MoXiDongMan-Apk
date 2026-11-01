.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/String;

.field public final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/collect/y1;

    invoke-direct {v0}, Lcom/google/common/collect/y1;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/y1;->class()Lcom/google/common/collect/y1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y1;->this()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->do:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/google/common/collect/y1;

    invoke-direct {v0}, Lcom/google/common/collect/y1;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/y1;->class()Lcom/google/common/collect/y1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y1;->this()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->if:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->for:Ljava/lang/String;

    return-void
.end method

.method private for(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;
    .locals 5
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;",
            "Ljava/util/Set<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;",
            ">;)",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;

    .line 5
    invoke-direct {v3, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->for(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    new-instance p1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    invoke-direct {p1, v3, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;)V

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/IllegalStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object p1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public do(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;)V
    .locals 3

    if-eq p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->new()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempted to acquire multiple locks with the same rank %s"

    .line 2
    invoke-static {v0, v2, v1}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->do:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->if:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;

    .line 6
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;->getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    move-result-object v0

    invoke-direct {v2, p2, p0, v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$do;)V

    .line 7
    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;)V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/common/collect/c3;->extends()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-direct {p2, p0, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->for(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->do:Ljava/util/Map;

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;

    invoke-direct {v0, p2, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;

    invoke-direct {v2, p2, p0, v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$case;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$do;)V

    .line 12
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->if:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$this;)V

    :goto_1
    return-void
.end method

.method public if(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;

    invoke-virtual {p0, p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->do(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$else;->for:Ljava/lang/String;

    return-object v0
.end method
