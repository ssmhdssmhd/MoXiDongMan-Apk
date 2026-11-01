.class public final Lio/reactivex/internal/operators/single/try;
.super Landroid/support/v4/jz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/try$do;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lio/reactivex/try;

.field public final try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/jz1;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/try;->do:Lio/reactivex/SingleSource;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/single/try;->if:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/single/try;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/single/try;->new:Lio/reactivex/try;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/single/try;->try:Z

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
    new-instance v0, Landroid/support/v4/tw1;

    invoke-direct {v0}, Landroid/support/v4/tw1;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/single/try;->do:Lio/reactivex/SingleSource;

    new-instance v2, Lio/reactivex/internal/operators/single/try$do;

    invoke-direct {v2, p0, v0, p1}, Lio/reactivex/internal/operators/single/try$do;-><init>(Lio/reactivex/internal/operators/single/try;Landroid/support/v4/tw1;Lio/reactivex/SingleObserver;)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
