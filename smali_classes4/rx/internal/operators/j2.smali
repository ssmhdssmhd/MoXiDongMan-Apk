.class public final Lrx/internal/operators/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/j2$if;,
        Lrx/internal/operators/j2$do;
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final if:[Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation
.end field

.field public final new:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;[Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;[",
            "Lrx/Observable<",
            "*>;",
            "Ljava/lang/Iterable<",
            "Lrx/Observable<",
            "*>;>;",
            "Lrx/functions/FuncN<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/j2;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/j2;->if:[Lrx/Observable;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/j2;->for:Ljava/lang/Iterable;

    .line 5
    iput-object p4, p0, Lrx/internal/operators/j2;->new:Lrx/functions/FuncN;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/j2;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ax1;

    invoke-direct {v0, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 2
    iget-object v1, p0, Lrx/internal/operators/j2;->if:[Lrx/Observable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    array-length v3, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [Lrx/Observable;

    .line 4
    iget-object v3, p0, Lrx/internal/operators/j2;->for:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observable;

    .line 5
    array-length v6, v1

    if-ne v4, v6, :cond_1

    shr-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v4

    .line 6
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/Observable;

    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 7
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_0

    :cond_2
    move v3, v4

    .line 8
    :goto_1
    new-instance v4, Lrx/internal/operators/j2$do;

    iget-object v5, p0, Lrx/internal/operators/j2;->new:Lrx/functions/FuncN;

    invoke-direct {v4, p1, v5, v3}, Lrx/internal/operators/j2$do;-><init>(Landroid/support/v4/y22;Lrx/functions/FuncN;I)V

    .line 9
    invoke-virtual {v0, v4}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    :goto_2
    if-ge v2, v3, :cond_4

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 11
    :cond_3
    new-instance p1, Lrx/internal/operators/j2$if;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {p1, v4, v5}, Lrx/internal/operators/j2$if;-><init>(Lrx/internal/operators/j2$do;I)V

    .line 12
    invoke-virtual {v4, p1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 13
    aget-object v2, v1, v2

    .line 14
    invoke-virtual {v2, p1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    move v2, v5

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Lrx/internal/operators/j2;->do:Lrx/Observable;

    invoke-virtual {p1, v4}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
