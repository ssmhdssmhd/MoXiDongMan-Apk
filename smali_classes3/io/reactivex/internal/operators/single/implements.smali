.class public final Lio/reactivex/internal/operators/single/implements;
.super Landroid/support/v4/jz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/implements$do;
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

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lio/reactivex/try;

.field public final try:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/jz1;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/implements;->do:Lio/reactivex/SingleSource;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/single/implements;->if:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/single/implements;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/single/implements;->new:Lio/reactivex/try;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/single/implements;->try:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public g0(Lio/reactivex/SingleObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/single/implements$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/implements;->try:Lio/reactivex/SingleSource;

    iget-wide v3, p0, Lio/reactivex/internal/operators/single/implements;->if:J

    iget-object v5, p0, Lio/reactivex/internal/operators/single/implements;->for:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/implements$do;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, v6, Lio/reactivex/internal/operators/single/implements$do;->task:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/reactivex/internal/operators/single/implements;->new:Lio/reactivex/try;

    iget-wide v1, p0, Lio/reactivex/internal/operators/single/implements;->if:J

    iget-object v3, p0, Lio/reactivex/internal/operators/single/implements;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/internal/disposables/do;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/single/implements;->do:Lio/reactivex/SingleSource;

    invoke-interface {p1, v6}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
