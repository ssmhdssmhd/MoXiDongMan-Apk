.class final Lrx/internal/operators/default$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/default$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/default$new<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public if:J


# direct methods
.method public constructor <init>(Lrx/internal/operators/default$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/default$new<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/default$for;->do:Lrx/internal/operators/default$new;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/default$for;->do:Lrx/internal/operators/default$new;

    iget-wide v1, p0, Lrx/internal/operators/default$for;->if:J

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/default$new;->for(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/default$for;->do:Lrx/internal/operators/default$new;

    iget-wide v1, p0, Lrx/internal/operators/default$for;->if:J

    invoke-virtual {v0, p1, v1, v2}, Lrx/internal/operators/default$new;->new(Ljava/lang/Throwable;J)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lrx/internal/operators/default$for;->if:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/default$for;->if:J

    .line 2
    iget-object v0, p0, Lrx/internal/operators/default$for;->do:Lrx/internal/operators/default$new;

    invoke-virtual {v0, p1}, Lrx/internal/operators/default$new;->try(Ljava/lang/Object;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/default$for;->do:Lrx/internal/operators/default$new;

    iget-object v0, v0, Lrx/internal/operators/default$new;->new:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
