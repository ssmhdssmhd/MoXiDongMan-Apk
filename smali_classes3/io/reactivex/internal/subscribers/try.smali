.class Lio/reactivex/internal/subscribers/try;
.super Lio/reactivex/internal/subscribers/new;
.source "SourceFile"


# instance fields
.field public final strictfp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/new;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscribers/try;->strictfp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
