.class Lrx/internal/operators/c0$do$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c0$do;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lrx/internal/operators/c0$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/c0$do;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/c0$do$do;->if:Lrx/internal/operators/c0$do;

    iput p2, p0, Lrx/internal/operators/c0$do$do;->do:I

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c0$do$do;->if:Lrx/internal/operators/c0$do;

    iget-object v1, v0, Lrx/internal/operators/c0$do;->do:Lrx/internal/operators/d0$if;

    iget v2, p0, Lrx/internal/operators/c0$do$do;->do:I

    iget-object v3, v0, Lrx/internal/operators/c0$do;->for:Landroid/support/v4/ax1;

    iget-object v0, v0, Lrx/internal/operators/c0$do;->if:Landroid/support/v4/y22;

    invoke-virtual {v1, v2, v3, v0}, Lrx/internal/operators/d0$if;->if(ILandroid/support/v4/y22;Landroid/support/v4/y22;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c0$do$do;->if:Lrx/internal/operators/c0$do;

    iget-object v0, v0, Lrx/internal/operators/c0$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/c0$do$do;->onCompleted()V

    return-void
.end method
