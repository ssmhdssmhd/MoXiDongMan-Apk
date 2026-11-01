.class public Lrx/subjects/new;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/u22<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final for:Landroid/support/v4/u22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/u22<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final if:Lrx/observers/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/for<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/u22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/u22<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/new$do;

    invoke-direct {v0, p1}, Lrx/subjects/new$do;-><init>(Landroid/support/v4/u22;)V

    invoke-direct {p0, v0}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/subjects/new;->for:Landroid/support/v4/u22;

    .line 3
    new-instance v0, Lrx/observers/for;

    invoke-direct {v0, p1}, Lrx/observers/for;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/subjects/new;->if:Lrx/observers/for;

    return-void
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/new;->for:Landroid/support/v4/u22;

    invoke-virtual {v0}, Landroid/support/v4/u22;->e6()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/new;->if:Lrx/observers/for;

    invoke-virtual {v0}, Lrx/observers/for;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/new;->if:Lrx/observers/for;

    invoke-virtual {v0, p1}, Lrx/observers/for;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lrx/subjects/new;->if:Lrx/observers/for;

    invoke-virtual {v0, p1}, Lrx/observers/for;->onNext(Ljava/lang/Object;)V

    return-void
.end method
