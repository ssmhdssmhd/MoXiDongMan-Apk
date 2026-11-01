.class final Lio/reactivex/internal/operators/observable/k2$do;
.super Lio/reactivex/internal/observers/try;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/k2$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/try<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/new<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:J

.field public final d:Lio/reactivex/try$for;

.field public e:J

.field public f:J

.field public g:Lio/reactivex/disposables/Disposable;

.field public h:Lio/reactivex/subjects/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/this<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public final implements:J

.field public final instanceof:Ljava/util/concurrent/TimeUnit;

.field public final j:Landroid/support/v4/tw1;

.field public final synchronized:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/new<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "IJZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/do;

    invoke-direct {v0}, Lio/reactivex/internal/queue/do;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/try;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 2
    new-instance p1, Landroid/support/v4/tw1;

    invoke-direct {p1}, Landroid/support/v4/tw1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/k2$do;->implements:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/k2$do;->instanceof:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/k2$do;->synchronized:Lio/reactivex/try;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/observable/k2$do;->a:I

    .line 7
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/k2$do;->c:J

    .line 8
    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/k2$do;->b:Z

    if-eqz p9, :cond_0

    .line 9
    invoke-virtual {p5}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->d:Lio/reactivex/try$for;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->d:Lio/reactivex/try$for;

    :goto_0
    return-void
.end method

.method public static synthetic new(Lio/reactivex/internal/operators/observable/k2$do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/reactivex/internal/observers/try;->interface:Z

    return p0
.end method

.method public static synthetic try(Lio/reactivex/internal/operators/observable/k2$do;)Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/internal/observers/try;->volatile:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-object p0
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    invoke-static {v0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->d:Lio/reactivex/try$for;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/try;->interface:Z

    return-void
.end method

.method public else()V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/try;->volatile:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    check-cast v0, Lio/reactivex/internal/queue/do;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/try;->strictfp:Lio/reactivex/Observer;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->i:Z

    if-eqz v5, :cond_1

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->g:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k2$do;->case()V

    return-void

    .line 8
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/observers/try;->protected:Z

    .line 9
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 10
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/observable/k2$do$do;

    if-eqz v5, :cond_5

    if-nez v7, :cond_3

    if-eqz v8, :cond_5

    :cond_3
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    .line 12
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/observers/try;->transient:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v2, v0}, Lio/reactivex/subjects/this;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v2}, Lio/reactivex/subjects/this;->onComplete()V

    .line 16
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k2$do;->case()V

    return-void

    :cond_5
    if-eqz v7, :cond_6

    neg-int v4, v4

    .line 17
    invoke-virtual {p0, v4}, Lio/reactivex/internal/observers/try;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_8

    .line 18
    check-cast v6, Lio/reactivex/internal/operators/observable/k2$do$do;

    .line 19
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->b:Z

    if-eqz v5, :cond_7

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    iget-wide v5, v6, Lio/reactivex/internal/operators/observable/k2$do$do;->do:J

    cmp-long v11, v7, v5

    if-nez v11, :cond_0

    .line 20
    :cond_7
    invoke-virtual {v2}, Lio/reactivex/subjects/this;->onComplete()V

    .line 21
    iput-wide v9, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    .line 22
    iget v2, p0, Lio/reactivex/internal/operators/observable/k2$do;->a:I

    invoke-static {v2}, Lio/reactivex/subjects/this;->else(I)Lio/reactivex/subjects/this;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    .line 24
    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_8
    invoke-static {v6}, Lio/reactivex/internal/util/break;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/subjects/this;->onNext(Ljava/lang/Object;)V

    .line 26
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 27
    iget-wide v11, p0, Lio/reactivex/internal/operators/observable/k2$do;->c:J

    cmp-long v13, v5, v11

    if-ltz v13, :cond_9

    .line 28
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    .line 29
    iput-wide v9, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    .line 30
    invoke-virtual {v2}, Lio/reactivex/subjects/this;->onComplete()V

    .line 31
    iget v2, p0, Lio/reactivex/internal/operators/observable/k2$do;->a:I

    invoke-static {v2}, Lio/reactivex/subjects/this;->else(I)Lio/reactivex/subjects/this;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    .line 33
    iget-object v5, p0, Lio/reactivex/internal/observers/try;->strictfp:Lio/reactivex/Observer;

    invoke-interface {v5, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 34
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->b:Z

    if-eqz v5, :cond_0

    .line 35
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/disposables/Disposable;

    .line 36
    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 37
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/k2$do;->d:Lio/reactivex/try$for;

    new-instance v7, Lio/reactivex/internal/operators/observable/k2$do$do;

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    invoke-direct {v7, v8, v9, p0}, Lio/reactivex/internal/operators/observable/k2$do$do;-><init>(JLio/reactivex/internal/operators/observable/k2$do;)V

    iget-wide v10, p0, Lio/reactivex/internal/operators/observable/k2$do;->implements:J

    iget-object v12, p0, Lio/reactivex/internal/operators/observable/k2$do;->instanceof:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v10

    invoke-virtual/range {v6 .. v12}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v6

    .line 38
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto/16 :goto_0

    .line 40
    :cond_9
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/try;->interface:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/try;->protected:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/try;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k2$do;->else()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/try;->strictfp:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/try;->transient:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/try;->protected:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/try;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k2$do;->else()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/try;->strictfp:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/try;->do()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/this;->onNext(Ljava/lang/Object;)V

    .line 5
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 6
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->c:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    .line 7
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    .line 9
    invoke-virtual {v0}, Lio/reactivex/subjects/this;->onComplete()V

    .line 10
    iget p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->a:I

    invoke-static {p1}, Lio/reactivex/subjects/this;->else(I)Lio/reactivex/subjects/this;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/observers/try;->strictfp:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 13
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->b:Z

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    .line 15
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 16
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->d:Lio/reactivex/try$for;

    new-instance v1, Lio/reactivex/internal/operators/observable/k2$do$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/k2$do$do;-><init>(JLio/reactivex/internal/operators/observable/k2$do;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/k2$do;->implements:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/k2$do;->instanceof:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/do;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 18
    :cond_1
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->e:J

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 19
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/try;->leave(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 20
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/observers/try;->volatile:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/break;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lio/reactivex/internal/observers/try;->enter()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 22
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k2$do;->else()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->g:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/do;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->g:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/try;->strictfp:Lio/reactivex/Observer;

    .line 4
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/observers/try;->interface:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->a:I

    invoke-static {v0}, Lio/reactivex/subjects/this;->else(I)Lio/reactivex/subjects/this;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->h:Lio/reactivex/subjects/this;

    .line 8
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 9
    new-instance v2, Lio/reactivex/internal/operators/observable/k2$do$do;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->f:J

    invoke-direct {v2, v0, v1, p0}, Lio/reactivex/internal/operators/observable/k2$do$do;-><init>(JLio/reactivex/internal/operators/observable/k2$do;)V

    .line 10
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/k2$do;->b:Z

    if-eqz p1, :cond_1

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->d:Lio/reactivex/try$for;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->implements:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/k2$do;->instanceof:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k2$do;->synchronized:Lio/reactivex/try;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/k2$do;->implements:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/k2$do;->instanceof:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/try;->case(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 13
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$do;->j:Landroid/support/v4/tw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    return-void
.end method
