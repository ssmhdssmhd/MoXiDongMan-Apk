.class final Lio/reactivex/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/schedulers/SchedulerRunnableIntrospection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:Ljava/lang/Runnable;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public for:Ljava/lang/Thread;
    .annotation build Landroid/support/v4/a51;
    .end annotation
.end field

.field public final if:Lio/reactivex/try$for;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/try$for;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/try$for;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/try$do;->do:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lio/reactivex/try$do;->if:Lio/reactivex/try$for;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/try$do;->for:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/try$do;->if:Lio/reactivex/try$for;

    instance-of v1, v0, Lio/reactivex/internal/schedulers/goto;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/reactivex/internal/schedulers/goto;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/goto;->goto()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/try$do;->if:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :goto_0
    return-void
.end method

.method public getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/try$do;->do:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/try$do;->if:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/try$do;->for:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/try$do;->do:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/try$do;->dispose()V

    .line 4
    iput-object v0, p0, Lio/reactivex/try$do;->for:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/try$do;->dispose()V

    .line 6
    iput-object v0, p0, Lio/reactivex/try$do;->for:Ljava/lang/Thread;

    .line 7
    throw v1
.end method
