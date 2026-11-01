.class Lrx/internal/operators/z0$if$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/z0$if;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic for:Lrx/internal/operators/z0$if;

.field public final synthetic if:Lrx/internal/operators/e;


# direct methods
.method public constructor <init>(Lrx/internal/operators/z0$if;Landroid/support/v4/y22;Lrx/internal/operators/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/z0$if$do;->for:Lrx/internal/operators/z0$if;

    iput-object p2, p0, Lrx/internal/operators/z0$if$do;->do:Landroid/support/v4/y22;

    iput-object p3, p0, Lrx/internal/operators/z0$if$do;->if:Lrx/internal/operators/e;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z0$if$do;->if:Lrx/internal/operators/e;

    invoke-virtual {v0}, Lrx/internal/operators/e;->unsubscribe()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/z0$if$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z0$if$do;->if:Lrx/internal/operators/e;

    invoke-virtual {v0}, Lrx/internal/operators/e;->unsubscribe()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/z0$if$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z0$if$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/z0$if$do;->do:Landroid/support/v4/y22;

    invoke-virtual {v0, p1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method
