.class final Lrx/internal/operators/instanceof$do$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/instanceof$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/instanceof$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/instanceof$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lrx/internal/operators/instanceof$do;->leftDone:Z

    .line 3
    iget-boolean v1, v1, Lrx/internal/operators/instanceof$do;->rightDone:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    invoke-virtual {v2}, Lrx/internal/operators/instanceof$do;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v2, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    invoke-virtual {v2}, Lrx/internal/operators/instanceof$do;->leftMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v2, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v2, v2, Lrx/internal/operators/instanceof$do;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    invoke-virtual {v0, v1}, Lrx/internal/operators/instanceof$do;->complete(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/instanceof$do;->errorAll(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lrx/subjects/for;->g6()Lrx/subjects/for;

    move-result-object v0

    .line 2
    new-instance v1, Lrx/observers/for;

    invoke-direct {v1, v0}, Lrx/observers/for;-><init>(Lrx/Observer;)V

    .line 3
    iget-object v2, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v3, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget v4, v3, Lrx/internal/operators/instanceof$do;->leftIds:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lrx/internal/operators/instanceof$do;->leftIds:I

    .line 5
    invoke-virtual {v3}, Lrx/internal/operators/instanceof$do;->leftMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    new-instance v2, Lrx/internal/operators/instanceof$if;

    iget-object v3, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v3, v3, Lrx/internal/operators/instanceof$do;->cancel:Lrx/subscriptions/if;

    invoke-direct {v2, v0, v3}, Lrx/internal/operators/instanceof$if;-><init>(Lrx/Observable;Lrx/subscriptions/if;)V

    invoke-static {v2}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v2, v2, Lrx/internal/operators/instanceof$do;->this$0:Lrx/internal/operators/instanceof;

    iget-object v2, v2, Lrx/internal/operators/instanceof;->for:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;

    .line 9
    new-instance v3, Lrx/internal/operators/instanceof$do$do;

    iget-object v5, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    invoke-direct {v3, v5, v4}, Lrx/internal/operators/instanceof$do$do;-><init>(Lrx/internal/operators/instanceof$do;I)V

    .line 10
    iget-object v4, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v4, v4, Lrx/internal/operators/instanceof$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v4, v3}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 11
    invoke-virtual {v2, v3}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 12
    iget-object v2, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v2, v2, Lrx/internal/operators/instanceof$do;->this$0:Lrx/internal/operators/instanceof;

    iget-object v2, v2, Lrx/internal/operators/instanceof;->try:Lrx/functions/Func2;

    invoke-interface {v2, p1, v0}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v3, v3, Lrx/internal/operators/instanceof$do;->rightMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$if;->do:Lrx/internal/operators/instanceof$do;

    iget-object v0, v0, Lrx/internal/operators/instanceof$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    .line 20
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 21
    invoke-static {p1, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :cond_0
    return-void
.end method
