.class public final Lio/reactivex/internal/operators/flowable/h;
.super Landroid/support/v4/np;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/h$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/np;",
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

.field public final for:I

.field public final if:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Z


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Function;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h;->do:Lio/reactivex/for;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/h;->if:Lio/reactivex/functions/Function;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/h;->new:Z

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/h;->for:I

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h;->do:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/h$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/h;->if:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/h;->new:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/h;->for:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/h$do;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public fuseToFlowable()Lio/reactivex/for;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/g;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/h;->do:Lio/reactivex/for;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/h;->if:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/h;->new:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/h;->for:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/g;-><init>(Lio/reactivex/for;Lio/reactivex/functions/Function;ZI)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method
