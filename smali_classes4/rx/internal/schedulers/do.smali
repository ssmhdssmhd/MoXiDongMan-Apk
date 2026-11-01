.class public final Lrx/internal/schedulers/do;
.super Lrx/if;
.source "SourceFile"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/do$for;,
        Lrx/internal/schedulers/do$if;,
        Lrx/internal/schedulers/do$do;
    }
.end annotation


# static fields
.field public static final case:Lrx/internal/schedulers/do$do;

.field private static final for:J

.field private static final new:Ljava/util/concurrent/TimeUnit;

.field public static final try:Lrx/internal/schedulers/do$for;


# instance fields
.field public final do:Ljava/util/concurrent/ThreadFactory;

.field public final if:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/schedulers/do$do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/internal/schedulers/do;->new:Ljava/util/concurrent/TimeUnit;

    .line 2
    new-instance v0, Lrx/internal/schedulers/do$for;

    sget-object v1, Lrx/internal/util/case;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/do$for;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/internal/schedulers/do;->try:Lrx/internal/schedulers/do$for;

    .line 3
    invoke-virtual {v0}, Lrx/internal/schedulers/else;->unsubscribe()V

    .line 4
    new-instance v0, Lrx/internal/schedulers/do$do;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v1}, Lrx/internal/schedulers/do$do;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/internal/schedulers/do;->case:Lrx/internal/schedulers/do$do;

    .line 5
    invoke-virtual {v0}, Lrx/internal/schedulers/do$do;->try()V

    const-string v0, "rx.io-scheduler.keepalive"

    const/16 v1, 0x3c

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lrx/internal/schedulers/do;->for:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/do;->do:Ljava/util/concurrent/ThreadFactory;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lrx/internal/schedulers/do;->case:Lrx/internal/schedulers/do$do;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lrx/internal/schedulers/do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {p0}, Lrx/internal/schedulers/do;->start()V

    return-void
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/schedulers/do$if;

    iget-object v1, p0, Lrx/internal/schedulers/do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/schedulers/do$do;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/do$if;-><init>(Lrx/internal/schedulers/do$do;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/do$do;

    .line 2
    sget-object v1, Lrx/internal/schedulers/do;->case:Lrx/internal/schedulers/do$do;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lrx/internal/schedulers/do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lrx/internal/schedulers/do$do;->try()V

    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    new-instance v0, Lrx/internal/schedulers/do$do;

    iget-object v1, p0, Lrx/internal/schedulers/do;->do:Ljava/util/concurrent/ThreadFactory;

    sget-wide v2, Lrx/internal/schedulers/do;->for:J

    sget-object v4, Lrx/internal/schedulers/do;->new:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/schedulers/do$do;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    iget-object v1, p0, Lrx/internal/schedulers/do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/do;->case:Lrx/internal/schedulers/do$do;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lrx/internal/schedulers/do$do;->try()V

    :cond_0
    return-void
.end method
