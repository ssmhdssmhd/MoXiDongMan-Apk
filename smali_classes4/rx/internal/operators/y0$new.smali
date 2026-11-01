.class Lrx/internal/operators/y0$new;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/y0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public final synthetic case:Lrx/internal/operators/y0;

.field private do:Z

.field public final synthetic for:Landroid/support/v4/y22;

.field public if:J

.field public final synthetic new:Lrx/internal/producers/do;

.field public final synthetic try:Landroid/support/v4/ww1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/y0;Landroid/support/v4/y22;Lrx/internal/producers/do;Landroid/support/v4/ww1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/y0$new;->case:Lrx/internal/operators/y0;

    iput-object p2, p0, Lrx/internal/operators/y0$new;->for:Landroid/support/v4/y22;

    iput-object p3, p0, Lrx/internal/operators/y0$new;->new:Lrx/internal/producers/do;

    iput-object p4, p0, Lrx/internal/operators/y0$new;->try:Landroid/support/v4/ww1;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/y0$new;->do:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/y0$new;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/y0$new;->for:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/y0$new;->do:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lrx/internal/operators/y0$new;->do:Z

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 6
    new-instance v0, Lrx/internal/operators/y0$new$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/y0$new$do;-><init>(Lrx/internal/operators/y0$new;)V

    .line 7
    iget-object v1, p0, Lrx/internal/operators/y0$new;->try:Landroid/support/v4/ww1;

    invoke-virtual {v1, v0}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 8
    iget-wide v1, p0, Lrx/internal/operators/y0$new;->if:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 9
    iget-object v3, p0, Lrx/internal/operators/y0$new;->new:Lrx/internal/producers/do;

    invoke-virtual {v3, v1, v2}, Lrx/internal/producers/do;->if(J)V

    .line 10
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/y0$new;->case:Lrx/internal/operators/y0;

    iget-object v1, v1, Lrx/internal/operators/y0;->do:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Observable;

    .line 11
    invoke-virtual {p1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lrx/internal/operators/y0$new;->for:Landroid/support/v4/y22;

    invoke-static {p1, v0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :goto_0
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
    iget-boolean v0, p0, Lrx/internal/operators/y0$new;->do:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lrx/internal/operators/y0$new;->if:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/y0$new;->if:J

    .line 3
    iget-object v0, p0, Lrx/internal/operators/y0$new;->for:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y0$new;->new:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
