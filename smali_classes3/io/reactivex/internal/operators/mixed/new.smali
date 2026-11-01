.class public final Lio/reactivex/internal/operators/mixed/new;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/new$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final new:Lio/reactivex/internal/util/try;

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Function;Lio/reactivex/internal/util/try;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/try;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/new;->if:Lio/reactivex/for;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/new;->for:Lio/reactivex/functions/Function;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/new;->new:Lio/reactivex/internal/util/try;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/new;->try:I

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/new;->if:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/mixed/new$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/new;->for:Lio/reactivex/functions/Function;

    iget v3, p0, Lio/reactivex/internal/operators/mixed/new;->try:I

    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/new;->new:Lio/reactivex/internal/util/try;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/new$do;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
