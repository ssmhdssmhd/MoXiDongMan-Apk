.class Lrx/internal/schedulers/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# instance fields
.field private final do:Lrx/functions/Action0;

.field private final for:J

.field private final if:Lrx/if$do;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;Lrx/if$do;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/break;->do:Lrx/functions/Action0;

    .line 3
    iput-object p2, p0, Lrx/internal/schedulers/break;->if:Lrx/if$do;

    .line 4
    iput-wide p3, p0, Lrx/internal/schedulers/break;->for:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/break;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lrx/internal/schedulers/break;->for:J

    iget-object v2, p0, Lrx/internal/schedulers/break;->if:Lrx/if$do;

    invoke-virtual {v2}, Lrx/if$do;->do()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lrx/internal/schedulers/break;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lrx/internal/schedulers/break;->do:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    return-void
.end method
