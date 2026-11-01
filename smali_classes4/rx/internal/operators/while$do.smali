.class Lrx/internal/operators/while$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/while;->do(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic for:Lrx/CompletableSubscriber;

.field public final synthetic if:Landroid/support/v4/dq;

.field public final synthetic new:Lrx/internal/operators/while;


# direct methods
.method public constructor <init>(Lrx/internal/operators/while;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/support/v4/dq;Lrx/CompletableSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/while$do;->new:Lrx/internal/operators/while;

    iput-object p2, p0, Lrx/internal/operators/while$do;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/internal/operators/while$do;->if:Landroid/support/v4/dq;

    iput-object p4, p0, Lrx/internal/operators/while$do;->for:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/while$do;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lrx/internal/operators/while$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->for()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/while$do;->new:Lrx/internal/operators/while;

    iget-object v0, v0, Lrx/internal/operators/while;->try:Lrx/Completable;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/internal/operators/while$do;->for:Lrx/CompletableSubscriber;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lrx/internal/operators/while$do$do;

    invoke-direct {v1, p0}, Lrx/internal/operators/while$do$do;-><init>(Lrx/internal/operators/while$do;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    :cond_1
    :goto_0
    return-void
.end method
