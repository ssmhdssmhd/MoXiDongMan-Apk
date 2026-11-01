.class public final Lio/reactivex/internal/operators/observable/m1;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/m1$do;,
        Lio/reactivex/internal/operators/observable/m1$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final if:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/ObservableSource<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m1;->if:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/zw1;

    invoke-direct {v0, p1}, Landroid/support/v4/zw1;-><init>(Lio/reactivex/Observer;)V

    .line 2
    new-instance p1, Landroid/support/v4/m3;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Landroid/support/v4/m3;-><init>(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/zw1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 4
    new-instance v1, Lio/reactivex/internal/operators/observable/m1$if;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/observable/m1$if;-><init>(Lio/reactivex/Observer;Landroid/support/v4/m3;)V

    .line 5
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/m1;->if:Lio/reactivex/ObservableSource;

    new-instance v3, Lio/reactivex/internal/operators/observable/m1$do;

    invoke-direct {v3, p0, p1, v1, v0}, Lio/reactivex/internal/operators/observable/m1$do;-><init>(Lio/reactivex/internal/operators/observable/m1;Landroid/support/v4/m3;Lio/reactivex/internal/operators/observable/m1$if;Landroid/support/v4/zw1;)V

    invoke-interface {v2, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
