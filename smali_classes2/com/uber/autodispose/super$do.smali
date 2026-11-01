.class Lcom/uber/autodispose/super$do;
.super Landroid/support/v4/k10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/super;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic if:Lcom/uber/autodispose/super;


# direct methods
.method public constructor <init>(Lcom/uber/autodispose/super;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/super$do;->if:Lcom/uber/autodispose/super;

    invoke-direct {p0}, Landroid/support/v4/k10;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/super$do;->if:Lcom/uber/autodispose/super;

    iget-object v0, v0, Lcom/uber/autodispose/super;->if:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/uber/autodispose/if;->DISPOSED:Lcom/uber/autodispose/if;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/uber/autodispose/super$do;->if:Lcom/uber/autodispose/super;

    iget-object v0, v0, Lcom/uber/autodispose/super;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lcom/uber/autodispose/if;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/super$do;->if:Lcom/uber/autodispose/super;

    iget-object v0, v0, Lcom/uber/autodispose/super;->if:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/uber/autodispose/if;->DISPOSED:Lcom/uber/autodispose/if;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/uber/autodispose/super$do;->if:Lcom/uber/autodispose/super;

    invoke-virtual {v0, p1}, Lcom/uber/autodispose/super;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
