.class public final Lrx/observables/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final for:Ljava/lang/Object;

.field public static final if:Ljava/lang/Object;

.field public static final new:Ljava/lang/Object;


# instance fields
.field private final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/if;->if:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/if;->for:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/if;->new:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/observables/if;->do:Lrx/Observable;

    return-void
.end method

.method private do(Lrx/Observable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    new-instance v3, Lrx/observables/if$for;

    invoke-direct {v3, p0, v2, v1, v0}, Lrx/observables/if$for;-><init>(Lrx/observables/if;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v3}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    move-result-object p1

    .line 5
    invoke-static {v2, p1}, Landroid/support/v4/qa;->do(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static else(Lrx/Observable;)Lrx/observables/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Lrx/observables/if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/if;

    invoke-direct {v0, p0}, Lrx/observables/if;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public break(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->F1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public case(Lrx/functions/Action1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    iget-object v2, p0, Lrx/observables/if;->do:Lrx/Observable;

    new-instance v3, Lrx/observables/if$do;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/observables/if$do;-><init>(Lrx/observables/if;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V

    invoke-virtual {v2, v3}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/qa;->do(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method public catch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->G1(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public class(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->E0(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lrx/Observable;->G1(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public const()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/do;->do(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public default(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/if$this;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/observables/if$this;-><init>(Lrx/observables/if;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/observables/if;->static(Lrx/Observer;)V

    return-void
.end method

.method public extends()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/new;->do(Lrx/Observable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/internal/operators/if;->do(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public finally()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/if$if;

    invoke-direct {v0, p0}, Lrx/observables/if$if;-><init>(Lrx/observables/if;)V

    return-object v0
.end method

.method public for(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->H0(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public goto()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {v0}, Landroid/support/v4/oa;->do(Lrx/Observable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->G0()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public import(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->A3(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public native(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->E0(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lrx/Observable;->A3(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public new(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->I0(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public public()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    iget-object v2, p0, Lrx/observables/if;->do:Lrx/Observable;

    new-instance v4, Lrx/observables/if$new;

    invoke-direct {v4, p0, v1, v0}, Lrx/observables/if$new;-><init>(Lrx/observables/if;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    move-result-object v2

    .line 3
    invoke-static {v0, v2}, Landroid/support/v4/qa;->do(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 4
    aget-object v0, v1, v3

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method public return(Landroid/support/v4/y22;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lrx/Producer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lrx/observables/if$case;

    invoke-direct {v2, p0, v0, v1}, Lrx/observables/if$case;-><init>(Lrx/observables/if;Ljava/util/concurrent/BlockingQueue;[Lrx/Producer;)V

    .line 3
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    new-instance v4, Lrx/observables/if$else;

    invoke-direct {v4, p0, v0}, Lrx/observables/if$else;-><init>(Lrx/observables/if;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v4}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    iget-object v4, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v4, v2}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 6
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lrx/observables/if;->new:Ljava/lang/Object;

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    sget-object v5, Lrx/observables/if;->if:Ljava/lang/Object;

    if-ne v4, v5, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/y22;->onStart()V

    goto :goto_0

    .line 12
    :cond_4
    sget-object v5, Lrx/observables/if;->for:Ljava/lang/Object;

    if-ne v4, v5, :cond_5

    .line 13
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {p1, v4}, Lrx/internal/operators/return;->do(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v2}, Landroid/support/v4/y22;->unsubscribe()V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/y22;->unsubscribe()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 17
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 18
    :goto_3
    invoke-virtual {v2}, Landroid/support/v4/y22;->unsubscribe()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public static(Lrx/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    iget-object v1, p0, Lrx/observables/if;->do:Lrx/Observable;

    new-instance v2, Lrx/observables/if$try;

    invoke-direct {v2, p0, v0}, Lrx/observables/if$try;-><init>(Lrx/observables/if;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    move-result-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 5
    :cond_1
    invoke-static {p1, v2}, Lrx/internal/operators/return;->do(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 8
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :goto_0
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public super()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/for;->do(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public switch(Lrx/functions/Action1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/observables/if$goto;

    invoke-direct {v0, p0}, Lrx/observables/if$goto;-><init>(Lrx/observables/if;)V

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lrx/observables/if;->default(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    return-void
.end method

.method public this()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->E1()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public throw()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->y3()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public throws(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lrx/observables/if;->default(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    return-void
.end method

.method public try(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->E0(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lrx/Observable;->I0(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public while(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if;->do:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->z3(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/observables/if;->do(Lrx/Observable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
