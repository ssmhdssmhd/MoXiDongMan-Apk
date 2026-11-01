.class public final Landroid/support/v4/x51;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/new<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/pq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/pq<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final if:I

.field public final new:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/pq;ILio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/pq<",
            "+TT;>;I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/x51;->do:Landroid/support/v4/pq;

    .line 3
    iput p2, p0, Landroid/support/v4/x51;->if:I

    .line 4
    iput-object p3, p0, Landroid/support/v4/x51;->for:Lio/reactivex/functions/Consumer;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroid/support/v4/x51;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/x51;->do:Landroid/support/v4/pq;

    invoke-virtual {v0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/x51;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Landroid/support/v4/x51;->if:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v4/x51;->do:Landroid/support/v4/pq;

    iget-object v0, p0, Landroid/support/v4/x51;->for:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Landroid/support/v4/pq;->try(Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method
