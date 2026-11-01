.class public abstract Lrx/internal/operators/import;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/import$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final case:I = 0x1

.field public static final else:I = 0x2

.field public static final goto:I = 0x3

.field public static final try:I


# instance fields
.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public if:Z

.field public final new:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/import;->do:Landroid/support/v4/y22;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/import;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public final for(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_5

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4

    .line 1
    iget-object p1, p0, Lrx/internal/operators/import;->do:Landroid/support/v4/y22;

    .line 2
    :cond_0
    iget-object p2, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 4
    iget-object p2, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object p2, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_4
    :goto_0
    return-void

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final if(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/import;->do:Landroid/support/v4/y22;

    .line 2
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 4
    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 7
    :cond_2
    iget-object p1, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void

    .line 8
    :cond_3
    iput-object p1, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lrx/internal/operators/import;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    :goto_0
    return-void
.end method

.method public final new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/import;->do:Landroid/support/v4/y22;

    .line 2
    invoke-virtual {v0, p0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v1, Lrx/internal/operators/import$do;

    invoke-direct {v1, p0}, Lrx/internal/operators/import$do;-><init>(Lrx/internal/operators/import;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/import;->if:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/import;->if(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/import;->do()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lrx/internal/operators/import;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setProducer(Lrx/Producer;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    return-void
.end method

.method public final try(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/import;->new()V

    .line 2
    invoke-virtual {p1, p0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
