.class final Lrx/internal/operators/l0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
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
.field public final do:Lrx/internal/operators/l0$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/l0$for<",
            "*TT;>;"
        }
    .end annotation
.end field

.field public volatile for:Z

.field public final if:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public new:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/l0$for;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/l0$for<",
            "*TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/l0$do;->do:Lrx/internal/operators/l0$for;

    .line 3
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lrx/internal/util/unsafe/switch;

    invoke-direct {p1, p2}, Lrx/internal/util/unsafe/switch;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lrx/internal/util/atomic/new;

    invoke-direct {p1, p2}, Lrx/internal/util/atomic/new;-><init>(I)V

    .line 6
    :goto_0
    iput-object p1, p0, Lrx/internal/operators/l0$do;->if:Ljava/util/Queue;

    int-to-long p1, p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public do(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/l0$do;->for:Z

    .line 2
    iget-object v0, p0, Lrx/internal/operators/l0$do;->do:Lrx/internal/operators/l0$for;

    invoke-virtual {v0}, Lrx/internal/operators/l0$for;->if()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/l0$do;->new:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/l0$do;->for:Z

    .line 3
    iget-object p1, p0, Lrx/internal/operators/l0$do;->do:Lrx/internal/operators/l0$for;

    invoke-virtual {p1}, Lrx/internal/operators/l0$for;->if()V

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
    iget-object v0, p0, Lrx/internal/operators/l0$do;->if:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lrx/internal/operators/l0$do;->do:Lrx/internal/operators/l0$for;

    invoke-virtual {p1}, Lrx/internal/operators/l0$for;->if()V

    return-void
.end method
