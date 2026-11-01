.class final Lio/reactivex/internal/operators/flowable/t2$do;
.super Lio/reactivex/internal/subscribers/if;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t2$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/if<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/for<",
        "TT;>;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field public final n:J

.field public final o:Ljava/util/concurrent/TimeUnit;

.field public final p:Lio/reactivex/try;

.field public final q:I

.field public final r:Z

.field public final s:J

.field public final t:Lio/reactivex/try$for;

.field public u:J

.field public v:J

.field public w:Lorg/reactivestreams/Subscription;

.field public x:Lio/reactivex/processors/else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/else<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile y:Z

.field public final z:Landroid/support/v4/tw1;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "IJZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/do;

    invoke-direct {v0}, Lio/reactivex/internal/queue/do;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 2
    new-instance p1, Landroid/support/v4/tw1;

    invoke-direct {p1}, Landroid/support/v4/tw1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/t2$do;->n:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/t2$do;->o:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/t2$do;->p:Lio/reactivex/try;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/flowable/t2$do;->q:I

    .line 7
    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/t2$do;->s:J

    .line 8
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/t2$do;->r:Z

    if-eqz p9, :cond_0

    .line 9
    invoke-virtual {p5}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->t:Lio/reactivex/try$for;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->t:Lio/reactivex/try$for;

    :goto_0
    return-void
.end method

.method public static synthetic case(Lio/reactivex/internal/operators/flowable/t2$do;)Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-object p0
.end method

