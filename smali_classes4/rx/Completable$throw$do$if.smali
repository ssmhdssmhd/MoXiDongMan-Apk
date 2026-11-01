.class Lrx/Completable$throw$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$throw$do;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Throwable;

.field public final synthetic if:Lrx/Completable$throw$do;


# direct methods
.method public constructor <init>(Lrx/Completable$throw$do;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$throw$do$if;->if:Lrx/Completable$throw$do;

    iput-object p2, p0, Lrx/Completable$throw$do$if;->do:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Completable$throw$do$if;->if:Lrx/Completable$throw$do;

    iget-object v0, v0, Lrx/Completable$throw$do;->if:Lrx/CompletableSubscriber;

    iget-object v1, p0, Lrx/Completable$throw$do$if;->do:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lrx/Completable$throw$do$if;->if:Lrx/Completable$throw$do;

    iget-object v0, v0, Lrx/Completable$throw$do;->for:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/Completable$throw$do$if;->if:Lrx/Completable$throw$do;

    iget-object v1, v1, Lrx/Completable$throw$do;->for:Landroid/support/v4/d32;

    invoke-virtual {v1}, Landroid/support/v4/d32;->unsubscribe()V

    throw v0
.end method
