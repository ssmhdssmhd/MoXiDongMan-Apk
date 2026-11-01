.class final Lrx/internal/operators/a1$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/a1;
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
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final for:Lrx/if$do;

.field public final if:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Landroid/support/v4/ww1;

.field public final try:Lrx/internal/producers/do;


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;Lrx/functions/Func2;Lrx/if$do;Landroid/support/v4/ww1;Lrx/internal/producers/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/if$do;",
            "Landroid/support/v4/ww1;",
            "Lrx/internal/producers/do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/a1$do;->case:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p1, p0, Lrx/internal/operators/a1$do;->do:Landroid/support/v4/y22;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/a1$do;->if:Lrx/functions/Func2;

    .line 5
    iput-object p3, p0, Lrx/internal/operators/a1$do;->for:Lrx/if$do;

    .line 6
    iput-object p4, p0, Lrx/internal/operators/a1$do;->new:Landroid/support/v4/ww1;

    .line 7
    iput-object p5, p0, Lrx/internal/operators/a1$do;->try:Lrx/internal/producers/do;

    return-void
.end method


# virtual methods
.method public do(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/a1$do;->for:Lrx/if$do;

    new-instance v1, Lrx/internal/operators/a1$do$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/a1$do$do;-><init>(Lrx/internal/operators/a1$do;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/a1$do;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/a1$do;->do(Lrx/Observable;)V

    return-void
.end method
