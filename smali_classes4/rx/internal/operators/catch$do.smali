.class final Lrx/internal/operators/catch$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field public final actual:Lrx/CompletableSubscriber;

.field public final sd:Landroid/support/v4/ww1;

.field public final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/CompletableSubscriber;",
            "Ljava/util/Iterator<",
            "+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/catch$do;->actual:Lrx/CompletableSubscriber;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/catch$do;->sources:Ljava/util/Iterator;

    .line 4
    new-instance p1, Landroid/support/v4/ww1;

    invoke-direct {p1}, Landroid/support/v4/ww1;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/catch$do;->sd:Landroid/support/v4/ww1;

    return-void
.end method


# virtual methods
.method public next()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/catch$do;->sd:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/catch$do;->sources:Ljava/util/Iterator;

    .line 4
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/catch$do;->sd:Landroid/support/v4/ww1;

    invoke-virtual {v1}, Landroid/support/v4/ww1;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 5
    :cond_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 6
    iget-object v0, p0, Lrx/internal/operators/catch$do;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void

    .line 7
    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    .line 8
    iget-object v0, p0, Lrx/internal/operators/catch$do;->actual:Lrx/CompletableSubscriber;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The completable returned is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_5
    invoke-virtual {v1, p0}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :catchall_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lrx/internal/operators/catch$do;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 12
    iget-object v1, p0, Lrx/internal/operators/catch$do;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/catch$do;->next()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/catch$do;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/catch$do;->sd:Landroid/support/v4/ww1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    return-void
.end method
