.class Lrx/Completable$finally$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$finally;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/b02;

.field public final synthetic if:Lrx/Completable$finally;


# direct methods
.method public constructor <init>(Lrx/Completable$finally;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$finally$do;->if:Lrx/Completable$finally;

    iput-object p2, p0, Lrx/Completable$finally$do;->do:Landroid/support/v4/b02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$finally$do;->if:Lrx/Completable$finally;

    iget-object v0, v0, Lrx/Completable$finally;->do:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/Completable$finally$do;->do:Landroid/support/v4/b02;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The value supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lrx/Completable$finally$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v1, v0}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lrx/Completable$finally$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v1, v0}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$finally$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$finally$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    return-void
.end method
