.class public abstract Landroid/support/v4/pq;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/new<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    return-void
.end method

.method private case()Landroid/support/v4/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/pq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/l0;

    move-object v1, p0

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;

    .line 3
    invoke-interface {v1}, Lio/reactivex/internal/operators/observable/ObservablePublishClassic;->publishSource()Lio/reactivex/ObservableSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/l0;-><init>(Lio/reactivex/ObservableSource;)V

    .line 4
    invoke-static {v0}, Landroid/support/v4/jp1;->d(Landroid/support/v4/pq;)Landroid/support/v4/pq;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final break(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;
    .locals 8
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/s0;

    invoke-direct {p0}, Landroid/support/v4/pq;->case()Landroid/support/v4/pq;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/s0;-><init>(Landroid/support/v4/pq;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final catch(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/pq;->break(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final class(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/pq;->break(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public do()Lio/reactivex/new;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/pq;->if(I)Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method public else()Lio/reactivex/new;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/s0;

    invoke-direct {p0}, Landroid/support/v4/pq;->case()Landroid/support/v4/pq;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/s0;-><init>(Landroid/support/v4/pq;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method public for(ILio/reactivex/functions/Consumer;)Lio/reactivex/new;
    .locals 1
    .param p2    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Landroid/support/v4/pq;->try(Lio/reactivex/functions/Consumer;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/jp1;->d(Landroid/support/v4/pq;)Landroid/support/v4/pq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/x51;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/x51;-><init>(Landroid/support/v4/pq;ILio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final goto(I)Lio/reactivex/new;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/do;->this()Lio/reactivex/try;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/pq;->break(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Lio/reactivex/new;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/pq;->for(ILio/reactivex/functions/Consumer;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final new()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/util/for;

    invoke-direct {v0}, Lio/reactivex/internal/util/for;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/pq;->try(Lio/reactivex/functions/Consumer;)V

    .line 3
    iget-object v0, v0, Lio/reactivex/internal/util/for;->do:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final this(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/pq;->break(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public abstract try(Lio/reactivex/functions/Consumer;)V
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation
.end method
