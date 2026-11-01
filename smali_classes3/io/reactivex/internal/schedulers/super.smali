.class public final Lio/reactivex/internal/schedulers/super;
.super Lio/reactivex/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/super$do;,
        Lio/reactivex/internal/schedulers/super$if;,
        Lio/reactivex/internal/schedulers/super$for;
    }
.end annotation


# static fields
.field private static final if:Lio/reactivex/internal/schedulers/super;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/super;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/super;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/super;->if:Lio/reactivex/internal/schedulers/super;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    return-void
.end method

.method public static break()Lio/reactivex/internal/schedulers/super;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/super;->if:Lio/reactivex/internal/schedulers/super;

    return-object v0
.end method


# virtual methods
.method public if()Lio/reactivex/try$for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/super$for;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/super$for;-><init>()V

    return-object v0
.end method

.method public new(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/jp1;->o(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1
.end method

.method public try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->o(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 4
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1
.end method
