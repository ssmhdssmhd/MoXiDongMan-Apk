.class public final Lio/reactivex/internal/operators/flowable/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/try$if;,
        Lio/reactivex/internal/operators/flowable/try$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/try;->do:Lorg/reactivestreams/Publisher;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/try$if;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/try$if;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/try$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/try;->do:Lorg/reactivestreams/Publisher;

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/flowable/try$do;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/internal/operators/flowable/try$if;)V

    return-object v1
.end method
