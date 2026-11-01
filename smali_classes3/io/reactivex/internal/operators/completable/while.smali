.class public final Lio/reactivex/internal/operators/completable/while;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/while$do;
    }
.end annotation


# instance fields
.field public final do:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Z

.field public final if:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/while;->do:Lorg/reactivestreams/Publisher;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/while;->if:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/completable/while;->for:Z

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/while$do;

    iget v1, p0, Lio/reactivex/internal/operators/completable/while;->if:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/completable/while;->for:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/completable/while$do;-><init>(Lio/reactivex/CompletableObserver;IZ)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/while;->do:Lorg/reactivestreams/Publisher;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
