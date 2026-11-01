.class public final Lio/reactivex/internal/operators/flowable/p1;
.super Landroid/support/v4/fy0;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/p1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/fy0<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/FuseToFlowable<",
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


# direct methods
.method public constructor <init>(Lio/reactivex/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/fy0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/p1;->do:Lio/reactivex/for;

    return-void
.end method


# virtual methods
.method public fuseToFlowable()Lio/reactivex/for;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/o1;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/p1;->do:Lio/reactivex/for;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/o1;-><init>(Lio/reactivex/for;Ljava/lang/Object;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public w0(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p1;->do:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/p1$do;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/p1$do;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
