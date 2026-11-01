.class public final Lio/reactivex/internal/operators/observable/v;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/new<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/TimeUnit;

.field public final do:Lio/reactivex/try;

.field public final for:J

.field public final if:J

.field public final new:J

.field public final try:J


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    .line 2
    iput-wide p5, p0, Lio/reactivex/internal/operators/observable/v;->new:J

    .line 3
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/v;->try:J

    .line 4
    iput-object p9, p0, Lio/reactivex/internal/operators/observable/v;->case:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p10, p0, Lio/reactivex/internal/operators/observable/v;->do:Lio/reactivex/try;

    .line 6
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/v;->if:J

    .line 7
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/v;->for:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/internal/operators/observable/v$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/v;->if:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/v;->for:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/v$do;-><init>(Lio/reactivex/Observer;JJ)V

    .line 2
    invoke-interface {p1, v7}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v;->do:Lio/reactivex/try;

    .line 4
    instance-of p1, v0, Lio/reactivex/internal/schedulers/super;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/v$do;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/v;->new:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/v;->try:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/v;->case:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/try$for;->new(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/v;->new:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/v;->try:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/v;->case:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/try;->case(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/observable/v$do;->setResource(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    return-void
.end method
