.class final Lrx/internal/operators/g1$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
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
.field private case:Z

.field private final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final if:Z

.field private new:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private try:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;ZTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    .line 3
    iput-boolean p2, p0, Lrx/internal/operators/g1$if;->if:Z

    .line 4
    iput-object p3, p0, Lrx/internal/operators/g1$if;->for:Ljava/lang/Object;

    const-wide/16 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/g1$if;->case:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lrx/internal/operators/g1$if;->try:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    new-instance v1, Landroid/support/v4/yz1;

    iget-object v2, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    iget-object v3, p0, Lrx/internal/operators/g1$if;->new:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/yz1;-><init>(Landroid/support/v4/y22;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/g1$if;->if:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    new-instance v1, Landroid/support/v4/yz1;

    iget-object v2, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    iget-object v3, p0, Lrx/internal/operators/g1$if;->for:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/yz1;-><init>(Landroid/support/v4/y22;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Sequence contains no elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/g1$if;->case:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Lrx/internal/operators/g1$if;->case:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lrx/internal/operators/g1$if;->try:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lrx/internal/operators/g1$if;->case:Z

    .line 4
    iget-object p1, p0, Lrx/internal/operators/g1$if;->do:Landroid/support/v4/y22;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains too many elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/g1$if;->new:Ljava/lang/Object;

    .line 7
    iput-boolean v1, p0, Lrx/internal/operators/g1$if;->try:Z

    :cond_1
    :goto_0
    return-void
.end method
