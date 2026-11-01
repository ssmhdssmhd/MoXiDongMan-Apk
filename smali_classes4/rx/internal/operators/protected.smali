.class public final Lrx/internal/operators/protected;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/protected$for;,
        Lrx/internal/operators/protected$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/protected;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/protected;->if:Lrx/functions/Func1;

    .line 4
    iput p3, p0, Lrx/internal/operators/protected;->for:I

    return-void
.end method

.method public static if(Lrx/Observable;Lrx/functions/Func1;I)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lrx/internal/util/else;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lrx/internal/util/else;

    invoke-virtual {p0}, Lrx/internal/util/else;->g6()Ljava/lang/Object;

    move-result-object p0

    .line 3
    new-instance p2, Lrx/internal/operators/protected$for;

    invoke-direct {p2, p0, p1}, Lrx/internal/operators/protected$for;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {p2}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lrx/internal/operators/protected;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/protected;-><init>(Lrx/Observable;Lrx/functions/Func1;I)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/protected;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/protected$if;

    iget-object v1, p0, Lrx/internal/operators/protected;->if:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/protected;->for:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/protected$if;-><init>(Landroid/support/v4/y22;Lrx/functions/Func1;I)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v1, Lrx/internal/operators/protected$do;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/protected$do;-><init>(Lrx/internal/operators/protected;Lrx/internal/operators/protected$if;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 4
    iget-object p1, p0, Lrx/internal/operators/protected;->do:Lrx/Observable;

    invoke-virtual {p1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
