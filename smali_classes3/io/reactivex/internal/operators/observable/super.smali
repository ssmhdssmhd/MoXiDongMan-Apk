.class public final Lio/reactivex/internal/operators/observable/super;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/super$do;,
        Lio/reactivex/internal/operators/observable/super$for;,
        Lio/reactivex/internal/operators/observable/super$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final else:I

.field public final for:J

.field public final goto:Z

.field public final if:J

.field public final new:Ljava/util/concurrent/TimeUnit;

.field public final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/super;->if:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/super;->for:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/super;->new:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/super;->try:Lio/reactivex/try;

    .line 6
    iput-object p8, p0, Lio/reactivex/internal/operators/observable/super;->case:Ljava/util/concurrent/Callable;

    .line 7
    iput p9, p0, Lio/reactivex/internal/operators/observable/super;->else:I

    .line 8
    iput-boolean p10, p0, Lio/reactivex/internal/operators/observable/super;->goto:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/super;->if:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/super;->for:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lio/reactivex/internal/operators/observable/super;->else:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v8, Lio/reactivex/internal/operators/observable/super$if;

    new-instance v2, Landroid/support/v4/zw1;

    invoke-direct {v2, p1}, Landroid/support/v4/zw1;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/super;->case:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/super;->if:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/super;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/super;->try:Lio/reactivex/try;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/super$if;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-interface {v0, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/super;->try:Lio/reactivex/try;

    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v9

    .line 4
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/super;->if:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/super;->for:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v10, Lio/reactivex/internal/operators/observable/super$do;

    new-instance v2, Landroid/support/v4/zw1;

    invoke-direct {v2, p1}, Landroid/support/v4/zw1;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/super;->case:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/super;->if:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/super;->new:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/internal/operators/observable/super;->else:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/super;->goto:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/super$do;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/try$for;)V

    invoke-interface {v0, v10}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v10, Lio/reactivex/internal/operators/observable/super$for;

    new-instance v2, Landroid/support/v4/zw1;

    invoke-direct {v2, p1}, Landroid/support/v4/zw1;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/super;->case:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/super;->if:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/super;->for:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/super;->new:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/super$for;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;)V

    invoke-interface {v0, v10}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
