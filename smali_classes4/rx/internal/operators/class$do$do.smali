.class Lrx/internal/operators/class$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/class$do;->new(Lrx/Completable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:Lrx/Subscription;

.field public final synthetic for:Lrx/internal/operators/class$do;

.field public if:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/class$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/class$do$do;->if:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/class$do$do;->if:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    iget-object v0, v0, Lrx/internal/operators/class$do;->if:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/internal/operators/class$do$do;->do:Lrx/Subscription;

    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    invoke-virtual {v0}, Lrx/internal/operators/class$do;->try()V

    .line 5
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    iget-boolean v0, v0, Lrx/internal/operators/class$do;->new:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lrx/internal/operators/class$do;->if(Lrx/internal/operators/class$do;J)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/class$do$do;->if:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx/internal/operators/class$do$do;->if:Z

    .line 4
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    iget-object v0, v0, Lrx/internal/operators/class$do;->if:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/internal/operators/class$do$do;->do:Lrx/Subscription;

    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    .line 5
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    invoke-virtual {v0}, Lrx/internal/operators/class$do;->for()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    invoke-virtual {p1}, Lrx/internal/operators/class$do;->try()V

    .line 7
    iget-object p1, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    iget-boolean v0, p1, Lrx/internal/operators/class$do;->for:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lrx/internal/operators/class$do;->new:Z

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lrx/internal/operators/class$do;->do(Lrx/internal/operators/class$do;J)V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lrx/internal/operators/class$do$do;->do:Lrx/Subscription;

    .line 2
    iget-object v0, p0, Lrx/internal/operators/class$do$do;->for:Lrx/internal/operators/class$do;

    iget-object v0, v0, Lrx/internal/operators/class$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    return-void
.end method
