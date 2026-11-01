.class final Lio/reactivex/internal/operators/flowable/u$super;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "super"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/support/v4/oq<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final do:Lio/reactivex/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/util/concurrent/TimeUnit;

.field private final if:J

.field private final new:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/u$super;->do:Lio/reactivex/for;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/u$super;->if:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/u$super;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/u$super;->new:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/u$super;->do()Landroid/support/v4/oq;

    move-result-object v0

    return-object v0
.end method

.method public do()Landroid/support/v4/oq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/oq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/u$super;->do:Lio/reactivex/for;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/u$super;->if:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/u$super;->for:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/u$super;->new:Lio/reactivex/try;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/for;->l4(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/oq;

    move-result-object v0

    return-object v0
.end method
