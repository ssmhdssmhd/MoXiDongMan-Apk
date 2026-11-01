.class final Lrx/internal/schedulers/catch$do;
.super Lrx/if$do;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final for:Lrx/subscriptions/do;

.field public final if:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lrx/internal/schedulers/catch$if;",
            ">;"
        }
    .end annotation
.end field

.field private final new:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/catch$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/catch$do;->if:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 4
    new-instance v0, Lrx/subscriptions/do;

    invoke-direct {v0}, Lrx/subscriptions/do;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/catch$do;->for:Lrx/subscriptions/do;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/catch$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private try(Lrx/functions/Action0;J)Lrx/Subscription;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/catch$do;->for:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lrx/internal/schedulers/catch$if;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lrx/internal/schedulers/catch$do;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/schedulers/catch$if;-><init>(Lrx/functions/Action0;Ljava/lang/Long;I)V

    .line 4
    iget-object p1, p0, Lrx/internal/schedulers/catch$do;->if:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lrx/internal/schedulers/catch$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 6
    :cond_1
    iget-object p1, p0, Lrx/internal/schedulers/catch$do;->if:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/internal/schedulers/catch$if;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p1, Lrx/internal/schedulers/catch$if;->do:Lrx/functions/Action0;

    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    .line 8
    :cond_2
    iget-object p1, p0, Lrx/internal/schedulers/catch$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_1

    .line 9
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    new-instance p1, Lrx/internal/schedulers/catch$do$do;

    invoke-direct {p1, p0, v0}, Lrx/internal/schedulers/catch$do$do;-><init>(Lrx/internal/schedulers/catch$do;Lrx/internal/schedulers/catch$if;)V

    invoke-static {p1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/if$do;->do()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 2
    new-instance p2, Lrx/internal/schedulers/break;

    invoke-direct {p2, p1, p0, v0, v1}, Lrx/internal/schedulers/break;-><init>(Lrx/functions/Action0;Lrx/if$do;J)V

    invoke-direct {p0, p2, v0, v1}, Lrx/internal/schedulers/catch$do;->try(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/if$do;->do()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/internal/schedulers/catch$do;->try(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/catch$do;->for:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/catch$do;->for:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->unsubscribe()V

    return-void
.end method
