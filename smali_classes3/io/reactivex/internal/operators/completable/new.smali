.class public final Lio/reactivex/internal/operators/completable/new;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/new$do;
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

.field public final if:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/new;->do:Lorg/reactivestreams/Publisher;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/new;->if:I

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new;->do:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/completable/new$do;

    iget v2, p0, Lio/reactivex/internal/operators/completable/new;->if:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/new$do;-><init>(Lio/reactivex/CompletableObserver;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
