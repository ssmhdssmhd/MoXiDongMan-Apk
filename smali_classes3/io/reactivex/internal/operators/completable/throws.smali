.class public final Lio/reactivex/internal/operators/completable/throws;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/throws$do;
    }
.end annotation


# instance fields
.field public final case:Lio/reactivex/functions/Action;

.field public final do:Lio/reactivex/CompletableSource;

.field public final else:Lio/reactivex/functions/Action;

.field public final for:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Lio/reactivex/functions/Action;

.field public final try:Lio/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableSource;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/throws;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/throws;->if:Lio/reactivex/functions/Consumer;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/throws;->for:Lio/reactivex/functions/Consumer;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/throws;->new:Lio/reactivex/functions/Action;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/throws;->try:Lio/reactivex/functions/Action;

    .line 7
    iput-object p6, p0, Lio/reactivex/internal/operators/completable/throws;->case:Lio/reactivex/functions/Action;

    .line 8
    iput-object p7, p0, Lio/reactivex/internal/operators/completable/throws;->else:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/throws;->do:Lio/reactivex/CompletableSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/throws$do;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/throws$do;-><init>(Lio/reactivex/internal/operators/completable/throws;Lio/reactivex/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
