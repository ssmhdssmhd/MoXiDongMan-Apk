.class public interface abstract Lio/reactivex/CompletableObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
.end method

.method public abstract onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
.end method
