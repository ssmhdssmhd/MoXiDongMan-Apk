.class public final Lrx/subjects/case;
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
.field private final for:Lrx/if$do;

.field private final if:Lrx/subjects/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/try<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/try;Lrx/schedulers/do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/subjects/try<",
            "TT;>;",
            "Lrx/schedulers/do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p2, p0, Lrx/subjects/case;->if:Lrx/subjects/try;

    .line 3
    invoke-virtual {p3}, Lrx/schedulers/do;->do()Lrx/if$do;

    move-result-object p1

    iput-object p1, p0, Lrx/subjects/case;->for:Lrx/if$do;

    return-void
.end method

.method public static g6(Lrx/schedulers/do;)Lrx/subjects/case;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/schedulers/do;",
            ")",
            "Lrx/subjects/case<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/try;

    invoke-direct {v0}, Lrx/subjects/try;-><init>()V

    .line 2
    new-instance v1, Lrx/subjects/case$do;

    invoke-direct {v1, v0}, Lrx/subjects/case$do;-><init>(Lrx/subjects/try;)V

    iput-object v1, v0, Lrx/subjects/try;->onAdded:Lrx/functions/Action1;

    .line 3
    iput-object v1, v0, Lrx/subjects/try;->onTerminated:Lrx/functions/Action1;

    .line 4
    new-instance v1, Lrx/subjects/case;

    invoke-direct {v1, v0, v0, p0}, Lrx/subjects/case;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/try;Lrx/schedulers/do;)V

    return-object v1
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->if:Lrx/subjects/try;

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

.method public h6()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->if:Lrx/subjects/try;

    iget-boolean v1, v0, Lrx/subjects/try;->active:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/try;->terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lrx/subjects/try$for;->onCompleted()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i6(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->if:Lrx/subjects/try;

    iget-boolean v1, v0, Lrx/subjects/try;->active:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/try;->terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1}, Lrx/subjects/try$for;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->observers()[Lrx/subjects/try$for;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k6(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->for:Lrx/if$do;

    new-instance v1, Lrx/subjects/case$if;

    invoke-direct {v1, p0}, Lrx/subjects/case$if;-><init>(Lrx/subjects/case;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method

.method public l6(Ljava/lang/Throwable;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->for:Lrx/if$do;

    new-instance v1, Lrx/subjects/case$for;

    invoke-direct {v1, p0, p1}, Lrx/subjects/case$for;-><init>(Lrx/subjects/case;Ljava/lang/Throwable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method

.method public m6(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/case;->for:Lrx/if$do;

    new-instance v1, Lrx/subjects/case$new;

    invoke-direct {v1, p0, p1}, Lrx/subjects/case$new;-><init>(Lrx/subjects/case;Ljava/lang/Object;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method

.method public onCompleted()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lrx/subjects/case;->k6(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lrx/subjects/case;->l6(Ljava/lang/Throwable;J)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lrx/subjects/case;->m6(Ljava/lang/Object;J)V

    return-void
.end method
