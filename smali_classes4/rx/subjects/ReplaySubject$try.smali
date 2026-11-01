.class final Lrx/subjects/ReplaySubject$try;
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
    name = "try"
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
.field public volatile case:Z

.field public final do:I

.field public else:Ljava/lang/Throwable;

.field public final for:[Ljava/lang/Object;

.field public volatile if:I

.field public new:[Ljava/lang/Object;

.field public try:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lrx/subjects/ReplaySubject$try;->do:I

    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lrx/subjects/ReplaySubject$try;->for:[Ljava/lang/Object;

    iput-object p1, p0, Lrx/subjects/ReplaySubject$try;->new:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$try;->case:Z

    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$do;)V
    .locals 18
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

    .line 3
    iget v3, v0, Lrx/subjects/ReplaySubject$try;->do:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 4
    :cond_1
    iget-object v6, v1, Lrx/subjects/ReplaySubject$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 5
    iget-object v8, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    if-nez v8, :cond_2

    .line 6
    iget-object v8, v0, Lrx/subjects/ReplaySubject$try;->for:[Ljava/lang/Object;

    .line 7
    :cond_2
    iget v9, v1, Lrx/subjects/ReplaySubject$do;->tailIndex:I

    .line 8
    iget v10, v1, Lrx/subjects/ReplaySubject$do;->index:I

    const-wide/16 v13, 0x0

    :goto_0
    const/4 v15, 0x0

    cmp-long v17, v13, v6

    if-eqz v17, :cond_9

    .line 9
    invoke-virtual {v2}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 10
    iput-object v15, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    return-void

    .line 11
    :cond_3
    iget-boolean v11, v0, Lrx/subjects/ReplaySubject$try;->case:Z

    .line 12
    iget v12, v0, Lrx/subjects/ReplaySubject$try;->if:I

    if-ne v10, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    if-eqz v11, :cond_6

    if-eqz v12, :cond_6

    .line 13
    iput-object v15, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    .line 14
    iget-object v1, v0, Lrx/subjects/ReplaySubject$try;->else:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 15
    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    :goto_2
    return-void

    :cond_6
    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    if-ne v9, v3, :cond_8

    .line 17
    aget-object v8, v8, v9

    check-cast v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 18
    :cond_8
    aget-object v11, v8, v9

    .line 19
    invoke-interface {v2, v11}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    add-int/2addr v9, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    cmp-long v11, v13, v6

    if-nez v11, :cond_d

    .line 20
    invoke-virtual {v2}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 21
    iput-object v15, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    return-void

    .line 22
    :cond_a
    iget-boolean v11, v0, Lrx/subjects/ReplaySubject$try;->case:Z

    .line 23
    iget v12, v0, Lrx/subjects/ReplaySubject$try;->if:I

    if-ne v10, v12, :cond_b

    const/16 v16, 0x1

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    :goto_4
    if-eqz v11, :cond_d

    if-eqz v16, :cond_d

    .line 24
    iput-object v15, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    .line 25
    iget-object v1, v0, Lrx/subjects/ReplaySubject$try;->else:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 26
    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 27
    :cond_c
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    :goto_5
    return-void

    :cond_d
    const-wide/16 v11, 0x0

    cmp-long v15, v13, v11

    if-eqz v15, :cond_e

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v15, v6, v11

    if-eqz v15, :cond_e

    .line 28
    iget-object v6, v1, Lrx/subjects/ReplaySubject$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v13, v14}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 29
    :cond_e
    iput v10, v1, Lrx/subjects/ReplaySubject$do;->index:I

    .line 30
    iput v9, v1, Lrx/subjects/ReplaySubject$do;->tailIndex:I

    .line 31
    iput-object v8, v1, Lrx/subjects/ReplaySubject$do;->node:Ljava/lang/Object;

    neg-int v5, v5

    .line 32
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 5
    iget-object v0, p0, Lrx/subjects/ReplaySubject$try;->else:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$try;->case:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lrx/subjects/ReplaySubject$try;->else:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lrx/subjects/ReplaySubject$try;->case:Z

    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$try;->case:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lrx/subjects/ReplaySubject$try;->if:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/subjects/ReplaySubject$try;->if:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$try;->for:[Ljava/lang/Object;

    .line 3
    iget v2, p0, Lrx/subjects/ReplaySubject$try;->do:I

    :goto_0
    if-lt v0, v2, :cond_1

    .line 4
    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 5
    aget-object v0, v1, v0

    return-object v0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$try;->case:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lrx/subjects/ReplaySubject$try;->try:I

    .line 3
    iget-object v1, p0, Lrx/subjects/ReplaySubject$try;->new:[Ljava/lang/Object;

    .line 4
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    .line 5
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    aput-object p1, v2, v4

    .line 7
    iput v3, p0, Lrx/subjects/ReplaySubject$try;->try:I

    .line 8
    aput-object v2, v1, v0

    .line 9
    iput-object v2, p0, Lrx/subjects/ReplaySubject$try;->new:[Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    aput-object p1, v1, v0

    add-int/2addr v0, v3

    .line 11
    iput v0, p0, Lrx/subjects/ReplaySubject$try;->try:I

    .line 12
    :goto_0
    iget p1, p0, Lrx/subjects/ReplaySubject$try;->if:I

    add-int/2addr p1, v3

    iput p1, p0, Lrx/subjects/ReplaySubject$try;->if:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lrx/subjects/ReplaySubject$try;->if:I

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/subjects/ReplaySubject$try;->if:I

    .line 2
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$try;->for:[Ljava/lang/Object;

    .line 5
    iget v2, p0, Lrx/subjects/ReplaySubject$try;->do:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int v5, v4, v2

    if-ge v5, v0, :cond_1

    .line 6
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    move v4, v5

    goto :goto_0

    :cond_1
    sub-int v2, v0, v4

    .line 8
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 10
    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method
