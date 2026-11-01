.class public final Lrx/internal/operators/b1;
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
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field public static final if:Ljava/lang/Object;


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/b1;->if:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/b1;->do:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/b1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ax1;

    invoke-direct {v0, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/b1;->if:Ljava/lang/Object;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    new-instance v3, Lrx/internal/operators/b1$do;

    invoke-direct {v3, p0, v1, v0, v2}, Lrx/internal/operators/b1$do;-><init>(Lrx/internal/operators/b1;Ljava/util/concurrent/atomic/AtomicReference;Landroid/support/v4/ax1;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5
    new-instance v4, Lrx/internal/operators/b1$if;

    invoke-direct {v4, p0, v1, v0, v3}, Lrx/internal/operators/b1$if;-><init>(Lrx/internal/operators/b1;Ljava/util/concurrent/atomic/AtomicReference;Landroid/support/v4/ax1;Landroid/support/v4/y22;)V

    .line 6
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1, v4}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 9
    iget-object p1, p0, Lrx/internal/operators/b1;->do:Lrx/Observable;

    invoke-virtual {p1, v3}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v4
.end method
