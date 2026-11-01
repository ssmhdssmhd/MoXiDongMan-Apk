.class public final Landroid/support/v4/tb1;
.super Landroid/support/v4/ub1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/ub1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/ub1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Z

.field public final if:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final new:I

.field public final try:I


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ub1;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/tb1;->do:Landroid/support/v4/ub1;

    .line 3
    iput-object p2, p0, Landroid/support/v4/tb1;->if:Lio/reactivex/functions/Function;

    .line 4
    iput-boolean p3, p0, Landroid/support/v4/tb1;->for:Z

    .line 5
    iput p4, p0, Landroid/support/v4/tb1;->new:I

    .line 6
    iput p5, p0, Landroid/support/v4/tb1;->try:I

    return-void
.end method


# virtual methods
.method public strictfp()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/tb1;->do:Landroid/support/v4/ub1;

    invoke-virtual {v0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ub1;->g([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, p1, v2

    iget-object v4, p0, Landroid/support/v4/tb1;->if:Lio/reactivex/functions/Function;

    iget-boolean v5, p0, Landroid/support/v4/tb1;->for:Z

    iget v6, p0, Landroid/support/v4/tb1;->new:I

    iget v7, p0, Landroid/support/v4/tb1;->try:I

    invoke-static {v3, v4, v5, v6, v7}, Lio/reactivex/internal/operators/flowable/f;->L7(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZII)Lio/reactivex/FlowableSubscriber;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/support/v4/tb1;->do:Landroid/support/v4/ub1;

    invoke-virtual {p1, v1}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
