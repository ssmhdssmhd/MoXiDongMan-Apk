.class Lrx/observables/if$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/if;->case(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic for:Lrx/functions/Action1;

.field public final synthetic if:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic new:Lrx/observables/if;


# direct methods
.method public constructor <init>(Lrx/observables/if;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/if$do;->new:Lrx/observables/if;

    iput-object p2, p0, Lrx/observables/if$do;->do:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/observables/if$do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/observables/if$do;->for:Lrx/functions/Action1;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/if$do;->do:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/if$do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lrx/observables/if$do;->do:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/if$do;->for:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
