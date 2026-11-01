.class public final Lio/reactivex/internal/operators/observable/g2;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/g2$if;,
        Lio/reactivex/internal/operators/observable/g2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/do<",
        "TT;",
        "Lio/reactivex/new<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final for:J

.field public final if:J

.field public final new:I


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/g2;->if:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/g2;->for:J

    .line 4
    iput p6, p0, Lio/reactivex/internal/operators/observable/g2;->new:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/new<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/g2;->if:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/g2;->for:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/g2$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/g2;->if:J

    iget v4, p0, Lio/reactivex/internal/operators/observable/g2;->new:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/g2$do;-><init>(Lio/reactivex/Observer;JI)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v8, Lio/reactivex/internal/operators/observable/g2$if;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/g2;->if:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/g2;->for:J

    iget v7, p0, Lio/reactivex/internal/operators/observable/g2;->new:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/g2$if;-><init>(Lio/reactivex/Observer;JJI)V

    invoke-interface {v0, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
