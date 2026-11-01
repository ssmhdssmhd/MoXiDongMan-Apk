.class final Lio/reactivex/internal/operators/parallel/try$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/try$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:I

.field public final synthetic for:Lio/reactivex/internal/operators/parallel/try$do;

.field public final if:I


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/parallel/try$do;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->for:Lio/reactivex/internal/operators/parallel/try$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->do:I

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->if:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->for:Lio/reactivex/internal/operators/parallel/try$do;

    iget-object v1, v0, Lio/reactivex/internal/operators/parallel/try$do;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget v0, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->if:I

    iget v2, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->do:I

    add-int/2addr v2, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->for:Lio/reactivex/internal/operators/parallel/try$do;

    iget v1, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->if:I

    add-int/2addr v1, v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/parallel/try$do;->cancel(I)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/for;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->for:Lio/reactivex/internal/operators/parallel/try$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/try$do;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 3
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->do:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v3, v4, p1, p2}, Landroid/support/v4/r6;->for(JJ)J

    move-result-wide v5

    .line 5
    iget v2, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->do:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->for:Lio/reactivex/internal/operators/parallel/try$do;

    iget-object p1, p1, Lio/reactivex/internal/operators/parallel/try$do;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget p2, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->if:I

    if-ne p1, p2, :cond_2

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/try$do$do;->for:Lio/reactivex/internal/operators/parallel/try$do;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/parallel/try$do;->drain()V

    :cond_2
    return-void
.end method
