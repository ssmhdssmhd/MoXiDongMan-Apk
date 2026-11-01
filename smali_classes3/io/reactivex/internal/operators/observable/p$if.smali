.class final Lio/reactivex/internal/operators/observable/p$if;
.super Landroid/support/v4/gi0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/gi0<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public final if:Lio/reactivex/internal/operators/observable/p$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/p$for<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/p$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/observable/p$for<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/gi0;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/p$if;->if:Lio/reactivex/internal/operators/observable/p$for;

    return-void
.end method

.method public static if(Ljava/lang/Object;ILio/reactivex/internal/operators/observable/p$do;Z)Lio/reactivex/internal/operators/observable/p$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/observable/p$do<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/observable/p$if<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/p$for;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/observable/p$for;-><init>(ILio/reactivex/internal/operators/observable/p$do;Ljava/lang/Object;Z)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/observable/p$if;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/observable/p$if;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/p$for;)V

    return-object p1
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/p$if;->if:Lio/reactivex/internal/operators/observable/p$for;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/p$for;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/p$if;->if:Lio/reactivex/internal/operators/observable/p$for;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/p$for;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/p$if;->if:Lio/reactivex/internal/operators/observable/p$for;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/p$for;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/p$if;->if:Lio/reactivex/internal/operators/observable/p$for;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/p$for;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
