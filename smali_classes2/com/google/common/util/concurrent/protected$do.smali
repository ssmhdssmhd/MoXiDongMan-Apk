.class Lcom/google/common/util/concurrent/protected$do;
.super Lcom/google/common/util/concurrent/extends;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/extends<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final case:Ljava/util/concurrent/Executor;

.field private static final try:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final do:Ljava/util/concurrent/Executor;

.field private final for:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final if:Lcom/google/common/util/concurrent/while;

.field private final new:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/i;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/i;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/i;->try(Z)Lcom/google/common/util/concurrent/i;

    move-result-object v0

    const-string v1, "ListenableFutureAdapter-thread-%d"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/i;->case(Ljava/lang/String;)Lcom/google/common/util/concurrent/i;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->if()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/protected$do;->try:Ljava/util/concurrent/ThreadFactory;

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/protected$do;->case:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/protected$do;->case:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/protected$do;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/extends;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/while;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/while;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/protected$do;->if:Lcom/google/common/util/concurrent/while;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/protected$do;->for:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/common/util/concurrent/protected$do;->new:Ljava/util/concurrent/Future;

    .line 6
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/protected$do;->do:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic for(Lcom/google/common/util/concurrent/protected$do;)Lcom/google/common/util/concurrent/while;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/protected$do;->if:Lcom/google/common/util/concurrent/while;

    return-object p0
.end method

.method public static synthetic if(Lcom/google/common/util/concurrent/protected$do;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/protected$do;->new:Ljava/util/concurrent/Future;

    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/protected$do;->if:Lcom/google/common/util/concurrent/while;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/while;->do(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2
    iget-object p1, p0, Lcom/google/common/util/concurrent/protected$do;->for:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/common/util/concurrent/protected$do;->new:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/common/util/concurrent/protected$do;->if:Lcom/google/common/util/concurrent/while;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/while;->if()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/protected$do;->do:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/common/util/concurrent/protected$do$do;

    invoke-direct {p2, p0}, Lcom/google/common/util/concurrent/protected$do$do;-><init>(Lcom/google/common/util/concurrent/protected$do;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/protected$do;->do()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public do()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/protected$do;->new:Ljava/util/concurrent/Future;

    return-object v0
.end method
