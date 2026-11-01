.class public final Lrx/internal/operators/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# static fields
.field public static final for:Ljava/lang/Object;


# instance fields
.field public final do:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/i2;->for:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TU;>;",
            "Lrx/functions/Func2<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/i2;->if:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/i2;->do:Lrx/functions/Func2;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/i2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/support/v4/ax1;

    const/4 v0, 0x0

    invoke-direct {v6, p1, v0}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;Z)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lrx/internal/operators/i2;->for:Ljava/lang/Object;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v7, Lrx/internal/operators/i2$do;

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/i2$do;-><init>(Lrx/internal/operators/i2;Landroid/support/v4/y22;ZLjava/util/concurrent/atomic/AtomicReference;Landroid/support/v4/ax1;)V

    .line 5
    new-instance v0, Lrx/internal/operators/i2$if;

    invoke-direct {v0, p0, p1, v6}, Lrx/internal/operators/i2$if;-><init>(Lrx/internal/operators/i2;Ljava/util/concurrent/atomic/AtomicReference;Landroid/support/v4/ax1;)V

    .line 6
    invoke-virtual {v6, v7}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    invoke-virtual {v6, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    iget-object p1, p0, Lrx/internal/operators/i2;->if:Lrx/Observable;

    invoke-virtual {p1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v7
.end method
