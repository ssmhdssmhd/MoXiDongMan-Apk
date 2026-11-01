.class Lio/reactivex/internal/observers/goto;
.super Lio/reactivex/internal/observers/case;
.source "SourceFile"


# instance fields
.field public final throw:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/observers/case;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/observers/goto;->throw:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
