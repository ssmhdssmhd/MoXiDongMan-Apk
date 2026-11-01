.class Lrx/internal/operators/w1$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/w1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field private do:J

.field public final synthetic for:Lrx/internal/operators/w1;

.field public final synthetic if:Landroid/support/v4/y22;


# direct methods
.method public constructor <init>(Lrx/internal/operators/w1;Landroid/support/v4/y22;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/w1$do;->for:Lrx/internal/operators/w1;

    iput-object p3, p0, Lrx/internal/operators/w1$do;->if:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    .line 2
    iget-object p1, p1, Lrx/internal/operators/w1;->do:Lrx/if;

    invoke-virtual {p1}, Lrx/if;->if()J

    move-result-wide p1

    iput-wide p1, p0, Lrx/internal/operators/w1$do;->do:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/w1$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/w1$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/w1$do;->for:Lrx/internal/operators/w1;

    iget-object v0, v0, Lrx/internal/operators/w1;->do:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lrx/internal/operators/w1$do;->if:Landroid/support/v4/y22;

    new-instance v3, Landroid/support/v4/w62;

    iget-wide v4, p0, Lrx/internal/operators/w1$do;->do:J

    sub-long v4, v0, v4

    invoke-direct {v3, v4, v5, p1}, Landroid/support/v4/w62;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    iput-wide v0, p0, Lrx/internal/operators/w1$do;->do:J

    return-void
.end method
