.class public interface abstract Lcom/uber/autodispose/CompletableSubscribeProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract subscribe()Lio/reactivex/disposables/Disposable;
.end method

.method public abstract subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
.end method

.method public abstract subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lio/reactivex/CompletableObserver;)V
.end method

.method public abstract subscribeWith(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/CompletableObserver;",
            ">(TE;)TE;"
        }
    .end annotation
.end method

.method public abstract test()Lio/reactivex/observers/if;
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/if<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract test(Z)Lio/reactivex/observers/if;
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/if<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
