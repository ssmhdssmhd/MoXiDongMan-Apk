.class final Lrx/internal/operators/d2$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/d2;
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
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public for:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Ljava/lang/Object;

.field public new:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/ax1;

    invoke-direct {v0, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    iput-object v0, p0, Lrx/internal/operators/d2$if;->do:Landroid/support/v4/y22;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/d2$if;->if()V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/d2$if;->do:Landroid/support/v4/y22;

    iget-object v1, p0, Lrx/internal/operators/d2$if;->new:Lrx/Observable;

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    .line 3
    iput-object v1, p0, Lrx/internal/operators/d2$if;->new:Lrx/Observable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/d2$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public else()V
    .locals 6

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/d2$if;->try:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    sget-object v2, Lrx/internal/operators/d2;->if:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    .line 11
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/d2$if;->for(Ljava/util/List;)V

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lrx/internal/operators/d2$if;->case()V

    const/4 v0, 0x0

    .line 13
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 14
    :try_start_2
    iget-object v5, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    .line 15
    iput-object v2, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    if-nez v5, :cond_3

    .line 16
    iput-boolean v4, p0, Lrx/internal/operators/d2$if;->try:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    .line 18
    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/d2$if;->do:Landroid/support/v4/y22;

    invoke-virtual {v1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_6
    iput-boolean v4, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 22
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_4
    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    .line 23
    :goto_1
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    .line 24
    iget-object v1, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_9
    iput-boolean v4, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 26
    monitor-exit v1

    goto :goto_3

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_5
    :goto_3
    throw v0

    :catchall_6
    move-exception v1

    .line 27
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public for(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lrx/internal/operators/d2;->if:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/d2$if;->case()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {v0}, Lrx/internal/operators/return;->new(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/d2$if;->try(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0}, Lrx/internal/operators/return;->case(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lrx/internal/operators/d2$if;->do()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0, v0}, Lrx/internal/operators/d2$if;->new(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    invoke-static {}, Lrx/subjects/else;->g6()Lrx/subjects/else;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    .line 3
    iput-object v0, p0, Lrx/internal/operators/d2$if;->new:Lrx/Observable;

    return-void
.end method

.method public new(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/d2$if;->try:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/d2$if;->for(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {p0}, Lrx/internal/operators/d2$if;->do()V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p0, v0}, Lrx/internal/operators/d2$if;->try(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/d2$if;->try:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, p1}, Lrx/internal/operators/d2$if;->try(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/d2$if;->try:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    .line 11
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/d2$if;->for(Ljava/util/List;)V

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, p1}, Lrx/internal/operators/d2$if;->new(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 13
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 14
    :try_start_2
    iget-object v5, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    .line 15
    iput-object v2, p0, Lrx/internal/operators/d2$if;->case:Ljava/util/List;

    if-nez v5, :cond_3

    .line 16
    iput-boolean v4, p0, Lrx/internal/operators/d2$if;->try:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    .line 18
    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/d2$if;->do:Landroid/support/v4/y22;

    invoke-virtual {v1}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_6
    iput-boolean v4, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 22
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :cond_4
    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v3, 0x0

    .line 23
    :goto_1
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_1

    :catchall_4
    move-exception p1

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    .line 24
    iget-object v0, p0, Lrx/internal/operators/d2$if;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_9
    iput-boolean v4, p0, Lrx/internal/operators/d2$if;->try:Z

    .line 26
    monitor-exit v0

    goto :goto_3

    :catchall_5
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1

    :cond_5
    :goto_3
    throw p1

    :catchall_6
    move-exception p1

    .line 27
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public try(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lrx/internal/operators/d2$if;->for:Lrx/Observer;

    .line 3
    iput-object v1, p0, Lrx/internal/operators/d2$if;->new:Lrx/Observable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/d2$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method
