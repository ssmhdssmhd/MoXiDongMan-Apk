.class final Lrx/internal/operators/break$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field public final actual:Lrx/CompletableSubscriber;

.field public index:I

.field public final sd:Landroid/support/v4/ww1;

.field public final sources:[Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;[Lrx/Completable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/break$do;->actual:Lrx/CompletableSubscriber;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/break$do;->sources:[Lrx/Completable;

    .line 4
    new-instance p1, Landroid/support/v4/ww1;

    invoke-direct {p1}, Landroid/support/v4/ww1;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/break$do;->sd:Landroid/support/v4/ww1;

    return-void
.end method


# virtual methods
.method public next()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/break$do;->sd:Landroid/support/v4/ww1;

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
    iget-object v0, p0, Lrx/internal/operators/break$do;->sources:[Lrx/Completable;

    .line 4
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/break$do;->sd:Landroid/support/v4/ww1;

    invoke-virtual {v1}, Landroid/support/v4/ww1;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 5
    :cond_3
    iget v1, p0, Lrx/internal/operators/break$do;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/internal/operators/break$do;->index:I

    .line 6
    array-length v2, v0

    if-ne v1, v2, :cond_4

    .line 7
    iget-object v0, p0, Lrx/internal/operators/break$do;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void

    .line 8
    :cond_4
    aget-object v1, v0, v1

    invoke-virtual {v1, p0}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/break$do;->next()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/break$do;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/break$do;->sd:Landroid/support/v4/ww1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    return-void
.end method
