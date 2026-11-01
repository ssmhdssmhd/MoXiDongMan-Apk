.class public final Landroid/support/v4/b71;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final connection:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public final numberOfSubscribers:I

.field public final source:Lrx/observables/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/for<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/observables/for;ILrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/for<",
            "+TT;>;I",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    if-lez p2, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/b71;->source:Lrx/observables/for;

    .line 3
    iput p2, p0, Landroid/support/v4/b71;->numberOfSubscribers:I

    .line 4
    iput-object p3, p0, Landroid/support/v4/b71;->connection:Lrx/functions/Action1;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "numberOfSubscribers > 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public call(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/support/v4/b71;->source:Lrx/observables/for;

    invoke-static {p1}, Lrx/observers/new;->case(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Landroid/support/v4/b71;->numberOfSubscribers:I

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Landroid/support/v4/b71;->source:Lrx/observables/for;

    iget-object v0, p0, Landroid/support/v4/b71;->connection:Lrx/functions/Action1;

    invoke-virtual {p1, v0}, Lrx/observables/for;->i6(Lrx/functions/Action1;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Landroid/support/v4/b71;->call(Landroid/support/v4/y22;)V

    return-void
.end method
