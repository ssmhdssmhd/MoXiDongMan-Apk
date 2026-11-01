.class final Lio/reactivex/internal/operators/observable/m2$for;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d3210de62c61a18L


# instance fields
.field public hasValue:Z

.field public final index:I

.field public final parent:Lio/reactivex/internal/operators/observable/m2$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/m2$if<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/m2$if;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/m2$if<",
            "**>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m2$for;->parent:Lio/reactivex/internal/operators/observable/m2$if;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/m2$for;->index:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m2$for;->parent:Lio/reactivex/internal/operators/observable/m2$if;

    iget v1, p0, Lio/reactivex/internal/operators/observable/m2$for;->index:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/m2$for;->hasValue:Z

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/m2$if;->innerComplete(IZ)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m2$for;->parent:Lio/reactivex/internal/operators/observable/m2$if;

    iget v1, p0, Lio/reactivex/internal/operators/observable/m2$for;->index:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/observable/m2$if;->innerError(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/m2$for;->hasValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/m2$for;->hasValue:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m2$for;->parent:Lio/reactivex/internal/operators/observable/m2$if;

    iget v1, p0, Lio/reactivex/internal/operators/observable/m2$for;->index:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/observable/m2$if;->innerNext(ILjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/do;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
