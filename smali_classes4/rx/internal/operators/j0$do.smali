.class Lrx/internal/operators/j0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/internal/operators/j0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/j0;Landroid/support/v4/y22;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/j0$do;->if:Lrx/internal/operators/j0;

    iput-object p3, p0, Lrx/internal/operators/j0$do;->do:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j0$do;->if:Lrx/internal/operators/j0;

    iget-object v0, v0, Lrx/internal/operators/j0;->do:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j0$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/j0$do;->do()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/j0$do;->do()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j0$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/j0$do;->do()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lrx/internal/operators/j0$do;->do()V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j0$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
