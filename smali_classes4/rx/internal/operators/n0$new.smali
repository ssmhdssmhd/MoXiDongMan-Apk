.class final Lrx/internal/operators/n0$new;
.super Lrx/observables/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/new<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public final for:Lrx/internal/operators/n0$try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/n0$try<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/internal/operators/n0$try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/n0$try<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lrx/observables/new;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/n0$new;->for:Lrx/internal/operators/n0$try;

    return-void
.end method

.method public static h6(Ljava/lang/Object;ILrx/internal/operators/n0$for;Z)Lrx/internal/operators/n0$new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lrx/internal/operators/n0$for<",
            "*TK;TT;>;Z)",
            "Lrx/internal/operators/n0$new<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/n0$try;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/n0$try;-><init>(ILrx/internal/operators/n0$for;Ljava/lang/Object;Z)V

    .line 2
    new-instance p1, Lrx/internal/operators/n0$new;

    invoke-direct {p1, p0, v0}, Lrx/internal/operators/n0$new;-><init>(Ljava/lang/Object;Lrx/internal/operators/n0$try;)V

    return-object p1
.end method


# virtual methods
.method public i6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$new;->for:Lrx/internal/operators/n0$try;

    invoke-virtual {v0}, Lrx/internal/operators/n0$try;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/n0$new;->for:Lrx/internal/operators/n0$try;

    invoke-virtual {v0, p1}, Lrx/internal/operators/n0$try;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lrx/internal/operators/n0$new;->for:Lrx/internal/operators/n0$try;

    invoke-virtual {v0, p1}, Lrx/internal/operators/n0$try;->onNext(Ljava/lang/Object;)V

    return-void
.end method
