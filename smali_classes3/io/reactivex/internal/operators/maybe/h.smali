.class public final Lio/reactivex/internal/operators/maybe/h;
.super Lio/reactivex/internal/operators/maybe/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/h$do;,
        Lio/reactivex/internal/operators/maybe/h$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final if:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/do;-><init>(Lio/reactivex/MaybeSource;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/h;->if:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public w0(Lio/reactivex/MaybeObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/h$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/h$do;-><init>(Lio/reactivex/MaybeObserver;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, v0, Lio/reactivex/internal/operators/maybe/h$do;->task:Landroid/support/v4/tw1;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/h;->if:Lio/reactivex/try;

    new-instance v2, Lio/reactivex/internal/operators/maybe/h$if;

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/do;->do:Lio/reactivex/MaybeSource;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/maybe/h$if;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/MaybeSource;)V

    invoke-virtual {v1, v2}, Lio/reactivex/try;->new(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
