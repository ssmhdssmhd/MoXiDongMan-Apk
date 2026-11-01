.class public final Lio/reactivex/internal/operators/observable/a2;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/a2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;",
        "Landroid/support/v4/e72<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/a2;->if:Lio/reactivex/try;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/a2;->for:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Landroid/support/v4/e72<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/a2$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/a2;->for:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a2;->if:Lio/reactivex/try;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/a2$do;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
