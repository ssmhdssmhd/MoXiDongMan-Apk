.class public final Lio/reactivex/internal/operators/flowable/catch;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/catch$if;,
        Lio/reactivex/internal/operators/flowable/catch$for;,
        Lio/reactivex/internal/operators/flowable/catch$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field public final for:I

.field public final new:I

.field public final try:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/for;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput p2, p0, Lio/reactivex/internal/operators/flowable/catch;->for:I

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/flowable/catch;->new:I

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/catch;->try:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/catch;->for:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/catch;->new:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v2, Lio/reactivex/internal/operators/flowable/catch$do;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/catch;->try:Ljava/util/concurrent/Callable;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/flowable/catch$do;-><init>(Lorg/reactivestreams/Subscriber;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/catch$for;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/catch;->for:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/catch;->new:I

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/catch;->try:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/catch$for;-><init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/catch$if;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/catch;->for:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/catch;->new:I

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/catch;->try:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/catch$if;-><init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
