.class public final Lio/reactivex/internal/operators/observable/z1;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/z1$do;
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
.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lio/reactivex/try;

.field public final try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/new;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/z1;->if:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/z1;->for:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/z1;->new:Lio/reactivex/try;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/z1;->try:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v8, Lio/reactivex/internal/operators/observable/z1$do;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/z1;->if:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/z1;->for:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/z1;->new:Lio/reactivex/try;

    invoke-virtual {v1}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v6

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/z1;->try:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/z1$do;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
