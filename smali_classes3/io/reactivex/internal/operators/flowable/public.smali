.class public final Lio/reactivex/internal/operators/flowable/public;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/public$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final for:Z

.field public final if:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/reactivestreams/Publisher;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/public;->if:[Lorg/reactivestreams/Publisher;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/public;->for:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/public$do;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/public;->if:[Lorg/reactivestreams/Publisher;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/public;->for:Z

    invoke-direct {v0, v1, v2, p1}, Lio/reactivex/internal/operators/flowable/public$do;-><init>([Lorg/reactivestreams/Publisher;ZLorg/reactivestreams/Subscriber;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/public$do;->onComplete()V

    return-void
.end method
