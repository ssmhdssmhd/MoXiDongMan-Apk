.class public final Lio/reactivex/internal/operators/flowable/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/new$do;
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
.field public final do:Lio/reactivex/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/for;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/new;->do:Lio/reactivex/for;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/new;->if:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/new$do;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/new;->if:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/new$do;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/new;->do:Lio/reactivex/for;

    invoke-virtual {v1, v0}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/new$do;->new()Lio/reactivex/internal/operators/flowable/new$do$do;

    move-result-object v0

    return-object v0
.end method
