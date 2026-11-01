.class final Lrx/internal/operators/instanceof$do$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/instanceof$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TD2;>;"
    }
.end annotation


# instance fields
.field public final do:I

.field public final synthetic for:Lrx/internal/operators/instanceof$do;

.field public if:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/instanceof$do;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/instanceof$do$for;->for:Lrx/internal/operators/instanceof$do;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/instanceof$do$for;->if:Z

    .line 3
    iput p2, p0, Lrx/internal/operators/instanceof$do$for;->do:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/instanceof$do$for;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/instanceof$do$for;->if:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$for;->for:Lrx/internal/operators/instanceof$do;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/instanceof$do$for;->for:Lrx/internal/operators/instanceof$do;

    iget-object v1, v1, Lrx/internal/operators/instanceof$do;->rightMap:Ljava/util/Map;

    iget v2, p0, Lrx/internal/operators/instanceof$do$for;->do:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$for;->for:Lrx/internal/operators/instanceof$do;

    iget-object v0, v0, Lrx/internal/operators/instanceof$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v0, p0}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/instanceof$do$for;->for:Lrx/internal/operators/instanceof$do;

    invoke-virtual {v0, p1}, Lrx/internal/operators/instanceof$do;->errorMain(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD2;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/instanceof$do$for;->onCompleted()V

    return-void
.end method
