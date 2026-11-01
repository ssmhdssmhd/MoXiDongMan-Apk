.class Lrx/Completable$import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$import;->do(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/CompletableSubscriber;

.field public final synthetic for:Lrx/Completable$import;

.field public final synthetic if:Landroid/support/v4/ww1;


# direct methods
.method public constructor <init>(Lrx/Completable$import;Lrx/CompletableSubscriber;Landroid/support/v4/ww1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$import$do;->for:Lrx/Completable$import;

    iput-object p2, p0, Lrx/Completable$import$do;->do:Lrx/CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$import$do;->if:Landroid/support/v4/ww1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$import$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    :try_start_0
    iget-object v3, p0, Lrx/Completable$import$do;->for:Lrx/Completable$import;

    iget-object v3, v3, Lrx/Completable$import;->do:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Completable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The completable returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v4, Lrx/exceptions/do;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object p1, p0, Lrx/Completable$import$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {p1, v4}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lrx/Completable$import$do$do;

    invoke-direct {p1, p0}, Lrx/Completable$import$do$do;-><init>(Lrx/Completable$import$do;)V

    invoke-virtual {v3, p1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void

    :catchall_0
    move-exception v3

    .line 6
    new-instance v4, Lrx/exceptions/do;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object p1, p0, Lrx/Completable$import$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {p1, v4}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$import$do;->if:Landroid/support/v4/ww1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    return-void
.end method
