.class public final Lio/reactivex/internal/operators/observable/u1;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/u1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final case:I

.field public final else:Z

.field public final for:J

.field public final if:J

.field public final new:Ljava/util/concurrent/TimeUnit;

.field public final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/u1;->if:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/u1;->for:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/u1;->new:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/u1;->try:Lio/reactivex/try;

    .line 6
    iput p8, p0, Lio/reactivex/internal/operators/observable/u1;->case:I

    .line 7
    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/u1;->else:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v11, Lio/reactivex/internal/operators/observable/u1$do;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/u1;->if:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/u1;->for:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/u1;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/u1;->try:Lio/reactivex/try;

    iget v9, p0, Lio/reactivex/internal/operators/observable/u1;->case:I

    iget-boolean v10, p0, Lio/reactivex/internal/operators/observable/u1;->else:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/observable/u1$do;-><init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V

    invoke-interface {v0, v11}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
