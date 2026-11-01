.class public final Lio/reactivex/internal/operators/observable/x0;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final for:J

.field public final if:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/new;JLio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;J",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/x0;->if:Lio/reactivex/functions/Predicate;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/x0;->for:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Landroid/support/v4/tw1;

    invoke-direct {v5}, Landroid/support/v4/tw1;-><init>()V

    .line 2
    invoke-interface {p1, v5}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    new-instance v7, Lio/reactivex/internal/operators/observable/x0$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/x0;->for:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/x0;->if:Lio/reactivex/functions/Predicate;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/x0$do;-><init>(Lio/reactivex/Observer;JLio/reactivex/functions/Predicate;Landroid/support/v4/tw1;Lio/reactivex/ObservableSource;)V

    .line 4
    invoke-virtual {v7}, Lio/reactivex/internal/operators/observable/x0$do;->subscribeNext()V

    return-void
.end method
