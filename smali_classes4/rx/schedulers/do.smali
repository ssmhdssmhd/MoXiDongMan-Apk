.class public Lrx/schedulers/do;
.super Lrx/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/do$if;,
        Lrx/schedulers/do$do;,
        Lrx/schedulers/do$for;
    }
.end annotation


# static fields
.field public static for:J


# instance fields
.field public final do:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/schedulers/do$for;",
            ">;"
        }
    .end annotation
.end field

.field public if:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    .line 2
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lrx/schedulers/do$do;

    invoke-direct {v1}, Lrx/schedulers/do$do;-><init>()V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lrx/schedulers/do;->do:Ljava/util/Queue;

    return-void
.end method

.method private else(J)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/schedulers/do;->do:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lrx/schedulers/do;->do:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/do$for;

    .line 3
    iget-wide v1, v0, Lrx/schedulers/do$for;->do:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 4
    iget-wide v1, p0, Lrx/schedulers/do;->if:J

    :cond_2
    iput-wide v1, p0, Lrx/schedulers/do;->if:J

    .line 5
    iget-object v1, p0, Lrx/schedulers/do;->do:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lrx/schedulers/do$for;->for:Lrx/if$do;

    invoke-interface {v1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v0, v0, Lrx/schedulers/do$for;->if:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iput-wide p1, p0, Lrx/schedulers/do;->if:J

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/schedulers/do;->if:J

    invoke-direct {p0, v0, v1}, Lrx/schedulers/do;->else(J)V

    return-void
.end method

.method public do()Lrx/if$do;
    .locals 1

    .line 1
    new-instance v0, Lrx/schedulers/do$if;

    invoke-direct {v0, p0}, Lrx/schedulers/do$if;-><init>(Lrx/schedulers/do;)V

    return-object v0
.end method

.method public if()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lrx/schedulers/do;->if:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public new(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/schedulers/do;->if:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lrx/schedulers/do;->try(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public try(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 2
    invoke-direct {p0, p1, p2}, Lrx/schedulers/do;->else(J)V

    return-void
.end method
