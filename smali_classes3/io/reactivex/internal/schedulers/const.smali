.class public Lio/reactivex/internal/schedulers/const;
.super Lio/reactivex/try;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/const$else;,
        Lio/reactivex/internal/schedulers/const$try;,
        Lio/reactivex/internal/schedulers/const$do;,
        Lio/reactivex/internal/schedulers/const$new;,
        Lio/reactivex/internal/schedulers/const$if;,
        Lio/reactivex/internal/schedulers/const$for;,
        Lio/reactivex/internal/schedulers/const$case;
    }
.end annotation


# static fields
.field public static final case:Lio/reactivex/disposables/Disposable;

.field public static final try:Lio/reactivex/disposables/Disposable;


# instance fields
.field private final for:Lio/reactivex/processors/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/for<",
            "Lio/reactivex/for<",
            "Landroid/support/v4/np;",
            ">;>;"
        }
    .end annotation
.end field

.field private final if:Lio/reactivex/try;

.field private new:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/const$else;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/const$else;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/const;->try:Lio/reactivex/disposables/Disposable;

    .line 2
    invoke-static {}, Lio/reactivex/disposables/if;->do()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/const;->case:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/functions/Function;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/for<",
            "Lio/reactivex/for<",
            "Landroid/support/v4/np;",
            ">;>;",
            "Landroid/support/v4/np;",
            ">;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/const;->if:Lio/reactivex/try;

    .line 3
    invoke-static {}, Lio/reactivex/processors/else;->R7()Lio/reactivex/processors/else;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/processors/for;->P7()Lio/reactivex/processors/for;

    move-result-object p2

    iput-object p2, p0, Lio/reactivex/internal/schedulers/const;->for:Lio/reactivex/processors/for;

    .line 4
    :try_start_0
    invoke-interface {p1, p2}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/np;

    invoke-virtual {p1}, Landroid/support/v4/np;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/const;->new:Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/util/case;->case(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const;->new:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public if()Lio/reactivex/try$for;
    .locals 4
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const;->if:Lio/reactivex/try;

    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/processors/else;->R7()Lio/reactivex/processors/else;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/processors/for;->P7()Lio/reactivex/processors/for;

    move-result-object v1

    .line 3
    new-instance v2, Lio/reactivex/internal/schedulers/const$do;

    invoke-direct {v2, v0}, Lio/reactivex/internal/schedulers/const$do;-><init>(Lio/reactivex/try$for;)V

    invoke-virtual {v1, v2}, Lio/reactivex/for;->S2(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object v2

    .line 4
    new-instance v3, Lio/reactivex/internal/schedulers/const$try;

    invoke-direct {v3, v1, v0}, Lio/reactivex/internal/schedulers/const$try;-><init>(Lio/reactivex/processors/for;Lio/reactivex/try$for;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const;->for:Lio/reactivex/processors/for;

    invoke-interface {v0, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/const;->new:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method
