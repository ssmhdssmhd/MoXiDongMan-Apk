.class public final Lio/reactivex/internal/operators/completable/switch;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/switch$do;
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/CompletableSource;

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
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableSource;",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/switch;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/switch;->if:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/switch;->do:Lio/reactivex/CompletableSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/switch$do;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/switch$do;-><init>(Lio/reactivex/internal/operators/completable/switch;Lio/reactivex/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
