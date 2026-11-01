.class public final Lrx/internal/schedulers/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# static fields
.field private static final for:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final if:[Ljava/util/concurrent/ScheduledExecutorService;

.field public static final new:Lrx/internal/schedulers/new;

.field private static try:I


# instance fields
.field private final do:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 1
    sput-object v1, Lrx/internal/schedulers/new;->if:[Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/new;->for:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 4
    new-instance v0, Lrx/internal/schedulers/new;

    invoke-direct {v0}, Lrx/internal/schedulers/new;-><init>()V

    sput-object v0, Lrx/internal/schedulers/new;->new:Lrx/internal/schedulers/new;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/new;->if:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/new;->do:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {p0}, Lrx/internal/schedulers/new;->start()V

    return-void
.end method

.method public static do()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    sget-object v0, Lrx/internal/schedulers/new;->new:Lrx/internal/schedulers/new;

    iget-object v0, v0, Lrx/internal/schedulers/new;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    sget-object v1, Lrx/internal/schedulers/new;->if:[Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lrx/internal/schedulers/new;->for:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 4
    :cond_0
    sget v1, Lrx/internal/schedulers/new;->try:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    array-length v2, v0

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 6
    :cond_1
    sput v1, Lrx/internal/schedulers/new;->try:I

    .line 7
    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/new;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    sget-object v1, Lrx/internal/schedulers/new;->if:[Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lrx/internal/schedulers/new;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 5
    invoke-static {v3}, Lrx/internal/schedulers/else;->try(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 6
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 2
    div-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const/16 v0, 0x8

    .line 3
    :cond_1
    new-array v1, v0, [Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    invoke-static {}, Lrx/internal/schedulers/try;->create()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, p0, Lrx/internal/schedulers/new;->do:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lrx/internal/schedulers/new;->if:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    if-ge v2, v0, :cond_5

    .line 6
    aget-object v3, v1, v2

    .line 7
    invoke-static {v3}, Lrx/internal/schedulers/else;->class(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    instance-of v4, v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v4, :cond_3

    .line 9
    check-cast v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v3}, Lrx/internal/schedulers/else;->goto(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v2, v0, :cond_5

    .line 10
    aget-object v3, v1, v2

    .line 11
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
