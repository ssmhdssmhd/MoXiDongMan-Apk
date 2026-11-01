.class public final Lrx/internal/producers/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final break:Lrx/Producer;


# instance fields
.field public case:J

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public else:Lrx/Producer;

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public goto:Ljava/lang/Object;

.field public if:Z

.field public new:Lrx/Producer;

.field public volatile this:Z

.field public try:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/producers/if$do;

    invoke-direct {v0}, Lrx/internal/producers/if$do;-><init>()V

    sput-object v0, Lrx/internal/producers/if;->break:Lrx/Producer;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/producers/if;->do:Landroid/support/v4/y22;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lrx/internal/producers/if;->do:Landroid/support/v4/y22;

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move-object v7, v0

    move-wide v5, v3

    .line 2
    :cond_0
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v8, v1, Lrx/internal/producers/if;->case:J

    .line 4
    iget-object v10, v1, Lrx/internal/producers/if;->else:Lrx/Producer;

    .line 5
    iget-object v11, v1, Lrx/internal/producers/if;->goto:Ljava/lang/Object;

    .line 6
    iget-object v12, v1, Lrx/internal/producers/if;->for:Ljava/util/List;

    const/4 v13, 0x1

    const/4 v14, 0x0

    cmp-long v15, v8, v3

    if-nez v15, :cond_1

    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-nez v11, :cond_1

    .line 7
    iput-boolean v14, v1, Lrx/internal/producers/if;->if:Z

    const/4 v15, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iput-wide v3, v1, Lrx/internal/producers/if;->case:J

    .line 9
    iput-object v0, v1, Lrx/internal/producers/if;->else:Lrx/Producer;

    .line 10
    iput-object v0, v1, Lrx/internal/producers/if;->for:Ljava/util/List;

    .line 11
    iput-object v0, v1, Lrx/internal/producers/if;->goto:Ljava/lang/Object;

    const/4 v15, 0x0

    .line 12
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v15, :cond_3

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 13
    invoke-interface {v7, v5, v6}, Lrx/Producer;->request(J)V

    :cond_2
    return-void

    :cond_3
    if-eqz v12, :cond_5

    .line 14
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :cond_5
    :goto_2
    if-eqz v11, :cond_7

    .line 15
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v11, v14, :cond_6

    .line 16
    check-cast v11, Ljava/lang/Throwable;

    invoke-interface {v2, v11}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eqz v13, :cond_7

    .line 17
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    return-void

    :cond_7
    if-eqz v12, :cond_b

    .line 18
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 19
    invoke-virtual {v2}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v14

    if-eqz v14, :cond_8

    return-void

    .line 20
    :cond_8
    iget-boolean v14, v1, Lrx/internal/producers/if;->this:Z

    if-eqz v14, :cond_9

    goto :goto_0

    .line 21
    :cond_9
    :try_start_1
    invoke-interface {v2, v13}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 22
    invoke-static {v3, v2, v13}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v11, v3

    goto :goto_4

    :cond_b
    move-wide v11, v3

    .line 24
    :goto_4
    iget-wide v13, v1, Lrx/internal/producers/if;->try:J

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v17, v13, v15

    if-eqz v17, :cond_f

    cmp-long v17, v8, v3

    if-eqz v17, :cond_c

    add-long/2addr v13, v8

    cmp-long v17, v13, v3

    if-gez v17, :cond_c

    move-wide v13, v15

    :cond_c
    cmp-long v17, v11, v3

    if-eqz v17, :cond_e

    cmp-long v17, v13, v15

    if-eqz v17, :cond_e

    sub-long/2addr v13, v11

    cmp-long v11, v13, v3

    if-ltz v11, :cond_d

    goto :goto_5

    .line 25
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "More produced than requested"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_e
    :goto_5
    iput-wide v13, v1, Lrx/internal/producers/if;->try:J

    :cond_f
    if-eqz v10, :cond_11

    .line 27
    sget-object v8, Lrx/internal/producers/if;->break:Lrx/Producer;

    if-ne v10, v8, :cond_10

    .line 28
    iput-object v0, v1, Lrx/internal/producers/if;->new:Lrx/Producer;

    goto/16 :goto_0

    .line 29
    :cond_10
    iput-object v10, v1, Lrx/internal/producers/if;->new:Lrx/Producer;

    cmp-long v8, v13, v3

    if-eqz v8, :cond_0

    .line 30
    invoke-static {v5, v6, v13, v14}, Landroid/support/v4/u6;->do(JJ)J

    move-result-wide v5

    goto :goto_6

    .line 31
    :cond_11
    iget-object v10, v1, Lrx/internal/producers/if;->new:Lrx/Producer;

    if-eqz v10, :cond_0

    cmp-long v11, v8, v3

    if-eqz v11, :cond_0

    .line 32
    invoke-static {v5, v6, v8, v9}, Landroid/support/v4/u6;->do(JJ)J

    move-result-wide v5

    :goto_6
    move-object v7, v10

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 33
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lrx/internal/producers/if;->goto:Ljava/lang/Object;

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lrx/internal/producers/if;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lrx/internal/producers/if;->goto:Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Lrx/internal/producers/if;->if:Z

    const/4 v0, 0x1

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lrx/internal/producers/if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_1
    iput-boolean v1, p0, Lrx/internal/producers/if;->this:Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lrx/internal/producers/if;->for:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iput-object v0, p0, Lrx/internal/producers/if;->for:Ljava/util/List;

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    iget-object v0, p0, Lrx/internal/producers/if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 11
    iget-wide v0, p0, Lrx/internal/producers/if;->try:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 12
    iput-wide v0, p0, Lrx/internal/producers/if;->try:J

    .line 13
    :cond_2
    invoke-virtual {p0}, Lrx/internal/producers/if;->do()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-enter p0

    const/4 v0, 0x0

    .line 15
    :try_start_2
    iput-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    .line 16
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 17
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public request(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/producers/if;->if:Z

    if-eqz v2, :cond_1

    .line 3
    iget-wide v0, p0, Lrx/internal/producers/if;->case:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/if;->case:J

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lrx/internal/producers/if;->if:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    iget-object v2, p0, Lrx/internal/producers/if;->new:Lrx/Producer;

    .line 8
    :try_start_1
    iget-wide v3, p0, Lrx/internal/producers/if;->try:J

    add-long/2addr v3, p1

    cmp-long v5, v3, v0

    if-gez v5, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    .line 9
    :cond_2
    iput-wide v3, p0, Lrx/internal/producers/if;->try:J

    .line 10
    invoke-virtual {p0}, Lrx/internal/producers/if;->do()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v2, p1, p2}, Lrx/Producer;->request(J)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-enter p0

    const/4 p2, 0x0

    .line 13
    :try_start_2
    iput-boolean p2, p0, Lrx/internal/producers/if;->if:Z

    .line 14
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 15
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lrx/internal/producers/if;->break:Lrx/Producer;

    :goto_0
    iput-object p1, p0, Lrx/internal/producers/if;->else:Lrx/Producer;

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    iput-object p1, p0, Lrx/internal/producers/if;->new:Lrx/Producer;

    .line 8
    iget-wide v0, p0, Lrx/internal/producers/if;->try:J

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/producers/if;->do()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    :try_start_2
    iput-boolean v0, p0, Lrx/internal/producers/if;->if:Z

    .line 13
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 14
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
