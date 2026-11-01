.class public final Lio/reactivex/internal/operators/single/b;
.super Landroid/support/v4/jz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/b$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/jz1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "TT;>;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/jz1;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/b;->do:Lio/reactivex/SingleSource;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/b;->if:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public g0(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/b;->do:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/b$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/b;->if:Lio/reactivex/try;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/b$do;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/try;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
