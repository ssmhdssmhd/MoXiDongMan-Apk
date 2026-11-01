.class final Lrx/internal/operators/static$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/static;
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
.field private final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private for:Z

.field private final if:Lrx/internal/operators/static$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/static$new<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLandroid/support/v4/y22;Lrx/internal/operators/static$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Lrx/internal/operators/static$new<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p3, p0, Lrx/internal/operators/static$for;->do:Landroid/support/v4/y22;

    .line 3
    iput-object p4, p0, Lrx/internal/operators/static$for;->if:Lrx/internal/operators/static$new;

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public static synthetic do(Lrx/internal/operators/static$for;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/static$for;->for(J)V

    return-void
.end method

.method private for(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method private if()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/static$for;->for:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/static$for;->if:Lrx/internal/operators/static$new;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 3
    iput-boolean v1, p0, Lrx/internal/operators/static$for;->for:Z

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/static$for;->if:Lrx/internal/operators/static$new;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lrx/internal/operators/static$for;->if:Lrx/internal/operators/static$new;

    invoke-virtual {v0, p0}, Lrx/internal/operators/static$new;->unsubscribeOthers(Lrx/internal/operators/static$for;)V

    .line 6
    iput-boolean v1, p0, Lrx/internal/operators/static$for;->for:Z

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/static$for;->if:Lrx/internal/operators/static$new;

    invoke-virtual {v0}, Lrx/internal/operators/static$new;->unsubscribeLosers()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/internal/operators/static$for;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/static$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/internal/operators/static$for;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/static$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_0
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
    invoke-direct {p0}, Lrx/internal/operators/static$for;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/static$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
