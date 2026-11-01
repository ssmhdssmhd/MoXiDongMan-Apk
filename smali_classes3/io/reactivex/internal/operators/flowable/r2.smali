.class public final Lio/reactivex/internal/operators/flowable/r2;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/r2$do;,
        Lio/reactivex/internal/operators/flowable/r2$if;,
        Lio/reactivex/internal/operators/flowable/r2$new;,
        Lio/reactivex/internal/operators/flowable/r2$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;",
        "Lio/reactivex/for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final for:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final new:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TB;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "TB;>;",
            "Lio/reactivex/functions/Function<",
            "-TB;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/r2;->for:Lorg/reactivestreams/Publisher;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/r2;->new:Lio/reactivex/functions/Function;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/r2;->try:I

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/r2$for;

    new-instance v2, Landroid/support/v4/bx1;

    invoke-direct {v2, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r2;->for:Lorg/reactivestreams/Publisher;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/r2;->new:Lio/reactivex/functions/Function;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/r2;->try:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/flowable/r2$for;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
