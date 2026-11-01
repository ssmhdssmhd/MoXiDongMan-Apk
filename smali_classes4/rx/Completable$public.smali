.class Lrx/Completable$public;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->B(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:Z

.field public final synthetic for:Landroid/support/v4/x01;

.field public final synthetic if:Lrx/functions/Action0;

.field public final synthetic new:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;Lrx/functions/Action0;Landroid/support/v4/x01;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$public;->new:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$public;->if:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$public;->for:Landroid/support/v4/x01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/Completable$public;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/Completable$public;->do:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/Completable$public;->if:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lrx/Completable$public;->for:Landroid/support/v4/x01;

    invoke-virtual {v0}, Landroid/support/v4/x01;->unsubscribe()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-static {v0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0}, Lrx/Completable;->return(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 7
    iget-object v1, p0, Lrx/Completable$public;->for:Landroid/support/v4/x01;

    invoke-virtual {v1}, Landroid/support/v4/x01;->unsubscribe()V

    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lrx/Completable$public;->for:Landroid/support/v4/x01;

    invoke-virtual {v0}, Landroid/support/v4/x01;->unsubscribe()V

    .line 3
    invoke-static {p1}, Lrx/Completable;->return(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$public;->for:Landroid/support/v4/x01;

    invoke-virtual {v0, p1}, Landroid/support/v4/x01;->if(Lrx/Subscription;)V

    return-void
.end method
