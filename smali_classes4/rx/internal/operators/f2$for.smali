.class final Lrx/internal/operators/f2$for;
.super Landroid/support/v4/y22;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/f2$for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field public case:I

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public else:Landroid/support/v4/u22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/u22<",
            "TT;TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:I

.field public final new:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final try:Lrx/Subscription;


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/f2$for;->do:Landroid/support/v4/y22;

    .line 3
    iput p2, p0, Lrx/internal/operators/f2$for;->if:I

    .line 4
    iput p3, p0, Lrx/internal/operators/f2$for;->for:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/f2$for;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-static {p0}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/f2$for;->try:Lrx/Subscription;

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    const-wide/16 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public static synthetic do(Lrx/internal/operators/f2$for;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public static synthetic if(Lrx/internal/operators/f2$for;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$for;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public for()Lrx/Producer;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/f2$for$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/f2$for$do;-><init>(Lrx/internal/operators/f2$for;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    .line 3
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 4
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/f2$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    .line 3
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/f2$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/internal/operators/f2$for;->case:I

    .line 2
    iget-object v1, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lrx/internal/operators/f2$for;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v1, p0, Lrx/internal/operators/f2$for;->if:I

    invoke-static {v1, p0}, Lrx/subjects/else;->i6(ILrx/functions/Action0;)Lrx/subjects/else;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    .line 6
    iget-object v2, p0, Lrx/internal/operators/f2$for;->do:Landroid/support/v4/y22;

    invoke-interface {v2, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget p1, p0, Lrx/internal/operators/f2$for;->if:I

    if-ne v0, p1, :cond_2

    .line 9
    iput v0, p0, Lrx/internal/operators/f2$for;->case:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lrx/internal/operators/f2$for;->else:Landroid/support/v4/u22;

    .line 11
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 12
    :cond_2
    iget p1, p0, Lrx/internal/operators/f2$for;->for:I

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lrx/internal/operators/f2$for;->case:I

    goto :goto_0

    .line 14
    :cond_3
    iput v0, p0, Lrx/internal/operators/f2$for;->case:I

    :goto_0
    return-void
.end method
