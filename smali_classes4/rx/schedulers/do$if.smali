.class final Lrx/schedulers/do$if;
.super Lrx/if$do;
.source "SourceFile"

# interfaces
.implements Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field private final do:Lrx/subscriptions/do;

.field public final synthetic if:Lrx/schedulers/do;


# direct methods
.method public constructor <init>(Lrx/schedulers/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    new-instance p1, Lrx/subscriptions/do;

    invoke-direct {p1}, Lrx/subscriptions/do;-><init>()V

    iput-object p1, p0, Lrx/schedulers/do$if;->do:Lrx/subscriptions/do;

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    invoke-virtual {v0}, Lrx/schedulers/do;->if()J

    move-result-wide v0

    return-wide v0
.end method

.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 3

    .line 1
    new-instance v0, Lrx/schedulers/do$for;

    iget-object v1, p0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    iget-wide v1, v1, Lrx/schedulers/do;->if:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    add-long/2addr v1, p2

    invoke-direct {v0, p0, v1, v2, p1}, Lrx/schedulers/do$for;-><init>(Lrx/if$do;JLrx/functions/Action0;)V

    .line 2
    iget-object p1, p0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    iget-object p1, p1, Lrx/schedulers/do;->do:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lrx/schedulers/do$if$do;

    invoke-direct {p1, p0, v0}, Lrx/schedulers/do$if$do;-><init>(Lrx/schedulers/do$if;Lrx/schedulers/do$for;)V

    invoke-static {p1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3

    .line 1
    new-instance v0, Lrx/schedulers/do$for;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lrx/schedulers/do$for;-><init>(Lrx/if$do;JLrx/functions/Action0;)V

    .line 2
    iget-object p1, p0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    iget-object p1, p1, Lrx/schedulers/do;->do:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lrx/schedulers/do$if$if;

    invoke-direct {p1, p0, v0}, Lrx/schedulers/do$if$if;-><init>(Lrx/schedulers/do$if;Lrx/schedulers/do$for;)V

    invoke-static {p1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/schedulers/do$if;->do:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public new(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p0

    .line 1
    invoke-static/range {v0 .. v7}, Lrx/internal/schedulers/SchedulePeriodicHelper;->do(Lrx/if$do;Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;Lrx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public nowNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/schedulers/do$if;->if:Lrx/schedulers/do;

    iget-wide v0, v0, Lrx/schedulers/do;->if:J

    return-wide v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/schedulers/do$if;->do:Lrx/subscriptions/do;

    invoke-virtual {v0}, Lrx/subscriptions/do;->unsubscribe()V

    return-void
.end method
