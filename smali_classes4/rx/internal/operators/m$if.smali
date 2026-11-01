.class final Lrx/internal/operators/m$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/atomic/AtomicInteger;

.field private do:Z

.field public volatile else:Z

.field private final for:Landroid/support/v4/ww1;

.field private final if:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final new:Lrx/internal/producers/do;

.field private final try:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;Landroid/support/v4/ww1;Lrx/internal/producers/do;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Landroid/support/v4/ww1;",
            "Lrx/internal/producers/do;",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/m$if;->do:Z

    .line 3
    iput-object p1, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/m$if;->for:Landroid/support/v4/ww1;

    .line 5
    iput-object p3, p0, Lrx/internal/operators/m$if;->new:Lrx/internal/producers/do;

    .line 6
    iput-object p4, p0, Lrx/internal/operators/m$if;->try:Lrx/Observable;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/m$if;->case:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public do(Lrx/Observable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m$if;->case:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lrx/internal/operators/m$if;->else:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 4
    new-instance v1, Lrx/internal/operators/m$do;

    iget-object v2, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    iget-object v3, p0, Lrx/internal/operators/m$if;->new:Lrx/internal/producers/do;

    invoke-direct {v1, v2, v3}, Lrx/internal/operators/m$do;-><init>(Landroid/support/v4/y22;Lrx/internal/producers/do;)V

    .line 5
    iget-object v2, p0, Lrx/internal/operators/m$if;->for:Landroid/support/v4/ww1;

    invoke-virtual {v2, v1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 6
    iput-boolean v0, p0, Lrx/internal/operators/m$if;->else:Z

    .line 7
    iget-object v0, p0, Lrx/internal/operators/m$if;->try:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    goto :goto_0

    .line 8
    :cond_2
    iput-boolean v0, p0, Lrx/internal/operators/m$if;->else:Z

    .line 9
    invoke-virtual {p1, p0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    const/4 p1, 0x0

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/m$if;->case:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/m$if;->do:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lrx/internal/operators/m$if;->else:Z

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lrx/internal/operators/m$if;->do(Lrx/Observable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/m$if;->do:Z

    .line 2
    iget-object v0, p0, Lrx/internal/operators/m$if;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/m$if;->new:Lrx/internal/producers/do;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lrx/internal/producers/do;->if(J)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m$if;->new:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
