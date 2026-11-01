.class Lrx/observables/do$this$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/do$this;->else(Lrx/Observable;)V
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
.field public do:J

.field public final synthetic for:Lrx/internal/operators/try;

.field public final synthetic if:J

.field public final synthetic new:Lrx/observables/do$this;


# direct methods
.method public constructor <init>(Lrx/observables/do$this;JLrx/internal/operators/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/do$this$do;->new:Lrx/observables/do$this;

    iput-wide p2, p0, Lrx/observables/do$this$do;->if:J

    iput-object p4, p0, Lrx/observables/do$this$do;->for:Lrx/internal/operators/try;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-wide p2, p0, Lrx/observables/do$this$do;->do:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/observables/do$this$do;->for:Lrx/internal/operators/try;

    invoke-virtual {v0}, Lrx/internal/operators/try;->onCompleted()V

    .line 2
    iget-wide v0, p0, Lrx/observables/do$this$do;->do:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v2, p0, Lrx/observables/do$this$do;->new:Lrx/observables/do$this;

    invoke-virtual {v2, v0, v1}, Lrx/observables/do$this;->try(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/do$this$do;->for:Lrx/internal/operators/try;

    invoke-virtual {v0, p1}, Lrx/internal/operators/try;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lrx/observables/do$this$do;->do:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lrx/observables/do$this$do;->do:J

    .line 2
    iget-object v0, p0, Lrx/observables/do$this$do;->for:Lrx/internal/operators/try;

    invoke-virtual {v0, p1}, Lrx/internal/operators/try;->onNext(Ljava/lang/Object;)V

    return-void
.end method
