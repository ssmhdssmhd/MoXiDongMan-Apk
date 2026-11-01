.class public final Lrx/internal/operators/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/x$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "+TTClosing;>;>;"
        }
    .end annotation
.end field

.field public final if:I


# direct methods
.method public constructor <init>(Lrx/Observable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TTClosing;>;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lrx/internal/operators/x$do;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/x$do;-><init>(Lrx/internal/operators/x;Lrx/Observable;)V

    iput-object v0, p0, Lrx/internal/operators/x;->do:Lrx/functions/Func0;

    .line 6
    iput p2, p0, Lrx/internal/operators/x;->if:I

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "+TTClosing;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/x;->do:Lrx/functions/Func0;

    .line 3
    iput p2, p0, Lrx/internal/operators/x;->if:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/x;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/x;->do:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Lrx/internal/operators/x$for;

    new-instance v2, Landroid/support/v4/ax1;

    invoke-direct {v2, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/x$for;-><init>(Lrx/internal/operators/x;Landroid/support/v4/y22;)V

    .line 3
    new-instance v2, Lrx/internal/operators/x$if;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/x$if;-><init>(Lrx/internal/operators/x;Lrx/internal/operators/x$for;)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    invoke-virtual {v0, v2}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v1

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, p1}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 8
    invoke-static {}, Lrx/observers/new;->new()Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method
