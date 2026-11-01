.class Lrx/internal/operators/g$for$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$for;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "Lrx/do<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/internal/operators/g$for;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$for;Landroid/support/v4/y22;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$for$do;->if:Lrx/internal/operators/g$for;

    iput-object p3, p0, Lrx/internal/operators/g$for$do;->do:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public do(Lrx/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/do<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lrx/do;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/g$for$do;->if:Lrx/internal/operators/g$for;

    iget-object v0, v0, Lrx/internal/operators/g$for;->do:Lrx/internal/operators/g;

    iget-boolean v0, v0, Lrx/internal/operators/g;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lrx/internal/operators/g$for$do;->do:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lrx/do;->class()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/internal/operators/g$for$do;->if:Lrx/internal/operators/g$for;

    iget-object v0, v0, Lrx/internal/operators/g$for;->do:Lrx/internal/operators/g;

    iget-boolean v0, v0, Lrx/internal/operators/g;->new:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lrx/internal/operators/g$for$do;->do:Landroid/support/v4/y22;

    invoke-virtual {p1}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/g$for$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$for$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$for$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/do;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g$for$do;->do(Lrx/do;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    return-void
.end method
