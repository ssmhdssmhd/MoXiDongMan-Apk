.class Lrx/internal/operators/l2$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/l2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final synthetic for:Ljava/util/Iterator;

.field public final synthetic if:Landroid/support/v4/y22;

.field public final synthetic new:Lrx/internal/operators/l2;


# direct methods
.method public constructor <init>(Lrx/internal/operators/l2;Landroid/support/v4/y22;Landroid/support/v4/y22;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/l2$do;->new:Lrx/internal/operators/l2;

    iput-object p3, p0, Lrx/internal/operators/l2$do;->if:Landroid/support/v4/y22;

    iput-object p4, p0, Lrx/internal/operators/l2$do;->for:Ljava/util/Iterator;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/l2$do;->do:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/l2$do;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/l2$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/l2$do;->do:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx/internal/operators/l2$do;->do:Z

    .line 4
    iget-object v0, p0, Lrx/internal/operators/l2$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/l2$do;->do:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/l2$do;->if:Landroid/support/v4/y22;

    iget-object v1, p0, Lrx/internal/operators/l2$do;->new:Lrx/internal/operators/l2;

    iget-object v1, v1, Lrx/internal/operators/l2;->if:Lrx/functions/Func2;

    iget-object v2, p0, Lrx/internal/operators/l2$do;->for:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/l2$do;->for:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lrx/internal/operators/l2$do;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method
