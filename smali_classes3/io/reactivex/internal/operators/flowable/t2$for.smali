.class final Lio/reactivex/internal/operators/flowable/t2$for;
.super Lio/reactivex/internal/subscribers/if;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t2$for$do;,
        Lio/reactivex/internal/operators/flowable/t2$for$if;
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
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final n:J

.field public final o:J

.field public final p:Ljava/util/concurrent/TimeUnit;

.field public final q:Lio/reactivex/try$for;

.field public final r:I

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/processors/else<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public t:Lorg/reactivestreams/Subscription;

.field public volatile u:Z


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try$for;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/do;

    invoke-direct {v0}, Lio/reactivex/internal/queue/do;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/t2$for;->n:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/t2$for;->o:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/t2$for;->p:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/t2$for;->q:Lio/reactivex/try$for;

    .line 6
    iput p8, p0, Lio/reactivex/internal/operators/flowable/t2$for;->r:I

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$for;->s:Ljava/util/List;

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

.method public case()V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t2$for;->s:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/t2$for;->u:Z

    if-eqz v5, :cond_1

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t2$for;->t:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 6
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$for;->q:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void

    .line 9
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/subscribers/if;->l:Z

    .line 10
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 11
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/flowable/t2$for$if;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    .line 12
    :cond_3
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/else;

    .line 15
    invoke-virtual {v3, v0}, Lio/reactivex/processors/else;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/else;

    .line 17
    invoke-virtual {v1}, Lio/reactivex/processors/else;->onComplete()V

    goto :goto_3

    .line 18
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 19
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$for;->q:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    .line 20
    invoke-virtual {p0, v4}, Lio/reactivex/internal/subscribers/if;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_c

    .line 21
    check-cast v6, Lio/reactivex/internal/operators/flowable/t2$for$if;

    .line 22
    iget-boolean v5, v6, Lio/reactivex/internal/operators/flowable/t2$for$if;->if:Z

    if-eqz v5, :cond_b

    .line 23
    iget-boolean v5, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-eqz v5, :cond_8

    goto :goto_0

    .line 24
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_a

    .line 25
    iget v7, p0, Lio/reactivex/internal/operators/flowable/t2$for;->r:I

    invoke-static {v7}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v7

    .line 26
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v1, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v5, v8

    if-eqz v10, :cond_9

    const-wide/16 v5, 0x1

    .line 28
    invoke-virtual {p0, v5, v6}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    .line 29
    :cond_9
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/t2$for;->q:Lio/reactivex/try$for;

    new-instance v6, Lio/reactivex/internal/operators/flowable/t2$for$do;

    invoke-direct {v6, p0, v7}, Lio/reactivex/internal/operators/flowable/t2$for$do;-><init>(Lio/reactivex/internal/operators/flowable/t2$for;Lio/reactivex/processors/else;)V

    iget-wide v7, p0, Lio/reactivex/internal/operators/flowable/t2$for;->n:J

    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/t2$for;->p:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8, v9}, Lio/reactivex/try$for;->for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0

    .line 30
    :cond_a
    new-instance v5, Landroid/support/v4/a01;

    const-string v6, "Can\'t emit window due to lack of requests"

    invoke-direct {v5, v6}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 31
    :cond_b
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/t2$for$if;->do:Lio/reactivex/processors/else;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    iget-object v5, v6, Lio/reactivex/internal/operators/flowable/t2$for$if;->do:Lio/reactivex/processors/else;

    invoke-virtual {v5}, Lio/reactivex/processors/else;->onComplete()V

    .line 33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-eqz v5, :cond_0

    .line 34
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/t2$for;->u:Z

    goto/16 :goto_0

    .line 35
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/processors/else;

    .line 36
    invoke-virtual {v7, v6}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    goto :goto_4
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
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$for;->case()V

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
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$for;->case()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$for;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/else;

    .line 3
    invoke-virtual {v1, p1}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/if;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$for;->case()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$for;->t:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/for;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t2$for;->t:Lorg/reactivestreams/Subscription;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->requested()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 6
    iget v2, p0, Lio/reactivex/internal/operators/flowable/t2$for;->r:I

    invoke-static {v2}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/t2$for;->s:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v3, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    const-wide/16 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscribers/if;->produced(J)J

    .line 10
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2$for;->q:Lio/reactivex/try$for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/t2$for$do;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/operators/flowable/t2$for$do;-><init>(Lio/reactivex/internal/operators/flowable/t2$for;Lio/reactivex/processors/else;)V

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/t2$for;->n:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t2$for;->p:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, Lio/reactivex/try$for;->for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 11
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/t2$for;->q:Lio/reactivex/try$for;

    iget-wide v11, p0, Lio/reactivex/internal/operators/flowable/t2$for;->o:J

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/t2$for;->p:Ljava/util/concurrent/TimeUnit;

    move-object v8, p0

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 12
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 14
    iget-object p1, p0, Lio/reactivex/internal/subscribers/if;->i:Lorg/reactivestreams/Subscriber;

    new-instance v0, Landroid/support/v4/a01;

    const-string v1, "Could not emit the first window due to lack of requests"

    invoke-direct {v0, v1}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_3
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
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/t2$for;->r:I

    invoke-static {v0}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/t2$for$if;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/t2$for$if;-><init>(Lio/reactivex/processors/else;Z)V

    .line 3
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/if;->k:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$for;->case()V

    :cond_1
    return-void
.end method

.method public try(Lio/reactivex/processors/else;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/else<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/if;->j:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    new-instance v1, Lio/reactivex/internal/operators/flowable/t2$for$if;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/t2$for$if;-><init>(Lio/reactivex/processors/else;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/if;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/t2$for;->case()V

    :cond_0
    return-void
.end method
