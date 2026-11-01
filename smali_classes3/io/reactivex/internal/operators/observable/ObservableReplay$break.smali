.class final Lio/reactivex/internal/operators/observable/ObservableReplay$break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:I

.field private final for:Ljava/util/concurrent/TimeUnit;

.field private final if:J

.field private final new:Lio/reactivex/try;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->do:I

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->if:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->new:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableReplay$catch;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->do:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->if:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->for:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$break;->new:Lio/reactivex/try;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableReplay$catch;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    return-object v6
.end method
