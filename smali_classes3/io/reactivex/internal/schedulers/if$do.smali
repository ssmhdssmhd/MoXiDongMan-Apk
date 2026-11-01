.class final Lio/reactivex/internal/schedulers/if$do;
.super Lio/reactivex/try$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/it0;

.field private final for:Landroid/support/v4/it0;

.field private final if:Landroid/support/v4/cq;

.field private final new:Lio/reactivex/internal/schedulers/if$for;

.field public volatile try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/if$for;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/reactivex/try$for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/if$do;->new:Lio/reactivex/internal/schedulers/if$for;

    .line 3
    new-instance p1, Landroid/support/v4/it0;

    invoke-direct {p1}, Landroid/support/v4/it0;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/if$do;->do:Landroid/support/v4/it0;

    .line 4
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/if$do;->if:Landroid/support/v4/cq;

    .line 5
    new-instance v1, Landroid/support/v4/it0;

    invoke-direct {v1}, Landroid/support/v4/it0;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/schedulers/if$do;->for:Landroid/support/v4/it0;

    .line 6
    invoke-virtual {v1, p1}, Landroid/support/v4/it0;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 7
    invoke-virtual {v1, v0}, Landroid/support/v4/it0;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/if$do;->try:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/if$do;->try:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if$do;->for:Landroid/support/v4/it0;

    invoke-virtual {v0}, Landroid/support/v4/it0;->dispose()V

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
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/if$do;->try:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if$do;->new:Lio/reactivex/internal/schedulers/if$for;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/if$do;->if:Landroid/support/v4/cq;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/goto;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Landroid/support/v4/bs1;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/if$do;->try:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if$do;->new:Lio/reactivex/internal/schedulers/if$for;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/if$do;->do:Landroid/support/v4/it0;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/goto;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Landroid/support/v4/bs1;

    move-result-object p1

    return-object p1
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/if$do;->try:Z

    return v0
.end method
