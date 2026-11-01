.class final Lrx/internal/operators/this$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/this$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile case:Z

.field public final do:Lrx/CompletableSubscriber;

.field public volatile else:Z

.field public final for:Lrx/internal/util/unsafe/switch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/unsafe/switch<",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Landroid/support/v4/uw1;

.field public final new:Lrx/internal/operators/this$do$do;

.field public final try:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/this$do;->do:Lrx/CompletableSubscriber;

    .line 3
    new-instance p1, Lrx/internal/util/unsafe/switch;

    invoke-direct {p1, p2}, Lrx/internal/util/unsafe/switch;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/this$do;->for:Lrx/internal/util/unsafe/switch;

    .line 4
    new-instance p1, Landroid/support/v4/uw1;

    invoke-direct {p1}, Landroid/support/v4/uw1;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/this$do;->if:Landroid/support/v4/uw1;

    .line 5
    new-instance v0, Lrx/internal/operators/this$do$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/this$do$do;-><init>(Lrx/internal/operators/this$do;)V

    iput-object v0, p0, Lrx/internal/operators/this$do;->new:Lrx/internal/operators/this$do$do;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/this$do;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    int-to-long p1, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/internal/operators/this$do;->new:Lrx/internal/operators/this$do$do;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lrx/internal/operators/this$do;->else:Z

    if-nez v1, :cond_4

    .line 5
    iget-boolean v1, p0, Lrx/internal/operators/this$do;->case:Z

    .line 6
    iget-object v2, p0, Lrx/internal/operators/this$do;->for:Lrx/internal/util/unsafe/switch;

    invoke-virtual {v2}, Lrx/internal/util/unsafe/switch;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Completable;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 7
    iget-object v0, p0, Lrx/internal/operators/this$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    return-void

    :cond_3
    if-nez v4, :cond_4

    .line 8
    iput-boolean v3, p0, Lrx/internal/operators/this$do;->else:Z

    .line 9
    invoke-virtual {v2, v0}, Lrx/Completable;->E(Lrx/CompletableSubscriber;)V

    const-wide/16 v1, 0x1

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/y22;->request(J)V

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public for(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 2
    invoke-virtual {p0, p1}, Lrx/internal/operators/this$do;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public if()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/this$do;->else:Z

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/this$do;->do()V

    return-void
.end method

.method public new(Lrx/Completable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/this$do;->for:Lrx/internal/util/unsafe/switch;

    invoke-virtual {v0, p1}, Lrx/internal/util/unsafe/switch;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/zz0;

    invoke-direct {p1}, Landroid/support/v4/zz0;-><init>()V

    invoke-virtual {p0, p1}, Lrx/internal/operators/this$do;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/this$do;->do()V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/this$do;->case:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/this$do;->case:Z

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/this$do;->do()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/this$do;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/this$do;->do:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Completable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/this$do;->new(Lrx/Completable;)V

    return-void
.end method
