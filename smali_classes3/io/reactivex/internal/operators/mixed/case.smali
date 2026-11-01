.class public final Lio/reactivex/internal/operators/mixed/case;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/case$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/np;"
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

.field public final for:Z

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


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/case;->do:Lio/reactivex/for;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/case;->if:Lio/reactivex/functions/Function;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/case;->for:Z

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/case;->do:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/mixed/case$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/case;->if:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/case;->for:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/case$do;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
