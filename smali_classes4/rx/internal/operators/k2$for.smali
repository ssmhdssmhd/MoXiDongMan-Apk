.class final Lrx/internal/operators/k2$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "[",
        "Lrx/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final for:Lrx/internal/operators/k2$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/k2$if<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/internal/operators/k2$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/k2$do<",
            "TR;>;"
        }
    .end annotation
.end field

.field public new:Z

.field public final synthetic try:Lrx/internal/operators/k2;


# direct methods
.method public constructor <init>(Lrx/internal/operators/k2;Landroid/support/v4/y22;Lrx/internal/operators/k2$do;Lrx/internal/operators/k2$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;",
            "Lrx/internal/operators/k2$do<",
            "TR;>;",
            "Lrx/internal/operators/k2$if<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrx/internal/operators/k2$for;->try:Lrx/internal/operators/k2;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/k2$for;->do:Landroid/support/v4/y22;

    .line 3
    iput-object p3, p0, Lrx/internal/operators/k2$for;->if:Lrx/internal/operators/k2$do;

    .line 4
    iput-object p4, p0, Lrx/internal/operators/k2$for;->for:Lrx/internal/operators/k2$if;

    return-void
.end method


# virtual methods
.method public do([Lrx/Observable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/k2$for;->new:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/k2$for;->if:Lrx/internal/operators/k2$do;

    iget-object v1, p0, Lrx/internal/operators/k2$for;->for:Lrx/internal/operators/k2$if;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/k2$do;->start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lrx/internal/operators/k2$for;->do:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    :goto_1
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/k2$for;->new:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/k2$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k2$for;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/k2$for;->do([Lrx/Observable;)V

    return-void
.end method
