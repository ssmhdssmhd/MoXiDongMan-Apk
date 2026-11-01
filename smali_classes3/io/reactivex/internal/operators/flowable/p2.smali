.class public final Lio/reactivex/internal/operators/flowable/p2;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/p2$if;,
        Lio/reactivex/internal/operators/flowable/p2$for;,
        Lio/reactivex/internal/operators/flowable/p2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;",
        "Lio/reactivex/for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final for:J

.field public final new:J

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/for;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/p2;->for:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/p2;->new:J

    .line 4
    iput p6, p0, Lio/reactivex/internal/operators/flowable/p2;->try:I

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 9
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
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/p2;->new:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/p2;->for:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/p2$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/p2;->for:J

    iget v4, p0, Lio/reactivex/internal/operators/flowable/p2;->try:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/p2$do;-><init>(Lorg/reactivestreams/Subscriber;JI)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v8, Lio/reactivex/internal/operators/flowable/p2$for;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/p2;->for:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/p2;->new:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/p2;->try:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/p2$for;-><init>(Lorg/reactivestreams/Subscriber;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v8, Lio/reactivex/internal/operators/flowable/p2$if;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/p2;->for:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/p2;->new:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/p2;->try:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/p2$if;-><init>(Lorg/reactivestreams/Subscriber;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
