.class public final Lcom/google/common/util/concurrent/import;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/import$try;
    }
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/google/common/util/concurrent/private;->class(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/import;->do:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static do()Lcom/google/common/util/concurrent/import;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/import;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/import;-><init>()V

    return-object v0
.end method


# virtual methods
.method public for(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/common/util/concurrent/import$try;->NOT_RUN:Lcom/google/common/util/concurrent/import$try;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/import$if;

    invoke-direct {v0, p0, v4, p1}, Lcom/google/common/util/concurrent/import$if;-><init>(Lcom/google/common/util/concurrent/import;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/common/util/concurrent/AsyncCallable;)V

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/e;->strictfp()Lcom/google/common/util/concurrent/e;

    move-result-object v5

    .line 5
    iget-object p1, p0, Lcom/google/common/util/concurrent/import;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    new-instance p1, Lcom/google/common/util/concurrent/import$for;

    invoke-direct {p1, p0, v6, p2}, Lcom/google/common/util/concurrent/import$for;-><init>(Lcom/google/common/util/concurrent/import;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/private;->native(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/common/util/concurrent/private;->super(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 9
    new-instance v7, Lcom/google/common/util/concurrent/import$new;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/import$new;-><init>(Lcom/google/common/util/concurrent/import;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 10
    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public if(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/import$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/import$do;-><init>(Lcom/google/common/util/concurrent/import;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/import;->for(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
