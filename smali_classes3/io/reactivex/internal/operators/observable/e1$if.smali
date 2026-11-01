.class final Lio/reactivex/internal/operators/observable/e1$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/internal/operators/observable/e1$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/e1$do<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:Landroid/support/v4/e12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e12<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile new:Z

.field public try:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/e1$do;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/e1$do<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e1$if;->do:Lio/reactivex/internal/operators/observable/e1$do;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/e1$if;->for:I

    .line 4
    new-instance p1, Landroid/support/v4/e12;

    invoke-direct {p1, p3}, Landroid/support/v4/e12;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e1$if;->if:Landroid/support/v4/e12;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/e1$if;->new:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e1$if;->do:Lio/reactivex/internal/operators/observable/e1$do;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/e1$do;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e1$if;->try:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/e1$if;->new:Z

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e1$if;->do:Lio/reactivex/internal/operators/observable/e1$do;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/e1$do;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e1$if;->if:Landroid/support/v4/e12;

    invoke-virtual {v0, p1}, Landroid/support/v4/e12;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e1$if;->do:Lio/reactivex/internal/operators/observable/e1$do;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/e1$do;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e1$if;->do:Lio/reactivex/internal/operators/observable/e1$do;

    iget v1, p0, Lio/reactivex/internal/operators/observable/e1$if;->for:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/observable/e1$do;->setDisposable(Lio/reactivex/disposables/Disposable;I)Z

    return-void
.end method
