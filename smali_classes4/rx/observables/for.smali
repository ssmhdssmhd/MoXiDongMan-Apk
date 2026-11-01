.class public abstract Lrx/observables/for;
.super Lrx/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-void
.end method


# virtual methods
.method public e6()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lrx/observables/for;->f6(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public f6(I)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lrx/observables/for;->g6(ILrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public g6(ILrx/functions/Action1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lrx/observables/for;->i6(Lrx/functions/Action1;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/b71;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/b71;-><init>(Lrx/observables/for;ILrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final h6()Lrx/Subscription;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lrx/Subscription;

    .line 1
    new-instance v1, Lrx/observables/for$do;

    invoke-direct {v1, p0, v0}, Lrx/observables/for$do;-><init>(Lrx/observables/for;[Lrx/Subscription;)V

    invoke-virtual {p0, v1}, Lrx/observables/for;->i6(Lrx/functions/Action1;)V

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract i6(Lrx/functions/Action1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation
.end method

.method public j6()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/j;

    invoke-direct {v0, p0}, Lrx/internal/operators/j;-><init>(Lrx/observables/for;)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
