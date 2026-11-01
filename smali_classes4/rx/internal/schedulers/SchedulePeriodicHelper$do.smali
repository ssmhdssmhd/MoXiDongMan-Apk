.class final Lrx/internal/schedulers/SchedulePeriodicHelper$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulePeriodicHelper;->do(Lrx/if$do;Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic break:J

.field public final synthetic case:Lrx/functions/Action0;

.field public do:J

.field public final synthetic else:Landroid/support/v4/uw1;

.field public for:J

.field public final synthetic goto:Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;

.field public if:J

.field public final synthetic new:J

.field public final synthetic this:Lrx/if$do;

.field public final synthetic try:J


# direct methods
.method public constructor <init>(JJLrx/functions/Action0;Landroid/support/v4/uw1;Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;Lrx/if$do;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->new:J

    iput-wide p3, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->try:J

    iput-object p5, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->case:Lrx/functions/Action0;

    iput-object p6, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->else:Landroid/support/v4/uw1;

    iput-object p7, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->goto:Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;

    iput-object p8, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->this:Lrx/if$do;

    iput-wide p9, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->break:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->if:J

    .line 3
    iput-wide p3, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->for:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 11

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->case:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->else:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->goto:Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;->nowNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->this:Lrx/if$do;

    invoke-virtual {v1}, Lrx/if$do;->do()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 4
    :goto_0
    sget-wide v2, Lrx/internal/schedulers/SchedulePeriodicHelper;->do:J

    add-long v4, v0, v2

    iget-wide v6, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->if:J

    const-wide/16 v8, 0x1

    cmp-long v10, v4, v6

    if-ltz v10, :cond_2

    iget-wide v4, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->break:J

    add-long/2addr v6, v4

    add-long/2addr v6, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v2, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->for:J

    iget-wide v6, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->do:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->do:J

    mul-long v6, v6, v4

    add-long/2addr v2, v6

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    iget-wide v2, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->break:J

    add-long v4, v0, v2

    .line 7
    iget-wide v6, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->do:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->do:J

    mul-long v2, v2, v6

    sub-long v2, v4, v2

    iput-wide v2, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->for:J

    move-wide v2, v4

    .line 8
    :goto_2
    iput-wide v0, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->if:J

    sub-long/2addr v2, v0

    .line 9
    iget-object v0, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->else:Landroid/support/v4/uw1;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulePeriodicHelper$do;->this:Lrx/if$do;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, v2, v3, v4}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/uw1;->replace(Lrx/Subscription;)Z

    :cond_3
    return-void
.end method
