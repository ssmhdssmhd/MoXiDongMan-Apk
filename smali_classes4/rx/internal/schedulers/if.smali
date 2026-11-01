.class public final Lrx/internal/schedulers/if;
.super Lrx/if;
.source "SourceFile"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/if$for;,
        Lrx/internal/schedulers/if$do;,
        Lrx/internal/schedulers/if$if;
    }
.end annotation


# static fields
.field public static final case:Lrx/internal/schedulers/if$if;

.field public static final for:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field public static final new:I

.field public static final try:Lrx/internal/schedulers/if$for;


# instance fields
.field public final do:Ljava/util/concurrent/ThreadFactory;

.field public final if:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/schedulers/if$if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "rx.scheduler.max-computation-threads"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    if-lez v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 3
    :cond_1
    sput v0, Lrx/internal/schedulers/if;->new:I

    .line 4
    new-instance v0, Lrx/internal/schedulers/if$for;

    sget-object v2, Lrx/internal/util/case;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v2}, Lrx/internal/schedulers/if$for;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/internal/schedulers/if;->try:Lrx/internal/schedulers/if$for;

    .line 5
    invoke-virtual {v0}, Lrx/internal/schedulers/else;->unsubscribe()V

    .line 6
    new-instance v0, Lrx/internal/schedulers/if$if;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lrx/internal/schedulers/if$if;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lrx/internal/schedulers/if;->case:Lrx/internal/schedulers/if$if;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/if;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/if;->do:Ljava/util/concurrent/ThreadFactory;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lrx/internal/schedulers/if;->case:Lrx/internal/schedulers/if$if;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lrx/internal/schedulers/if;->if:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {p0}, Lrx/internal/schedulers/if;->start()V

    return-void
.end method


# virtual methods
.method public do()Lrx/if$do;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/schedulers/if$do;

    iget-object v1, p0, Lrx/internal/schedulers/if;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/schedulers/if$if;

    invoke-virtual {v1}, Lrx/internal/schedulers/if$if;->do()Lrx/internal/schedulers/if$for;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/schedulers/if$do;-><init>(Lrx/internal/schedulers/if$for;)V

    return-object v0
.end method

.method public new(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/if;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/if$if;

    invoke-virtual {v0}, Lrx/internal/schedulers/if$if;->do()Lrx/internal/schedulers/if$for;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/internal/schedulers/else;->this(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/goto;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/if;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/if$if;

    .line 2
    sget-object v1, Lrx/internal/schedulers/if;->case:Lrx/internal/schedulers/if$if;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lrx/internal/schedulers/if;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lrx/internal/schedulers/if$if;->if()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    new-instance v0, Lrx/internal/schedulers/if$if;

    iget-object v1, p0, Lrx/internal/schedulers/if;->do:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lrx/internal/schedulers/if;->new:I

    invoke-direct {v0, v1, v2}, Lrx/internal/schedulers/if$if;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 2
    iget-object v1, p0, Lrx/internal/schedulers/if;->if:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/if;->case:Lrx/internal/schedulers/if$if;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lrx/internal/schedulers/if$if;->if()V

    :cond_0
    return-void
.end method
