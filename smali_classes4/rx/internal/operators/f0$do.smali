.class Lrx/internal/operators/f0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/f0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public final synthetic do:Lrx/subjects/for;

.field public final synthetic for:Lrx/internal/operators/f0;

.field public final synthetic if:Landroid/support/v4/ax1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/f0;Landroid/support/v4/y22;Lrx/subjects/for;Landroid/support/v4/ax1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/f0$do;->for:Lrx/internal/operators/f0;

    iput-object p3, p0, Lrx/internal/operators/f0$do;->do:Lrx/subjects/for;

    iput-object p4, p0, Lrx/internal/operators/f0$do;->if:Landroid/support/v4/ax1;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f0$do;->do:Lrx/subjects/for;

    invoke-virtual {v0}, Lrx/subjects/for;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f0$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/f0$do;->do:Lrx/subjects/for;

    iget-object v1, p0, Lrx/internal/operators/f0$do;->for:Lrx/internal/operators/f0;

    iget-object v1, v1, Lrx/internal/operators/f0;->if:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lrx/Observable;->l4(I)Lrx/Observable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lrx/Observable;->Z(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/f0$do$do;

    invoke-direct {v2, p0, p1}, Lrx/internal/operators/f0$do$do;-><init>(Lrx/internal/operators/f0$do;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->K1(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/subjects/for;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :goto_0
    return-void
.end method
