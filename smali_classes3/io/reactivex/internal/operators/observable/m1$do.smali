.class final Lio/reactivex/internal/operators/observable/m1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/m3;

.field public final for:Landroid/support/v4/zw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/zw1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/internal/operators/observable/m1$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/m1$if<",
            "TT;>;"
        }
    .end annotation
.end field

.field public new:Lio/reactivex/disposables/Disposable;

.field public final synthetic try:Lio/reactivex/internal/operators/observable/m1;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/m1;Landroid/support/v4/m3;Lio/reactivex/internal/operators/observable/m1$if;Landroid/support/v4/zw1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/m3;",
            "Lio/reactivex/internal/operators/observable/m1$if<",
            "TT;>;",
            "Landroid/support/v4/zw1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$do;->try:Lio/reactivex/internal/operators/observable/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m1$do;->do:Landroid/support/v4/m3;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/m1$do;->if:Lio/reactivex/internal/operators/observable/m1$if;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/m1$do;->for:Landroid/support/v4/zw1;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$do;->if:Lio/reactivex/internal/operators/observable/m1$if;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/m1$if;->new:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$do;->do:Landroid/support/v4/m3;

    invoke-virtual {v0}, Landroid/support/v4/m3;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$do;->for:Landroid/support/v4/zw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/zw1;->onError(Ljava/lang/Throwable;)V

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
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/m1$do;->new:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/m1$do;->if:Lio/reactivex/internal/operators/observable/m1$if;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/m1$if;->new:Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$do;->new:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/do;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$do;->new:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$do;->do:Landroid/support/v4/m3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/m3;->setResource(ILio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
