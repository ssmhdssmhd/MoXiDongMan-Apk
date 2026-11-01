.class public final Lio/reactivex/internal/operators/observable/o0;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/o0$do;
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
.field private final do:J

.field private final if:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/o0;->do:J

    .line 3
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/o0;->if:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 7
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
    new-instance v6, Lio/reactivex/internal/operators/observable/o0$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/o0;->do:J

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/o0;->if:J

    add-long v4, v2, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/o0$do;-><init>(Lio/reactivex/Observer;JJ)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/o0$do;->run()V

    return-void
.end method
