.class public final Lio/reactivex/internal/operators/flowable/package;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/package$case;,
        Lio/reactivex/internal/operators/flowable/package$for;,
        Lio/reactivex/internal/operators/flowable/package$try;,
        Lio/reactivex/internal/operators/flowable/package$new;,
        Lio/reactivex/internal/operators/flowable/package$goto;,
        Lio/reactivex/internal/operators/flowable/package$else;,
        Lio/reactivex/internal/operators/flowable/package$if;,
        Lio/reactivex/internal/operators/flowable/package$this;
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
.field public final for:Lio/reactivex/if;

.field public final if:Lio/reactivex/FlowableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableOnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableOnSubscribe<",
            "TT;>;",
            "Lio/reactivex/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/package;->if:Lio/reactivex/FlowableOnSubscribe;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/package;->for:Lio/reactivex/if;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/flowable/package$do;->do:[I

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/package;->for:Lio/reactivex/if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/package$for;

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/package$for;-><init>(Lorg/reactivestreams/Subscriber;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/package$case;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/package$case;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/package$new;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/package$new;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/flowable/package$try;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/package$try;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lio/reactivex/internal/operators/flowable/package$else;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/package$else;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 8
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/package;->if:Lio/reactivex/FlowableOnSubscribe;

    invoke-interface {p1, v0}, Lio/reactivex/FlowableOnSubscribe;->subscribe(Lio/reactivex/FlowableEmitter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/package$if;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
