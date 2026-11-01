.class Lrx/internal/operators/a1$do$do$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/a1$do$do;->call()V
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
.field public do:Z

.field public final synthetic for:Lrx/internal/operators/a1$do$do;

.field public final synthetic if:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/a1$do$do;Lrx/functions/Action0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iput-object p2, p0, Lrx/internal/operators/a1$do$do$do;->if:Lrx/functions/Action0;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/a1$do$do$do;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/a1$do$do$do;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/a1$do$do$do;->do:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/a1$do$do$do;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v1, v0, Lrx/internal/operators/a1$do;->if:Lrx/functions/Func2;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->case:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->for:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object p1, p1, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object p1, p1, Lrx/internal/operators/a1$do;->for:Lrx/if$do;

    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->if:Lrx/functions/Action0;

    invoke-virtual {p1, v0}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
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
    iget-boolean v0, p0, Lrx/internal/operators/a1$do$do$do;->do:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object p1, p1, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object p1, p1, Lrx/internal/operators/a1$do;->try:Lrx/internal/producers/do;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lrx/internal/producers/do;->if(J)V

    :cond_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/a1$do$do$do;->for:Lrx/internal/operators/a1$do$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->try:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
