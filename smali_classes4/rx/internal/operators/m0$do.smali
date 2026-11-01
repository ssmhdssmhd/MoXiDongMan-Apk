.class Lrx/internal/operators/m0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/m0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field private do:I

.field public final synthetic for:Lrx/internal/operators/m0;

.field public final synthetic if:Landroid/support/v4/y22;


# direct methods
.method public constructor <init>(Lrx/internal/operators/m0;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/m0$do;->for:Lrx/internal/operators/m0;

    iput-object p2, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 1
    iget v0, p0, Lrx/internal/operators/m0$do;->do:I

    iget-object v1, p0, Lrx/internal/operators/m0$do;->for:Lrx/internal/operators/m0;

    iget v2, v1, Lrx/internal/operators/m0;->do:I

    if-gt v0, v2, :cond_1

    .line 2
    iget-boolean v0, v1, Lrx/internal/operators/m0;->if:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    iget-object v1, v1, Lrx/internal/operators/m0;->for:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrx/internal/operators/m0$do;->for:Lrx/internal/operators/m0;

    iget v3, v3, Lrx/internal/operators/m0;->do:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/internal/operators/m0$do;->do:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/m0$do;->do:I

    iget-object v1, p0, Lrx/internal/operators/m0$do;->for:Lrx/internal/operators/m0;

    iget v1, v1, Lrx/internal/operators/m0;->do:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m0$do;->if:Landroid/support/v4/y22;

    new-instance v1, Lrx/internal/operators/m0$if;

    invoke-direct {v1, p1}, Lrx/internal/operators/m0$if;-><init>(Lrx/Producer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method
