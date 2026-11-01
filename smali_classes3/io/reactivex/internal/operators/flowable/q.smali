.class public final Lio/reactivex/internal/operators/flowable/q;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/q$new;,
        Lio/reactivex/internal/operators/flowable/q$for;,
        Lio/reactivex/internal/operators/flowable/q$do;,
        Lio/reactivex/internal/operators/flowable/q$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;",
        "Landroid/support/v4/fi0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final case:Z

.field public final else:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final for:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field public final new:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;IZLio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TK;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TV;>;IZ",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/q;->for:Lio/reactivex/functions/Function;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/q;->new:Lio/reactivex/functions/Function;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/q;->try:I

    .line 5
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/q;->case:Z

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/q;->else:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Landroid/support/v4/fi0<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q;->else:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    move-object v9, v0

    move-object v8, v1

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 4
    new-instance v1, Lio/reactivex/internal/operators/flowable/q$do;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/q$do;-><init>(Ljava/util/Queue;)V

    .line 5
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q;->else:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :goto_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/q$if;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/q;->for:Lio/reactivex/functions/Function;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/q;->new:Lio/reactivex/functions/Function;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/q;->try:I

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/q;->case:Z

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lio/reactivex/internal/operators/flowable/q$if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;IZLjava/util/Map;Ljava/util/Queue;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    invoke-virtual {p1, v0}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 9
    sget-object v1, Lio/reactivex/internal/util/new;->INSTANCE:Lio/reactivex/internal/util/new;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 10
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
