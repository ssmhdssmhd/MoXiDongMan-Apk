.class public final Lrx/internal/operators/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lrx/observables/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/for<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile if:Landroid/support/v4/dq;

.field public final new:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lrx/observables/for;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/for<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/j;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    iput-object p1, p0, Lrx/internal/operators/j;->do:Lrx/observables/for;

    return-void
.end method

.method public static synthetic do(Lrx/internal/operators/j;)Lrx/observables/for;
    .locals 0

    .line 1
    iget-object p0, p0, Lrx/internal/operators/j;->do:Lrx/observables/for;

    return-object p0
.end method

.method private for(Landroid/support/v4/dq;)Lrx/Subscription;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/j$for;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/j$for;-><init>(Lrx/internal/operators/j;Landroid/support/v4/dq;)V

    invoke-static {v0}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method private try(Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lrx/functions/Action1<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/j$do;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/j$do;-><init>(Lrx/internal/operators/j;Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/j;->if(Landroid/support/v4/y22;)V

    return-void
.end method

.method public if(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/j;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/j;->do:Lrx/observables/for;

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/j;->try(Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lrx/observables/for;->i6(Lrx/functions/Action1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    throw p1

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    invoke-virtual {p0, p1, v0}, Lrx/internal/operators/j;->new(Landroid/support/v4/y22;Landroid/support/v4/dq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget-object p1, p0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public new(Landroid/support/v4/y22;Landroid/support/v4/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Landroid/support/v4/dq;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lrx/internal/operators/j;->for(Landroid/support/v4/dq;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/j;->do:Lrx/observables/for;

    new-instance v1, Lrx/internal/operators/j$if;

    invoke-direct {v1, p0, p1, p1, p2}, Lrx/internal/operators/j$if;-><init>(Lrx/internal/operators/j;Landroid/support/v4/y22;Landroid/support/v4/y22;Landroid/support/v4/dq;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