.method public static synthetic try(Lio/reactivex/internal/operators/flowable/t2$do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    invoke-virtual {v0}, Landroid/support/v4/tw1;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->t:Lio/reactivex/try$for;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public goto()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 2
    iget-object v2, v0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    .line 3
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    const/4 v5, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/t2$do;->y:Z

    if-eqz v6, :cond_1

    .line 5
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/t2$do;->w:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 6
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/t2$do;->else()V

    return-void

    .line 8
    :cond_1
    iget-boolean v6, v0, Lio/reactivex/internal/subscribers/if;->l:Z

    .line 9
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 10
    :goto_1
    instance-of v9, v7, Lio/reactivex/internal/operators/flowable/t2$do$do;

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    if-nez v8, :cond_3

    if-eqz v9, :cond_5

    .line 11
    :cond_3
    iput-object v10, v0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 12
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 13
    iget-object v1, v0, Lio/reactivex/internal/subscribers/if;->m:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v3, v1}, Lio/reactivex/processors/else;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v3}, Lio/reactivex/processors/else;->onComplete()V

    .line 16
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/t2$do;->else()V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    neg-int v5, v5

    .line 17
    invoke-virtual {v0, v5}, Lio/reactivex/internal/subscribers/if;->leave(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_6
    const-wide v11, 0x7fffffffffffffffL

    const-wide/16 v13, 0x0

    move v8, v5

    if-eqz v9, :cond_a

    .line 18
    check-cast v7, Lio/reactivex/internal/operators/flowable/t2$do$do;

    .line 19
    iget-boolean v9, v0, Lio/reactivex/internal/operators/flowable/t2$do;->r:Z

    if-eqz v9, :cond_8

    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    iget-wide v6, v7, Lio/reactivex/internal/operators/flowable/t2$do$do;->do:J

    cmp-long v16, v4, v6

    if-nez v16, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v8

    goto :goto_0

    .line 20
    :cond_8
    :goto_4
    invoke-virtual {v3}, Lio/reactivex/processors/else;->onComplete()V

    .line 21
    iput-wide v13, v0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    .line 22
    iget v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->q:I

    invoke-static {v3}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v3

    .line 23
    iput-object v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v4

    cmp-long v6, v4, v13

    if-eqz v6, :cond_9

    .line 25
    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    cmp-long v6, v4, v11

    if-eqz v6, :cond_7

    const-wide/16 v4, 0x1

    .line 26
    invoke-virtual {v0, v4, v5}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    goto :goto_3

    .line 27
    :cond_9
    iput-object v10, v0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 28
    iget-object v1, v0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 29
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/t2$do;->w:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 30
    new-instance v1, Landroid/support/v4/a01;

    const-string v3, "Could not deliver first window due to lack of requests."

    invoke-direct {v1, v3}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/t2$do;->else()V

    return-void

    .line 32
    :cond_a
    invoke-static {v7}, Lio/reactivex/internal/util/break;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    .line 33
    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 34
    iget-wide v9, v0, Lio/reactivex/internal/operators/flowable/t2$do;->s:J

    cmp-long v15, v4, v9

    if-ltz v15, :cond_e

    .line 35
    iget-wide v4, v0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    .line 36
    iput-wide v13, v0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    .line 37
    invoke-virtual {v3}, Lio/reactivex/processors/else;->onComplete()V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-eqz v5, :cond_d

    .line 39
    iget v5, v0, Lio/reactivex/internal/operators/flowable/t2$do;->q:I

    invoke-static {v5}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v5

    .line 40
    iput-object v5, v0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 41
    iget-object v6, v0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v6, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    cmp-long v6, v3, v11

    if-eqz v6, :cond_b

    const-wide/16 v3, 0x1

    .line 42
    invoke-virtual {v0, v3, v4}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    .line 43
    :cond_b
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->r:Z

    if-eqz v3, :cond_c

    .line 44
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/disposables/Disposable;

    .line 45
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 46
    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/t2$do;->t:Lio/reactivex/try$for;

    new-instance v10, Lio/reactivex/internal/operators/flowable/t2$do$do;

    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    invoke-direct {v10, v3, v4, v0}, Lio/reactivex/internal/operators/flowable/t2$do$do;-><init>(JLio/reactivex/internal/operators/flowable/t2$do;)V

    iget-wide v13, v0, Lio/reactivex/internal/operators/flowable/t2$do;->n:J

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/t2$do;->o:Ljava/util/concurrent/TimeUnit;

    move-wide v11, v13

    invoke-virtual/range {v9 .. v15}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    .line 47
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    invoke-virtual {v4, v3}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    :cond_c
    move-object v3, v5

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x0

    .line 48
    iput-object v3, v0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 49
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/t2$do;->w:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 50
    iget-object v1, v0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    new-instance v2, Landroid/support/v4/a01;

    const-string v3, "Could not deliver window due to lack of requests"

    invoke-direct {v2, v3}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/t2$do;->else()V

    return-void

    .line 52
    :cond_e
    iput-wide v4, v0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    goto/16 :goto_3
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->l:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$do;->goto()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/subscribers/if;->m:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->l:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$do;->goto()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->do()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    .line 5
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 6
    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/t2$do;->s:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_3

    .line 7
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    .line 9
    invoke-virtual {v0}, Lio/reactivex/processors/else;->onComplete()V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-eqz p1, :cond_2

    .line 11
    iget p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->q:I

    invoke-static {p1}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v5, v0

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    .line 15
    :cond_1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->r:Z

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    .line 17
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 18
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->t:Lio/reactivex/try$for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/t2$do$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/flowable/t2$do$do;-><init>(JLio/reactivex/internal/operators/flowable/t2$do;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/t2$do;->n:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/t2$do;->o:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 21
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->w:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 22
    iget-object p1, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    new-instance v0, Landroid/support/v4/a01;

    const-string v1, "Could not deliver window due to lack of requests"

    invoke-direct {v0, v1}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$do;->else()V

    return-void

    .line 24
    :cond_3
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->u:J

    :cond_4
    :goto_0
    const/4 p1, -0x1

    .line 25
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/if;->leave(I)I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 26
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/break;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 28
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$do;->goto()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$do;->w:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/for;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->w:Lorg/reactivestreams/Subscription;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    .line 4
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 5
    iget-boolean v1, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->q:I

    invoke-static {v1}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t2$do;->x:Lio/reactivex/processors/else;

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 9
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x1

    .line 10
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    .line 11
    :cond_1
    new-instance v5, Lio/reactivex/internal/operators/flowable/t2$do$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/t2$do;->v:J

    invoke-direct {v5, v2, v3, p0}, Lio/reactivex/internal/operators/flowable/t2$do$do;-><init>(JLio/reactivex/internal/operators/flowable/t2$do;)V

    .line 12
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/t2$do;->r:Z

    if-eqz v2, :cond_2

    .line 13
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/t2$do;->t:Lio/reactivex/try$for;

    iget-wide v8, p0, Lio/reactivex/internal/operators/flowable/t2$do;->n:J

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/t2$do;->o:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/t2$do;->p:Lio/reactivex/try;

    iget-wide v8, p0, Lio/reactivex/internal/operators/flowable/t2$do;->n:J

    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/t2$do;->o:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/try;->case(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 15
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/t2$do;->z:Landroid/support/v4/tw1;

    invoke-virtual {v3, v2}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    .line 18
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 19
    new-instance p1, Landroid/support/v4/a01;

    const-string v1, "Could not deliver initial window due to lack of requests."

    invoke-direct {p1, v1}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public request(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscribers/if;->new(J)V

    return-void
.end method
