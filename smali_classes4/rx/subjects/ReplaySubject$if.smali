.class final Lrx/subjects/ReplaySubject$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$if$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public case:I

.field public final do:I

.field public volatile else:Z

.field public final for:Lrx/if;

.field public goto:Ljava/lang/Throwable;

.field public final if:J

.field public volatile new:Lrx/subjects/ReplaySubject$if$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$if$do<",
            "TT;>;"
        }
    .end annotation
.end field

.field public try:Lrx/subjects/ReplaySubject$if$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$if$do<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLrx/if;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lrx/subjects/ReplaySubject$if;->do:I

    .line 3
    new-instance p1, Lrx/subjects/ReplaySubject$if$do;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lrx/subjects/ReplaySubject$if$do;-><init>(Ljava/lang/Object;J)V

    .line 4
    iput-object p1, p0, Lrx/subjects/ReplaySubject$if;->try:Lrx/subjects/ReplaySubject$if$do;

    .line 5
    iput-object p1, p0, Lrx/subjects/ReplaySubject$if;->new:Lrx/subjects/ReplaySubject$if$do;

    .line 6
    iput-wide p2, p0, Lrx/subjects/ReplaySubject$if;->if:J

    .line 7
    iput-object p4, p0, Lrx/subjects/ReplaySubject$if;->for:Lrx/if;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$if;->do()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$if;->else:Z

    return-void
.end method

.method public do()V
    .locals 8

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject$if;->for:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/subjects/ReplaySubject$if;->if:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lrx/subjects/ReplaySubject$if;->new:Lrx/subjects/ReplaySubject$if$do;

    move-object v3, v2

    .line 3
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/ReplaySubject$if$do;

    if-eqz v4, :cond_1

    .line 4
    iget-wide v5, v4, Lrx/subjects/ReplaySubject$if$do;->timestamp:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v3, :cond_2

    .line 5
    iput-object v3, p0, Lrx/subjects/ReplaySubject$if;->new:Lrx/subjects/ReplaySubject$if$do;

    :cond_2
    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$do;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$do<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lrx/subjects/ReplaySubject$do;->actual:Landroid/support/v4/y22;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3
    :cond_1
    iget-object v5, v1, Lrx/subjects/ReplaySubject$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 4
    iget-object v7, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    check-cast v7, Lrx/subjects/ReplaySubject$if$do;

    const-wide/16 v8, 0x0

    if-nez v7, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lrx/subjects/ReplaySubject$if;->if()Lrx/subjects/ReplaySubject$if$do;

    move-result-object v7

    :cond_2
    move-wide v10, v8

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    cmp-long v14, v10, v5

    if-eqz v14, :cond_8

    .line 6
    invoke-virtual {v2}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 7
    iput-object v13, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    return-void

    .line 8
    :cond_3
    iget-boolean v14, v0, Lrx/subjects/ReplaySubject$if;->else:Z

    .line 9
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lrx/subjects/ReplaySubject$if$do;

    if-nez v15, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    :goto_1
    if-eqz v14, :cond_6

    if-eqz v16, :cond_6

    .line 10
    iput-object v13, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    .line 11
    iget-object v1, v0, Lrx/subjects/ReplaySubject$if;->goto:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    :goto_2
    return-void

    :cond_6
    if-eqz v16, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    iget-object v7, v15, Lrx/subjects/ReplaySubject$if$do;->value:Ljava/lang/Object;

    invoke-interface {v2, v7}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object v7, v15

    goto :goto_0

    :cond_8
    :goto_3
    cmp-long v14, v10, v5

    if-nez v14, :cond_c

    .line 15
    invoke-virtual {v2}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 16
    iput-object v13, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    return-void

    .line 17
    :cond_9
    iget-boolean v14, v0, Lrx/subjects/ReplaySubject$if;->else:Z

    .line 18
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_a

    const/4 v12, 0x1

    :cond_a
    if-eqz v14, :cond_c

    if-eqz v12, :cond_c

    .line 19
    iput-object v13, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    .line 20
    iget-object v1, v0, Lrx/subjects/ReplaySubject$if;->goto:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 21
    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 22
    :cond_b
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    :goto_4
    return-void

    :cond_c
    cmp-long v12, v10, v8

    if-eqz v12, :cond_d

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v12, v5, v8

    if-eqz v12, :cond_d

    .line 23
    iget-object v5, v1, Lrx/subjects/ReplaySubject$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v10, v11}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 24
    :cond_d
    iput-object v7, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    neg-int v4, v4

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 4
    iget-object v0, p0, Lrx/subjects/ReplaySubject$if;->goto:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$if;->do()V

    .line 2
    iput-object p1, p0, Lrx/subjects/ReplaySubject$if;->goto:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lrx/subjects/ReplaySubject$if;->else:Z

    return-void
.end method

.method public if()Lrx/subjects/ReplaySubject$if$do;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$if$do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject$if;->for:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/subjects/ReplaySubject$if;->if:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lrx/subjects/ReplaySubject$if;->new:Lrx/subjects/ReplaySubject$if$do;

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/subjects/ReplaySubject$if$do;

    if-eqz v3, :cond_1

    .line 4
    iget-wide v4, v3, Lrx/subjects/ReplaySubject$if$do;->timestamp:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$if;->else:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$if;->if()Lrx/subjects/ReplaySubject$if$do;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$if;->if()Lrx/subjects/ReplaySubject$if$do;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$if$do;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lrx/subjects/ReplaySubject$if$do;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/ReplaySubject$if;->for:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    .line 2
    new-instance v2, Lrx/subjects/ReplaySubject$if$do;

    invoke-direct {v2, p1, v0, v1}, Lrx/subjects/ReplaySubject$if$do;-><init>(Ljava/lang/Object;J)V

    .line 3
    iget-object p1, p0, Lrx/subjects/ReplaySubject$if;->try:Lrx/subjects/ReplaySubject$if$do;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iput-object v2, p0, Lrx/subjects/ReplaySubject$if;->try:Lrx/subjects/ReplaySubject$if$do;

    .line 5
    iget-wide v2, p0, Lrx/subjects/ReplaySubject$if;->if:J

    sub-long/2addr v0, v2

    .line 6
    iget p1, p0, Lrx/subjects/ReplaySubject$if;->case:I

    .line 7
    iget-object v2, p0, Lrx/subjects/ReplaySubject$if;->new:Lrx/subjects/ReplaySubject$if$do;

    .line 8
    iget v3, p0, Lrx/subjects/ReplaySubject$if;->do:I

    if-ne p1, v3, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/subjects/ReplaySubject$if$do;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-object v3, v2

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/ReplaySubject$if$do;

    if-eqz v4, :cond_2

    .line 11
    iget-wide v5, v4, Lrx/subjects/ReplaySubject$if$do;->timestamp:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move-object v3, v4

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    iput p1, p0, Lrx/subjects/ReplaySubject$if;->case:I

    if-eq v3, v2, :cond_3

    .line 13
    iput-object v3, p0, Lrx/subjects/ReplaySubject$if;->new:Lrx/subjects/ReplaySubject$if$do;

    :cond_3
    return-void
.end method

.method public size()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$if;->if()Lrx/subjects/ReplaySubject$if$do;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$if$do;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$if$do;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$if;->if()Lrx/subjects/ReplaySubject$if$do;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$if$do;

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lrx/subjects/ReplaySubject$if$do;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$if$do;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
