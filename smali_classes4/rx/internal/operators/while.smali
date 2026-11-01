.class public final Lrx/internal/operators/while;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# instance fields
.field public final do:Lrx/Completable;

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lrx/if;

.field public final try:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Completable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/while;->do:Lrx/Completable;

    .line 3
    iput-wide p2, p0, Lrx/internal/operators/while;->if:J

    .line 4
    iput-object p4, p0, Lrx/internal/operators/while;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lrx/internal/operators/while;->new:Lrx/if;

    .line 6
    iput-object p6, p0, Lrx/internal/operators/while;->try:Lrx/Completable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/while;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    iget-object v2, p0, Lrx/internal/operators/while;->new:Lrx/if;

    invoke-virtual {v2}, Lrx/if;->do()Lrx/if$do;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 6
    new-instance v3, Lrx/internal/operators/while$do;

    invoke-direct {v3, p0, v1, v0, p1}, Lrx/internal/operators/while$do;-><init>(Lrx/internal/operators/while;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/support/v4/dq;Lrx/CompletableSubscriber;)V

    iget-wide v4, p0, Lrx/internal/operators/while;->if:J

    iget-object v6, p0, Lrx/internal/operators/while;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 7
    iget-object v2, p0, Lrx/internal/operators/while;->do:Lrx/Completable;

    new-instance v3, Lrx/internal/operators/while$if;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/internal/operators/while$if;-><init>(Lrx/internal/operators/while;Landroid/support/v4/dq;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/CompletableSubscriber;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void
.end method
