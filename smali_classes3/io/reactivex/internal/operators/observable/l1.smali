.class public final Lio/reactivex/internal/operators/observable/l1;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/l1$do;
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
.field public final case:Z

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lio/reactivex/try;

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/l1;->if:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/l1;->for:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/l1;->new:Lio/reactivex/try;

    .line 5
    iput p6, p0, Lio/reactivex/internal/operators/observable/l1;->try:I

    .line 6
    iput-boolean p7, p0, Lio/reactivex/internal/operators/observable/l1;->case:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v9, Lio/reactivex/internal/operators/observable/l1$do;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/l1;->if:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/l1;->for:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/l1;->new:Lio/reactivex/try;

    iget v7, p0, Lio/reactivex/internal/operators/observable/l1;->try:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/l1;->case:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/observable/l1$do;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IZ)V

    invoke-interface {v0, v9}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
