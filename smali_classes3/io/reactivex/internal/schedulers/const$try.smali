.class final Lio/reactivex/internal/schedulers/const$try;
.super Lio/reactivex/try$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final for:Lio/reactivex/try$for;

.field private final if:Lio/reactivex/processors/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/for<",
            "Lio/reactivex/internal/schedulers/const$case;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/processors/for;Lio/reactivex/try$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/for<",
            "Lio/reactivex/internal/schedulers/const$case;",
            ">;",
            "Lio/reactivex/try$for;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/try$for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/const$try;->if:Lio/reactivex/processors/for;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/schedulers/const$try;->for:Lio/reactivex/try$for;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/const$try;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const$try;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const$try;->if:Lio/reactivex/processors/for;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const$try;->for:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/const$if;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/schedulers/const$if;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/schedulers/const$try;->if:Lio/reactivex/processors/for;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/const$for;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/const$for;-><init>(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/schedulers/const$try;->if:Lio/reactivex/processors/for;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const$try;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
