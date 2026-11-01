.class public final Lio/reactivex/internal/operators/single/break;
.super Landroid/support/v4/fy0;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/f90;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/break$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/fy0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/jz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;",
            "Landroid/support/v4/t41<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/jz1;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/jz1<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;",
            "Landroid/support/v4/t41<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/fy0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/break;->do:Landroid/support/v4/jz1;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/break;->if:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public w0(Lio/reactivex/MaybeObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/break;->do:Landroid/support/v4/jz1;

    new-instance v1, Lio/reactivex/internal/operators/single/break$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/break;->if:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/break$do;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
