.class final Lrx/internal/operators/synchronized$do$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/synchronized$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/synchronized$do$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT",
        "Left;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/synchronized$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/synchronized$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILrx/Subscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    invoke-virtual {v1}, Lrx/internal/operators/synchronized$do;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    invoke-virtual {p1}, Lrx/internal/operators/synchronized$do;->leftMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-boolean p1, p1, Lrx/internal/operators/synchronized$do;->leftDone:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object p1, p1, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    .line 5
    iget-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object p1, p1, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object p1, p1, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    invoke-virtual {p1, p2}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCompleted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lrx/internal/operators/synchronized$do;->leftDone:Z

    .line 3
    iget-boolean v3, v1, Lrx/internal/operators/synchronized$do;->rightDone:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/synchronized$do;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v0, v0, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 6
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v0, v0, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v0, v0, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v0, p0}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v0, v0, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object p1, p1, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Left;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget v2, v1, Lrx/internal/operators/synchronized$do;->leftId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lrx/internal/operators/synchronized$do;->leftId:I

    .line 3
    invoke-virtual {v1}, Lrx/internal/operators/synchronized$do;->leftMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget v3, v1, Lrx/internal/operators/synchronized$do;->rightId:I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v0, v1, Lrx/internal/operators/synchronized$do;->this$0:Lrx/internal/operators/synchronized;

    iget-object v0, v0, Lrx/internal/operators/synchronized;->for:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 7
    new-instance v1, Lrx/internal/operators/synchronized$do$do$do;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/synchronized$do$do$do;-><init>(Lrx/internal/operators/synchronized$do$do;I)V

    .line 8
    iget-object v2, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v2, v2, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v2, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 9
    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v1, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v2, v2, Lrx/internal/operators/synchronized$do;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v2, v2, Lrx/internal/operators/synchronized$do;->this$0:Lrx/internal/operators/synchronized;

    iget-object v2, v2, Lrx/internal/operators/synchronized;->try:Lrx/functions/Func2;

    invoke-interface {v2, p1, v1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lrx/internal/operators/synchronized$do$do;->do:Lrx/internal/operators/synchronized$do;

    iget-object v2, v2, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v2, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 19
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 20
    invoke-static {p1, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    .line 21
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
