.class final Lio/reactivex/internal/schedulers/else$if;
.super Lio/reactivex/try$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/cq;

.field private final for:Lio/reactivex/internal/schedulers/else$for;

.field private final if:Lio/reactivex/internal/schedulers/else$do;

.field public final new:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/else$do;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/try$for;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/schedulers/else$if;->if:Lio/reactivex/internal/schedulers/else$do;

    .line 4
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->do:Landroid/support/v4/cq;

    .line 5
    invoke-virtual {p1}, Lio/reactivex/internal/schedulers/else$do;->if()Lio/reactivex/internal/schedulers/else$for;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/else$if;->for:Lio/reactivex/internal/schedulers/else$for;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->if:Lio/reactivex/internal/schedulers/else$do;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/else$if;->for:Lio/reactivex/internal/schedulers/else$for;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/else$do;->new(Lio/reactivex/internal/schedulers/else$for;)V

    :cond_0
    return-void
.end method

.method public for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 6
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
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->for:Lio/reactivex/internal/schedulers/else$for;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/else$if;->do:Landroid/support/v4/cq;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/goto;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Landroid/support/v4/bs1;

    move-result-object p1

    return-object p1
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else$if;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
