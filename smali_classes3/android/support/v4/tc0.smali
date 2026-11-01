.class public final Landroid/support/v4/tc0;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final for:I

.field public final if:Landroid/support/v4/oq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/oq<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final new:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/oq;ILio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/oq<",
            "+TT;>;I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/tc0;->if:Landroid/support/v4/oq;

    .line 3
    iput p2, p0, Landroid/support/v4/tc0;->for:I

    .line 4
    iput-object p3, p0, Landroid/support/v4/tc0;->new:Lio/reactivex/functions/Consumer;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroid/support/v4/tc0;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/tc0;->if:Landroid/support/v4/oq;

    invoke-virtual {v0, p1}, Lio/reactivex/for;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/tc0;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Landroid/support/v4/tc0;->for:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v4/tc0;->if:Landroid/support/v4/oq;

    iget-object v0, p0, Landroid/support/v4/tc0;->new:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Landroid/support/v4/oq;->P7(Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method
