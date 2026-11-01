.class public final Landroid/support/v4/zc0;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final case:I

.field public final for:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final if:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final new:Z

.field public final try:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/zc0;->if:Lorg/reactivestreams/Publisher;

    .line 3
    iput-object p2, p0, Landroid/support/v4/zc0;->for:Lio/reactivex/functions/Function;

    .line 4
    iput-boolean p3, p0, Landroid/support/v4/zc0;->new:Z

    .line 5
    iput p4, p0, Landroid/support/v4/zc0;->try:I

    .line 6
    iput p5, p0, Landroid/support/v4/zc0;->case:I

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/zc0;->if:Lorg/reactivestreams/Publisher;

    iget-object v1, p0, Landroid/support/v4/zc0;->for:Lio/reactivex/functions/Function;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/j1;->if(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/zc0;->if:Lorg/reactivestreams/Publisher;

    iget-object v1, p0, Landroid/support/v4/zc0;->for:Lio/reactivex/functions/Function;

    iget-boolean v2, p0, Landroid/support/v4/zc0;->new:Z

    iget v3, p0, Landroid/support/v4/zc0;->try:I

    iget v4, p0, Landroid/support/v4/zc0;->case:I

    invoke-static {p1, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/f;->L7(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZII)Lio/reactivex/FlowableSubscriber;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
