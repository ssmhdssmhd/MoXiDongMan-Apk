.class final Lrx/internal/operators/n1$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
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
.field private final do:J

.field private final if:Lrx/internal/operators/n1$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/n1$new<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLrx/internal/operators/n1$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/internal/operators/n1$new<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-wide p1, p0, Lrx/internal/operators/n1$for;->do:J

    .line 3
    iput-object p3, p0, Lrx/internal/operators/n1$for;->if:Lrx/internal/operators/n1$new;

    return-void
.end method

.method public static synthetic do(Lrx/internal/operators/n1$for;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/internal/operators/n1$for;->do:J

    return-wide v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n1$for;->if:Lrx/internal/operators/n1$new;

    iget-wide v1, p0, Lrx/internal/operators/n1$for;->do:J

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/n1$new;->new(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n1$for;->if:Lrx/internal/operators/n1$new;

    iget-wide v1, p0, Lrx/internal/operators/n1$for;->do:J

    invoke-virtual {v0, p1, v1, v2}, Lrx/internal/operators/n1$new;->else(Ljava/lang/Throwable;J)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n1$for;->if:Lrx/internal/operators/n1$new;

    invoke-virtual {v0, p1, p0}, Lrx/internal/operators/n1$new;->case(Ljava/lang/Object;Lrx/internal/operators/n1$for;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n1$for;->if:Lrx/internal/operators/n1$new;

    iget-wide v1, p0, Lrx/internal/operators/n1$for;->do:J

    invoke-virtual {v0, p1, v1, v2}, Lrx/internal/operators/n1$new;->this(Lrx/Producer;J)V

    return-void
.end method
