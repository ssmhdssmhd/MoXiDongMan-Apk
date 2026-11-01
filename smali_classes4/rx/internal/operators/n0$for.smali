.class public final Lrx/internal/operators/n0$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/n0$for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final while:Ljava/lang/Object;


# instance fields
.field public final break:Lrx/internal/producers/do;

.field public final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/n0$new<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final catch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final class:Ljava/util/concurrent/atomic/AtomicLong;

.field public final const:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/observables/new<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final else:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/observables/new<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final:Ljava/lang/Throwable;

.field public final for:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field public final goto:Lrx/internal/operators/n0$if;

.field public final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field public final new:I

.field public volatile super:Z

.field public final this:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final throw:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/n0$for;->while:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/observables/new<",
            "TK;TV;>;>;",
            "Lrx/functions/Func1<",
            "-TT;+TK;>;",
            "Lrx/functions/Func1<",
            "-TT;+TV;>;IZ",
            "Lrx/functions/Func1<",
            "Lrx/functions/Action1<",
            "TK;>;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/n0$for;->do:Landroid/support/v4/y22;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/n0$for;->if:Lrx/functions/Func1;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/n0$for;->for:Lrx/functions/Func1;

    .line 5
    iput p4, p0, Lrx/internal/operators/n0$for;->new:I

    .line 6
    iput-boolean p5, p0, Lrx/internal/operators/n0$for;->try:Z

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->else:Ljava/util/Queue;

    .line 8
    new-instance p1, Lrx/internal/producers/do;

    invoke-direct {p1}, Lrx/internal/producers/do;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->break:Lrx/internal/producers/do;

    int-to-long p2, p4

    .line 9
    invoke-virtual {p1, p2, p3}, Lrx/internal/producers/do;->request(J)V

    .line 10
    new-instance p1, Lrx/internal/operators/n0$if;

    invoke-direct {p1, p0}, Lrx/internal/operators/n0$if;-><init>(Lrx/internal/operators/n0$for;)V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->goto:Lrx/internal/operators/n0$if;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->catch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->class:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->throw:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p6, :cond_0

    .line 15
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lrx/internal/operators/n0$for;->this:Ljava/util/Queue;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/n0$for;->this:Ljava/util/Queue;

    .line 18
    new-instance p2, Lrx/internal/operators/n0$for$do;

    invoke-direct {p2, p1}, Lrx/internal/operators/n0$for$do;-><init>(Ljava/util/Queue;)V

    invoke-direct {p0, p6, p2}, Lrx/internal/operators/n0$for;->new(Lrx/functions/Func1;Lrx/functions/Action1;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method private new(Lrx/functions/Func1;Lrx/functions/Action1;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Lrx/functions/Action1<",
            "TK;>;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lrx/functions/Action1<",
            "TK;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/n0$new<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public case(Landroid/support/v4/y22;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/observables/new<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/n0$for;->this:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/n0$new;

    .line 7
    invoke-virtual {v0, p3}, Lrx/internal/operators/n0$new;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1, p3}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$for;->catch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/n0$for;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public else(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$for;->class:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/n0$for;->try()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/observables/new<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lrx/internal/operators/n0$for;->final:Ljava/lang/Throwable;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4, p1}, Lrx/internal/operators/n0$for;->case(Landroid/support/v4/y22;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lrx/internal/operators/n0$for;->do:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lrx/internal/operators/n0$for;->while:Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lrx/internal/operators/n0$for;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/n0$for;->super:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/n0$new;

    .line 3
    invoke-virtual {v1}, Lrx/internal/operators/n0$new;->i6()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v0, p0, Lrx/internal/operators/n0$for;->this:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lrx/internal/operators/n0$for;->super:Z

    .line 8
    iget-object v0, p0, Lrx/internal/operators/n0$for;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    invoke-virtual {p0}, Lrx/internal/operators/n0$for;->try()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/n0$for;->super:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/n0$for;->final:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lrx/internal/operators/n0$for;->super:Z

    .line 5
    iget-object p1, p0, Lrx/internal/operators/n0$for;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 6
    invoke-virtual {p0}, Lrx/internal/operators/n0$for;->try()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/n0$for;->super:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/n0$for;->else:Ljava/util/Queue;

    .line 3
    iget-object v1, p0, Lrx/internal/operators/n0$for;->do:Landroid/support/v4/y22;

    .line 4
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/n0$for;->if:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v4, v2

    goto :goto_0

    .line 5
    :cond_1
    sget-object v4, Lrx/internal/operators/n0$for;->while:Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object v5, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/internal/operators/n0$new;

    if-nez v5, :cond_3

    .line 7
    iget-object v3, p0, Lrx/internal/operators/n0$for;->catch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    iget v3, p0, Lrx/internal/operators/n0$for;->new:I

    iget-boolean v5, p0, Lrx/internal/operators/n0$for;->try:Z

    invoke-static {v2, v3, p0, v5}, Lrx/internal/operators/n0$new;->h6(Ljava/lang/Object;ILrx/internal/operators/n0$for;Z)Lrx/internal/operators/n0$new;

    move-result-object v5

    .line 9
    iget-object v2, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lrx/internal/operators/n0$for;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 11
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/n0$for;->for:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v5, p1}, Lrx/internal/operators/n0$new;->onNext(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lrx/internal/operators/n0$for;->this:Ljava/util/Queue;

    if-eqz p1, :cond_5

    .line 14
    :cond_4
    :goto_2
    iget-object p1, p0, Lrx/internal/operators/n0$for;->this:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    iget-object v1, p0, Lrx/internal/operators/n0$for;->case:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/internal/operators/n0$new;

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Lrx/internal/operators/n0$new;->i6()V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 17
    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lrx/internal/operators/n0$for;->try()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 20
    invoke-virtual {p0, v1, v0, p1}, Lrx/internal/operators/n0$for;->case(Landroid/support/v4/y22;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 21
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lrx/internal/operators/n0$for;->case(Landroid/support/v4/y22;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$for;->break:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method

.method public try()V
    .locals 13

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$for;->throw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/n0$for;->else:Ljava/util/Queue;

    .line 3
    iget-object v1, p0, Lrx/internal/operators/n0$for;->do:Landroid/support/v4/y22;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_1
    iget-boolean v4, p0, Lrx/internal/operators/n0$for;->super:Z

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1, v0}, Lrx/internal/operators/n0$for;->for(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/n0$for;->class:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_6

    .line 6
    iget-boolean v10, p0, Lrx/internal/operators/n0$for;->super:Z

    .line 7
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/observables/new;

    if-nez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0, v10, v12, v1, v0}, Lrx/internal/operators/n0$for;->for(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    :cond_4
    if-eqz v12, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-interface {v1, v11}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_6
    :goto_2
    cmp-long v10, v8, v6

    if-eqz v10, :cond_8

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_7

    .line 10
    iget-object v4, p0, Lrx/internal/operators/n0$for;->class:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v8, v9}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 11
    :cond_7
    iget-object v4, p0, Lrx/internal/operators/n0$for;->break:Lrx/internal/producers/do;

    invoke-virtual {v4, v8, v9}, Lrx/internal/producers/do;->request(J)V

    .line 12
    :cond_8
    iget-object v4, p0, Lrx/internal/operators/n0$for;->throw:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method
