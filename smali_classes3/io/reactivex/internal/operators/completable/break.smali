.class public final Lio/reactivex/internal/operators/completable/break;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/break$do;
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/CompletableSource;

.field public final if:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/break;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/break;->if:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/break;->do:Lio/reactivex/CompletableSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/break$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/break;->if:Lio/reactivex/try;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/break$do;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/try;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
