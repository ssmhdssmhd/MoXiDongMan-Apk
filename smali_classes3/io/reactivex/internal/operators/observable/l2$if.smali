.class final Lio/reactivex/internal/operators/observable/l2$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final do:Lio/reactivex/internal/operators/observable/l2$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/l2$do<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic if:Lio/reactivex/internal/operators/observable/l2;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/l2;Lio/reactivex/internal/operators/observable/l2$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/l2$do<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/l2$if;->if:Lio/reactivex/internal/operators/observable/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/l2$if;->do:Lio/reactivex/internal/operators/observable/l2$do;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l2$if;->do:Lio/reactivex/internal/operators/observable/l2$do;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/l2$do;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l2$if;->do:Lio/reactivex/internal/operators/observable/l2$do;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l2$if;->do:Lio/reactivex/internal/operators/observable/l2$do;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/l2$do;->setOther(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
