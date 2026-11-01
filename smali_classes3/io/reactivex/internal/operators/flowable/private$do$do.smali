.class final Lio/reactivex/internal/operators/flowable/private$do$do;
.super Landroid/support/v4/p10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/private$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/p10<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final for:J

.field public final if:Lio/reactivex/internal/operators/flowable/private$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/private$do<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final new:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/private$do;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/private$do<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/p10;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->case:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->if:Lio/reactivex/internal/operators/flowable/private$do;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->for:J

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->new:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public new()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->case:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->if:Lio/reactivex/internal/operators/flowable/private$do;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->for:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->new:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/private$do;->emit(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->try:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->try:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/private$do$do;->new()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->try:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->try:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->if:Lio/reactivex/internal/operators/flowable/private$do;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/private$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->try:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/private$do$do;->try:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/p10;->do()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/private$do$do;->new()V

    return-void
.end method
