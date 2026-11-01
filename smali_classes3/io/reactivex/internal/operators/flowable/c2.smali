.class public final Lio/reactivex/internal/operators/flowable/c2;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/c2$do;
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
.field public final case:Lio/reactivex/try;

.field public final else:I

.field public final for:J

.field public final goto:Z

.field public final new:J

.field public final try:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/c2;->for:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/c2;->new:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/c2;->try:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/c2;->case:Lio/reactivex/try;

    .line 6
    iput p8, p0, Lio/reactivex/internal/operators/flowable/c2;->else:I

    .line 7
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/c2;->goto:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v11, Lio/reactivex/internal/operators/flowable/c2$do;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/c2;->for:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/c2;->new:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/c2;->try:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/c2;->case:Lio/reactivex/try;

    iget v9, p0, Lio/reactivex/internal/operators/flowable/c2;->else:I

    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/c2;->goto:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/flowable/c2$do;-><init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V

    invoke-virtual {v0, v11}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
