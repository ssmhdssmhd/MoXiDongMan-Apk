.class public final Lio/reactivex/internal/operators/flowable/t1;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final case:I

.field public final else:Z

.field public final for:J

.field public final new:Ljava/util/concurrent/TimeUnit;

.field public final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/t1;->for:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/t1;->new:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/t1;->try:Lio/reactivex/try;

    .line 5
    iput p6, p0, Lio/reactivex/internal/operators/flowable/t1;->case:I

    .line 6
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/t1;->else:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v9, Lio/reactivex/internal/operators/flowable/t1$do;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/t1;->for:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/t1;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/t1;->try:Lio/reactivex/try;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/t1;->case:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/t1;->else:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/flowable/t1$do;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V

    invoke-virtual {v0, v9}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
