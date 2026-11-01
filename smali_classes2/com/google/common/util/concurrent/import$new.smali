.class Lcom/google/common/util/concurrent/import$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/import;->for(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/google/common/util/concurrent/import;

.field public final synthetic do:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic for:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic if:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic new:Lcom/google/common/util/concurrent/e;

.field public final synthetic try:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/import;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/import$new;->case:Lcom/google/common/util/concurrent/import;

    iput-object p2, p0, Lcom/google/common/util/concurrent/import$new;->do:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/common/util/concurrent/import$new;->if:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/common/util/concurrent/import$new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/google/common/util/concurrent/import$new;->new:Lcom/google/common/util/concurrent/e;

    iput-object p6, p0, Lcom/google/common/util/concurrent/import$new;->try:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/import$new;->do:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/import$new;->if:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/import$new;->for:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/import$try;->NOT_RUN:Lcom/google/common/util/concurrent/import$try;

    sget-object v2, Lcom/google/common/util/concurrent/import$try;->CANCELLED:Lcom/google/common/util/concurrent/import$try;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/import$new;->new:Lcom/google/common/util/concurrent/e;

    iget-object v1, p0, Lcom/google/common/util/concurrent/import$new;->try:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/e;->abstract(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    :cond_1
    return-void
.end method
