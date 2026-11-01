.class final Lretrofit2/adapter/rxjava/CallArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Subscription;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final STATE_HAS_RESPONSE:I = 0x2

.field private static final STATE_REQUESTED:I = 0x1

.field private static final STATE_TERMINATED:I = 0x3

.field private static final STATE_WAITING:I


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>(Lretrofit2/Call;Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Landroid/support/v4/y22<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    .line 3
    iput-object p2, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Landroid/support/v4/y22;

    return-void
.end method

.method private deliverResponse(Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/support/v4/w61; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/support/v4/x61; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/support/v4/y61; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V
    :try_end_1
    .catch Landroid/support/v4/w61; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/support/v4/x61; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/support/v4/y61; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 7
    :goto_0
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 9
    :try_start_2
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/support/v4/w61; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/support/v4/x61; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/support/v4/y61; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 10
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 11
    new-instance v1, Lrx/exceptions/do;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lrx/exceptions/do;-><init>([Ljava/lang/Throwable;)V

    .line 12
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object p1

    invoke-virtual {p1}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    .line 13
    :goto_2
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :catch_6
    move-exception p1

    goto :goto_4

    :catch_7
    move-exception p1

    goto :goto_4

    :catch_8
    move-exception p1

    .line 14
    :goto_4
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public emitError(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/support/v4/w61; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/support/v4/x61; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/support/v4/y61; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lrx/exceptions/do;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lrx/exceptions/do;-><init>([Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object p1

    invoke-virtual {p1}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 7
    :goto_0
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->if()Lrx/plugins/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/do;->do(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public emitResponse(Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;->deliverResponse(Lretrofit2/Response;)V

    return-void

    .line 6
    :cond_3
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->response:Lretrofit2/Response;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->unsubscribed:Z

    return v0
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_2
    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->response:Lretrofit2/Response;

    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;->deliverResponse(Lretrofit2/Response;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->unsubscribed:Z

    .line 2
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    return-void
.end method
