.class Lrx/internal/operators/d1$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/d1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field private do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final synthetic for:Lrx/internal/operators/d1$new;

.field public final synthetic if:Ljava/lang/Object;

.field public final synthetic new:Lrx/internal/operators/d1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/d1;Ljava/lang/Object;Lrx/internal/operators/d1$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/d1$for;->new:Lrx/internal/operators/d1;

    iput-object p2, p0, Lrx/internal/operators/d1$for;->if:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/d1$for;->for:Lrx/internal/operators/d1$new;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/d1$for;->do:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1$for;->for:Lrx/internal/operators/d1$new;

    invoke-virtual {v0}, Lrx/internal/operators/d1$new;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1$for;->for:Lrx/internal/operators/d1$new;

    invoke-virtual {v0, p1}, Lrx/internal/operators/d1$new;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lrx/internal/operators/d1$for;->do:Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/d1$for;->new:Lrx/internal/operators/d1;

    iget-object v1, v1, Lrx/internal/operators/d1;->if:Lrx/functions/Func2;

    invoke-interface {v1, v0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object p1, p0, Lrx/internal/operators/d1$for;->do:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lrx/internal/operators/d1$for;->for:Lrx/internal/operators/d1$new;

    invoke-virtual {v0, p1}, Lrx/internal/operators/d1$new;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0, p0, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1$for;->for:Lrx/internal/operators/d1$new;

    invoke-virtual {v0, p1}, Lrx/internal/operators/d1$new;->setProducer(Lrx/Producer;)V

    return-void
.end method
