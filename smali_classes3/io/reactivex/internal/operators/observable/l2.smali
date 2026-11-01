.class public final Lio/reactivex/internal/operators/observable/l2;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/l2$if;,
        Lio/reactivex/internal/operators/observable/l2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TU;>;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/l2;->if:Lio/reactivex/functions/BiFunction;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/l2;->for:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/zw1;

    invoke-direct {v0, p1}, Landroid/support/v4/zw1;-><init>(Lio/reactivex/Observer;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/observable/l2$do;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/l2;->if:Lio/reactivex/functions/BiFunction;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/observable/l2$do;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/zw1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l2;->for:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/l2$if;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/l2$if;-><init>(Lio/reactivex/internal/operators/observable/l2;Lio/reactivex/internal/operators/observable/l2$do;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
