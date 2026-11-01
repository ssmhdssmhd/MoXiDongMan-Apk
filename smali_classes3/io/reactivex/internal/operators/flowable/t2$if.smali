.class final Lio/reactivex/internal/operators/flowable/t2$if;
.super Lio/reactivex/internal/subscribers/if;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t2;
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
        "Lio/reactivex/internal/subscribers/if<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/for<",
        "TT;>;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final v:Ljava/lang/Object;


# instance fields
.field public final n:J

.field public final o:Ljava/util/concurrent/TimeUnit;

.field public final p:Lio/reactivex/try;

.field public final q:I

.field public r:Lorg/reactivestreams/Subscription;

.field public s:Lio/reactivex/processors/else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/else<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final t:Landroid/support/v4/tw1;

.field public volatile u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/t2$if;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;I)V
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
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/do;

    invoke-direct {v0}, Lio/reactivex/internal/queue/do;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 2
    new-instance p1, Landroid/support/v4/tw1;

    invoke-direct {p1}, Landroid/support/v4/tw1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$if;->t:Landroid/support/v4/tw1;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/t2$if;->n:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/t2$if;->o:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/t2$if;->p:Lio/reactivex/try;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/flowable/t2$if;->q:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    return-void
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
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$if;->try()V

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
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$if;->try()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->u:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/if;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/break;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$if;->try()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->r:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/for;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$if;->r:Lorg/reactivestreams/Subscription;

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->q:I

    invoke-static {v0}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    .line 5
    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 7
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    .line 9
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->t:Landroid/support/v4/tw1;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/t2$if;->p:Lio/reactivex/try;

    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/t2$if;->n:J

    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/t2$if;->o:Ljava/util/concurrent/TimeUnit;

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, Lio/reactivex/try;->case(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    .line 13
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 14
    new-instance p1, Landroid/support/v4/a01;

    const-string v1, "Could not deliver first window due to lack of requests."

    invoke-direct {p1, v1}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscribers/if;->new(J)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->u:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    sget-object v1, Lio/reactivex/internal/operators/flowable/t2$if;->v:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$if;->try()V

    :cond_1
    return-void
.end method

.method public try()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    const/4 v3, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/t2$if;->u:Z

    .line 5
    iget-boolean v5, p0, Lio/reactivex/internal/subscribers/if;->l:Z

    .line 6
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    .line 7
    sget-object v5, Lio/reactivex/internal/operators/flowable/t2$if;->v:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    .line 8
    :cond_1
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    .line 9
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v2, v0}, Lio/reactivex/processors/else;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/processors/else;->onComplete()V

    .line 13
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->t:Landroid/support/v4/tw1;

    invoke-virtual {v0}, Landroid/support/v4/tw1;->dispose()V

    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    .line 14
    invoke-virtual {p0, v3}, Lio/reactivex/internal/subscribers/if;->leave(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 15
    :cond_4
    sget-object v5, Lio/reactivex/internal/operators/flowable/t2$if;->v:Ljava/lang/Object;

    if-ne v6, v5, :cond_7

    .line 16
    invoke-virtual {v2}, Lio/reactivex/processors/else;->onComplete()V

    if-nez v4, :cond_6

    .line 17
    iget v2, p0, Lio/reactivex/internal/operators/flowable/t2$if;->q:I

    invoke-static {v2}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v2

    .line 18
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    .line 19
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    .line 20
    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const-wide/16 v4, 0x1

    .line 21
    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    goto :goto_0

    .line 22
    :cond_5
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/t2$if;->s:Lio/reactivex/processors/else;

    .line 23
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 24
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->r:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 25
    new-instance v0, Landroid/support/v4/a01;

    const-string v2, "Could not deliver first window due to lack of requests."

    invoke-direct {v0, v2}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 26
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$if;->t:Landroid/support/v4/tw1;

    invoke-virtual {v0}, Landroid/support/v4/tw1;->dispose()V

    return-void

    .line 27
    :cond_6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/t2$if;->r:Lorg/reactivestreams/Subscription;

    invoke-interface {v4}, Lorg/reactivestreams/Subscription;->cancel()V

    goto :goto_0

    .line 28
    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/break;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
