.class final Lcom/uber/autodispose/catch;
.super Landroid/support/v4/ub1;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/ub1<",
        "TT;>;",
        "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Landroid/support/v4/ub1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final if:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "TT;>;",
            "Lio/reactivex/CompletableSource;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ub1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/uber/autodispose/catch;->do:Landroid/support/v4/ub1;

    .line 3
    iput-object p2, p0, Lcom/uber/autodispose/catch;->if:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public strictfp()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/catch;->do:Landroid/support/v4/ub1;

    invoke-virtual {v0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ub1;->g([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/uber/autodispose/import;

    iget-object v3, p0, Lcom/uber/autodispose/catch;->if:Lio/reactivex/CompletableSource;

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lcom/uber/autodispose/import;-><init>(Lio/reactivex/CompletableSource;Lorg/reactivestreams/Subscriber;)V

    .line 5
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/uber/autodispose/catch;->do:Landroid/support/v4/ub1;

    invoke-virtual {p1, v0}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
