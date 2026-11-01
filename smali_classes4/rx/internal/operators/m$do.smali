.class final Lrx/internal/operators/m$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lrx/internal/producers/do;

.field private final if:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;Lrx/internal/producers/do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Lrx/internal/producers/do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/m$do;->if:Landroid/support/v4/y22;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/m$do;->do:Lrx/internal/producers/do;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m$do;->if:Landroid/support/v4/y22;

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
    iget-object v0, p0, Lrx/internal/operators/m$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/m$do;->do:Lrx/internal/producers/do;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lrx/internal/producers/do;->if(J)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/m$do;->do:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
