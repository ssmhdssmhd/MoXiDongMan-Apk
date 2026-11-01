.class public final Lio/reactivex/disposables/if;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/try;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/try;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static do()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object v0
.end method

.method public static else(Lorg/reactivestreams/Subscription;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p0    # Lorg/reactivestreams/Subscription;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    const-string v0, "subscription is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/case;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/case;-><init>(Lorg/reactivestreams/Subscription;)V

    return-object v0
.end method

.method public static for(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p0    # Lio/reactivex/functions/Action;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/do;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/do;-><init>(Lio/reactivex/functions/Action;)V

    return-object v0
.end method

.method public static if()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/do;->if:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/disposables/if;->case(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public static new(Ljava/util/concurrent/Future;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/disposables/if;->try(Ljava/util/concurrent/Future;Z)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/util/concurrent/Future;Z)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/for;

    invoke-direct {v0, p0, p1}, Lio/reactivex/disposables/for;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method
