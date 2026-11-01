.class public final Lio/reactivex/schedulers/if;
.super Lio/reactivex/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/if$do;,
        Lio/reactivex/schedulers/if$if;
    }
.end annotation


# instance fields
.field public for:J

.field public final if:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/schedulers/if$if;",
            ">;"
        }
    .end annotation
.end field

.field public volatile new:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    .line 5
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/schedulers/if;->new:J

    return-void
.end method

.method private const(J)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/schedulers/if$if;

    if-eqz v0, :cond_3

    .line 2
    iget-wide v1, v0, Lio/reactivex/schedulers/if$if;->do:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 3
    iget-wide v1, p0, Lio/reactivex/schedulers/if;->new:J

    :cond_2
    iput-wide v1, p0, Lio/reactivex/schedulers/if;->new:J

    .line 4
    iget-object v1, p0, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v0, Lio/reactivex/schedulers/if$if;->for:Lio/reactivex/schedulers/if$do;

    iget-boolean v1, v1, Lio/reactivex/schedulers/if$do;->do:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v0, v0, Lio/reactivex/schedulers/if$if;->if:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    iput-wide p1, p0, Lio/reactivex/schedulers/if;->new:J

    return-void
.end method


# virtual methods
.method public break(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/reactivex/schedulers/if;->new:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/schedulers/if;->catch(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public catch(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 2
    invoke-direct {p0, p1, p2}, Lio/reactivex/schedulers/if;->const(J)V

    return-void
.end method

.method public class()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/reactivex/schedulers/if;->new:J

    invoke-direct {p0, v0, v1}, Lio/reactivex/schedulers/if;->const(J)V

    return-void
.end method

.method public for(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lio/reactivex/schedulers/if;->new:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public if()Lio/reactivex/try$for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/schedulers/if$do;

    invoke-direct {v0, p0}, Lio/reactivex/schedulers/if$do;-><init>(Lio/reactivex/schedulers/if;)V

    return-object v0
.end method
