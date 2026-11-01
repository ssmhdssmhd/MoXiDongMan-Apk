.class public final Landroid/support/v4/pr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;
.implements Lrx/Subscription;


# instance fields
.field public final do:Lrx/CompletableSubscriber;

.field public for:Z

.field public if:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/pr1;->do:Lrx/CompletableSubscriber;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/pr1;->for:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/pr1;->if:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/pr1;->for:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/pr1;->for:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/pr1;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Landroid/support/v4/w61;

    invoke-direct {v1, v0}, Landroid/support/v4/w61;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/pr1;->for:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/pr1;->for:Z

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/pr1;->do:Lrx/CompletableSubscriber;

    invoke-interface {v1, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 6
    new-instance v2, Landroid/support/v4/x61;

    new-instance v3, Lrx/exceptions/do;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lrx/exceptions/do;-><init>([Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Landroid/support/v4/x61;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v4/pr1;->if:Lrx/Subscription;

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/pr1;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0, p0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v4/pr1;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pr1;->if:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
