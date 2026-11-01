.class public final Lrx/internal/operators/throws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/throws$do;,
        Lrx/internal/operators/throws$if;
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
.field public final do:[Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final if:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final new:I

.field public final try:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/functions/FuncN;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    sget v4, Lrx/internal/util/try;->new:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/throws;-><init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V

    return-void
.end method

.method public constructor <init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/Observable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Observable<",
            "+TT;>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lrx/internal/operators/throws;->do:[Lrx/Observable;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/throws;->if:Ljava/lang/Iterable;

    .line 5
    iput-object p3, p0, Lrx/internal/operators/throws;->for:Lrx/functions/FuncN;

    .line 6
    iput p4, p0, Lrx/internal/operators/throws;->new:I

    .line 7
    iput-boolean p5, p0, Lrx/internal/operators/throws;->try:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/throws;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/throws;->do:[Lrx/Observable;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lrx/internal/operators/throws;->if:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/Observable;

    .line 5
    array-length v1, v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [Lrx/Observable;

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Observable;

    .line 7
    array-length v5, v1

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 8
    new-array v5, v5, [Lrx/Observable;

    .line 9
    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 10
    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v4, v3

    goto :goto_2

    .line 11
    :cond_3
    array-length v1, v0

    :goto_1
    move v4, v1

    :goto_2
    if-nez v4, :cond_4

    .line 12
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    return-void

    .line 13
    :cond_4
    new-instance v7, Lrx/internal/operators/throws$if;

    iget-object v3, p0, Lrx/internal/operators/throws;->for:Lrx/functions/FuncN;

    iget v5, p0, Lrx/internal/operators/throws;->new:I

    iget-boolean v6, p0, Lrx/internal/operators/throws;->try:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/throws$if;-><init>(Landroid/support/v4/y22;Lrx/functions/FuncN;IIZ)V

    .line 14
    invoke-virtual {v7, v0}, Lrx/internal/operators/throws$if;->subscribe([Lrx/Observable;)V

    return-void
.end method
