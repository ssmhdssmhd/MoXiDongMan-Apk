.class final Lio/reactivex/internal/operators/flowable/f0$do;
.super Landroid/support/v4/xz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/xz1<",
        "TT;",
        "Landroid/support/v4/t41<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33ea157c2cf0a1deL


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Landroid/support/v4/t41<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/xz1;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/t41;->do()Landroid/support/v4/t41;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/xz1;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onDrop(Landroid/support/v4/t41;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/t41<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/t41;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/t41;->new()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDrop(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/t41;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/f0$do;->onDrop(Landroid/support/v4/t41;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/t41;->if(Ljava/lang/Throwable;)Landroid/support/v4/t41;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/xz1;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/xz1;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v4/xz1;->produced:J

    .line 2
    iget-object v0, p0, Landroid/support/v4/xz1;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {p1}, Landroid/support/v4/t41;->for(Ljava/lang/Object;)Landroid/support/v4/t41;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
