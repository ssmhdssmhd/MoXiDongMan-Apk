.class Lrx/observables/if$case;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/if;->return(Landroid/support/v4/y22;)V
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
.field public final synthetic do:Ljava/util/concurrent/BlockingQueue;

.field public final synthetic for:Lrx/observables/if;

.field public final synthetic if:[Lrx/Producer;


# direct methods
.method public constructor <init>(Lrx/observables/if;Ljava/util/concurrent/BlockingQueue;[Lrx/Producer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/if$case;->for:Lrx/observables/if;

    iput-object p2, p0, Lrx/observables/if$case;->do:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrx/observables/if$case;->if:[Lrx/Producer;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/observables/if$case;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/observables/if$case;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lrx/observables/if$case;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/observables/if$case;->do:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/if;->if:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/observables/if$case;->if:[Lrx/Producer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    iget-object p1, p0, Lrx/observables/if$case;->do:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Lrx/observables/if;->for:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
