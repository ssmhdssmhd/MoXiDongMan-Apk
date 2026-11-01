.class Lrx/Completable$break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$break;->do(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/CompletableSubscriber;

.field public final synthetic if:Lrx/Completable$break;


# direct methods
.method public constructor <init>(Lrx/Completable$break;Lrx/CompletableSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iput-object p2, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iget-object v0, v0, Lrx/Completable$break;->do:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    iget-object v0, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 3
    :try_start_1
    iget-object v0, p0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iget-object v0, v0, Lrx/Completable$break;->if:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 5
    iget-object v1, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iget-object v0, v0, Lrx/Completable$break;->for:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Lrx/exceptions/do;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    move-object p1, v1

    .line 3
    :goto_0
    iget-object v0, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iget-object p1, p1, Lrx/Completable$break;->if:Lrx/functions/Action0;

    invoke-interface {p1}, Lrx/functions/Action0;->call()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 5
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$break$do;->if:Lrx/Completable$break;

    iget-object v0, v0, Lrx/Completable$break;->new:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    new-instance v1, Lrx/Completable$break$do$do;

    invoke-direct {v1, p0, p1}, Lrx/Completable$break$do$do;-><init>(Lrx/Completable$break$do;Lrx/Subscription;)V

    invoke-static {v1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 4
    iget-object p1, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object v1

    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 5
    iget-object p1, p0, Lrx/Completable$break$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
