.class final Lio/reactivex/internal/operators/flowable/e2$do$do;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/e2$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31dc445a260f2f32L


# instance fields
.field public final synthetic this$0:Lio/reactivex/internal/operators/flowable/e2$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/e2$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e2$do$do;->this$0:Lio/reactivex/internal/operators/flowable/e2$do;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e2$do$do;->this$0:Lio/reactivex/internal/operators/flowable/e2$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/e2$do;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e2$do$do;->this$0:Lio/reactivex/internal/operators/flowable/e2$do;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/e2$do;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/e2$do;->error:Landroid/support/v4/h4;

    invoke-static {v1, v0, v2}, Landroid/support/v4/si0;->if(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/support/v4/h4;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e2$do$do;->this$0:Lio/reactivex/internal/operators/flowable/e2$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/e2$do;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e2$do$do;->this$0:Lio/reactivex/internal/operators/flowable/e2$do;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/e2$do;->downstream:Lorg/reactivestreams/Subscriber;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/e2$do;->error:Landroid/support/v4/h4;

    invoke-static {v1, p1, v0, v2}, Landroid/support/v4/si0;->new(Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/support/v4/h4;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/e2$do$do;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/for;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
