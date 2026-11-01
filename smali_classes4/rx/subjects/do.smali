.class public final Lrx/subjects/do;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/u22<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public volatile for:Ljava/lang/Object;

.field public final if:Lrx/subjects/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/try<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/subjects/try<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p2, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    return-void
.end method

.method public static g6()Lrx/subjects/do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/try;

    invoke-direct {v0}, Lrx/subjects/try;-><init>()V

    .line 2
    new-instance v1, Lrx/subjects/do$do;

    invoke-direct {v1, v0}, Lrx/subjects/do$do;-><init>(Lrx/subjects/try;)V

    iput-object v1, v0, Lrx/subjects/try;->onTerminated:Lrx/functions/Action1;

    .line 3
    new-instance v1, Lrx/subjects/do;

    invoke-direct {v1, v0, v0}, Lrx/subjects/do;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/try;)V

    return-object v1
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->observers()[Lrx/subjects/try$for;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h6()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lrx/internal/operators/return;->new(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i6()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->for:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v1}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lrx/internal/operators/return;->goto(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l6()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->for:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v1}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lrx/internal/operators/return;->goto(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompleted()V
    .locals 8

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    iget-boolean v0, v0, Lrx/subjects/try;->active:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lrx/subjects/do;->for:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v1, v0}, Lrx/subjects/try;->terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 6
    invoke-virtual {v4}, Lrx/subjects/try$for;->onCompleted()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v5, v4, Lrx/subjects/try$for;->do:Landroid/support/v4/y22;

    new-instance v6, Landroid/support/v4/yz1;

    iget-object v4, v4, Lrx/subjects/try$for;->do:Landroid/support/v4/y22;

    invoke-static {v0}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/support/v4/yz1;-><init>(Landroid/support/v4/y22;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    iget-boolean v0, v0, Lrx/subjects/try;->active:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lrx/subjects/do;->if:Lrx/subjects/try;

    invoke-virtual {v2, v0}, Lrx/subjects/try;->terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    :try_start_0
    invoke-virtual {v4, p1}, Lrx/subjects/try$for;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Landroid/support/v4/s80;->new(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/subjects/do;->for:Ljava/lang/Object;

    return-void
.end method
