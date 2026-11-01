.class final Lio/reactivex/internal/operators/flowable/continue$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/continue$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/internal/operators/flowable/continue$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/continue$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/continue$do$do;->do:Lio/reactivex/internal/operators/flowable/continue$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/continue$do$do;->do:Lio/reactivex/internal/operators/flowable/continue$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/continue$do;->do:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/continue$do$do;->do:Lio/reactivex/internal/operators/flowable/continue$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/continue$do;->new:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/continue$do$do;->do:Lio/reactivex/internal/operators/flowable/continue$do;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/continue$do;->new:Lio/reactivex/try$for;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    throw v0
.end method
