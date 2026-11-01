.class public final Lrx/internal/operators/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT1;>;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT2;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "-TT1;-TT2;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT2;>;",
            "Lrx/functions/Func2<",
            "-TT1;-TT2;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/l2;->do:Ljava/lang/Iterable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/l2;->if:Lrx/functions/Func2;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/l2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)",
            "Landroid/support/v4/y22<",
            "-TT1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/l2;->do:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    .line 4
    invoke-static {}, Lrx/observers/new;->new()Landroid/support/v4/y22;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 5
    :cond_0
    new-instance v1, Lrx/internal/operators/l2$do;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/l2$do;-><init>(Lrx/internal/operators/l2;Landroid/support/v4/y22;Landroid/support/v4/y22;Ljava/util/Iterator;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0, p1}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 7
    invoke-static {}, Lrx/observers/new;->new()Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method
