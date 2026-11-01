.class final Lio/reactivex/schedulers/if$do;
.super Lio/reactivex/try$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/if$do$do;
    }
.end annotation


# instance fields
.field public volatile do:Z

.field public final synthetic if:Lio/reactivex/schedulers/if;


# direct methods
.method public constructor <init>(Lio/reactivex/schedulers/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    invoke-direct {p0}, Lio/reactivex/try$for;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/schedulers/if$do;->do:Z

    return-void
.end method

.method public do(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    invoke-virtual {v0, p1}, Lio/reactivex/schedulers/if;->for(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 8
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
    iget-boolean v0, p0, Lio/reactivex/schedulers/if$do;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 3
    :cond_0
    new-instance v7, Lio/reactivex/schedulers/if$if;

    iget-object v0, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    iget-wide v0, v0, Lio/reactivex/schedulers/if;->new:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    add-long v2, v0, p2

    iget-object p2, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    iget-wide v5, p2, Lio/reactivex/schedulers/if;->for:J

    const-wide/16 p3, 0x1

    add-long/2addr p3, v5

    iput-wide p3, p2, Lio/reactivex/schedulers/if;->for:J

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/schedulers/if$if;-><init>(Lio/reactivex/schedulers/if$do;JLjava/lang/Runnable;J)V

    .line 4
    iget-object p1, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    iget-object p1, p1, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lio/reactivex/schedulers/if$do$do;

    invoke-direct {p1, p0, v7}, Lio/reactivex/schedulers/if$do$do;-><init>(Lio/reactivex/schedulers/if$do;Lio/reactivex/schedulers/if$if;)V

    invoke-static {p1}, Lio/reactivex/disposables/if;->case(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 10
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/schedulers/if$do;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 3
    :cond_0
    new-instance v7, Lio/reactivex/schedulers/if$if;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    iget-wide v5, v0, Lio/reactivex/schedulers/if;->for:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v5

    iput-wide v8, v0, Lio/reactivex/schedulers/if;->for:J

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/schedulers/if$if;-><init>(Lio/reactivex/schedulers/if$do;JLjava/lang/Runnable;J)V

    .line 4
    iget-object p1, p0, Lio/reactivex/schedulers/if$do;->if:Lio/reactivex/schedulers/if;

    iget-object p1, p1, Lio/reactivex/schedulers/if;->if:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lio/reactivex/schedulers/if$do$do;

    invoke-direct {p1, p0, v7}, Lio/reactivex/schedulers/if$do$do;-><init>(Lio/reactivex/schedulers/if$do;Lio/reactivex/schedulers/if$if;)V

    invoke-static {p1}, Lio/reactivex/disposables/if;->case(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/schedulers/if$do;->do:Z

    return v0
.end method
