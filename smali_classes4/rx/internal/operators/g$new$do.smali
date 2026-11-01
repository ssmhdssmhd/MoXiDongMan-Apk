.class Lrx/internal/operators/g$new$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$new;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/g$new;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$new;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    iget-object v0, v0, Lrx/internal/operators/g$new;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    iget-object v0, v0, Lrx/internal/operators/g$new;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    iget-object p1, p1, Lrx/internal/operators/g$new;->if:Landroid/support/v4/y22;

    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    iget-object p1, p1, Lrx/internal/operators/g$new;->for:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    iget-object v0, p1, Lrx/internal/operators/g$new;->new:Lrx/if$do;

    iget-object p1, p1, Lrx/internal/operators/g$new;->try:Lrx/functions/Action0;

    invoke-virtual {v0, p1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lrx/internal/operators/g$new$do;->do:Lrx/internal/operators/g$new;

    iget-object p1, p1, Lrx/internal/operators/g$new;->case:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    return-void
.end method
