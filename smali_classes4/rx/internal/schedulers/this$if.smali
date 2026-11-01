.class Lrx/internal/schedulers/this$if;
.super Lrx/if$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/this;->do()Lrx/if$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic for:Lrx/Observer;

.field public final synthetic if:Lrx/if$do;

.field public final synthetic new:Lrx/internal/schedulers/this;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/this;Lrx/if$do;Lrx/Observer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/this$if;->new:Lrx/internal/schedulers/this;

    iput-object p2, p0, Lrx/internal/schedulers/this$if;->if:Lrx/if$do;

    iput-object p3, p0, Lrx/internal/schedulers/this$if;->for:Lrx/Observer;

    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/this$if;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/this$new;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/schedulers/this$new;-><init>(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    iget-object p1, p0, Lrx/internal/schedulers/this$if;->for:Lrx/Observer;

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/this$try;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/this$try;-><init>(Lrx/functions/Action0;)V

    .line 2
    iget-object p1, p0, Lrx/internal/schedulers/this$if;->for:Lrx/Observer;

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/this$if;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/this$if;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/this$if;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 3
    iget-object v0, p0, Lrx/internal/schedulers/this$if;->for:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    :cond_0
    return-void
.end method
