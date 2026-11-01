.class public interface abstract Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ScopeProvider;


# annotations
.annotation build Landroid/support/v4/u10;
    value = "Use TestLifecycleScopeProvider instead"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/ScopeProvider;"
    }
.end annotation


# virtual methods
.method public abstract correspondingEvents()Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction;
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uber/autodispose/lifecycle/CorrespondingEventsFunction<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lifecycle()Lio/reactivex/new;
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/new<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract peekLifecycle()Ljava/lang/Object;
    .annotation build Landroid/support/v4/a51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract requestScope()Lio/reactivex/CompletableSource;
.end method
