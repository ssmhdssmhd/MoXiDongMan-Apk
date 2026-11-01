.class public abstract Landroid/support/v4/y22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final NOT_SET:J = -0x8000000000000000L


# instance fields
.field private producer:Lrx/Producer;

.field private requested:J

.field private final subscriber:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Landroid/support/v4/d32;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "*>;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Landroid/support/v4/y22;->requested:J

    .line 5
    iput-object p1, p0, Landroid/support/v4/y22;->subscriber:Landroid/support/v4/y22;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Landroid/support/v4/y22;->subscriptions:Landroid/support/v4/d32;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/d32;

    invoke-direct {p1}, Landroid/support/v4/d32;-><init>()V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/y22;->subscriptions:Landroid/support/v4/d32;

    return-void
.end method

.method private addToRequested(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/support/v4/y22;->requested:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide p1, p0, Landroid/support/v4/y22;->requested:J

    goto :goto_0

    :cond_0
    add-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 3
    iput-wide p1, p0, Landroid/support/v4/y22;->requested:J

    goto :goto_0

    .line 4
    :cond_1
    iput-wide v0, p0, Landroid/support/v4/y22;->requested:J

    :goto_0
    return-void
.end method


# virtual methods
.method public final add(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y22;->subscriptions:Landroid/support/v4/d32;

    invoke-virtual {v0, p1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y22;->subscriptions:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/y22;->producer:Lrx/Producer;

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/y22;->addToRequested(J)V

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number requested cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroid/support/v4/y22;->requested:J

    .line 3
    iput-object p1, p0, Landroid/support/v4/y22;->producer:Lrx/Producer;

    .line 4
    iget-object v2, p0, Landroid/support/v4/y22;->subscriber:Landroid/support/v4/y22;

    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v2, :cond_0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v2, p1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    goto :goto_1

    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    .line 7
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y22;->subscriptions:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->unsubscribe()V

    return-void
.end method
