.class public final Lio/reactivex/internal/operators/observable/a1;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/a1$do;,
        Lio/reactivex/internal/operators/observable/a1$if;,
        Lio/reactivex/internal/operators/observable/a1$new;,
        Lio/reactivex/internal/operators/observable/a1$for;
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
.field public final for:Z

.field public final if:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/ObservableSource<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/a1;->if:Lio/reactivex/ObservableSource;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/a1;->for:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
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
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/a1;->for:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/a1$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/a1;->if:Lio/reactivex/ObservableSource;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/a1$do;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/a1$if;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/a1;->if:Lio/reactivex/ObservableSource;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/a1$if;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
