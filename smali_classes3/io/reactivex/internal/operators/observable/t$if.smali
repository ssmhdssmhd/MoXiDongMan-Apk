.class final Lio/reactivex/internal/operators/observable/t$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/support/v4/pq<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final do:Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final for:J

.field private final if:I

.field private final new:Ljava/util/concurrent/TimeUnit;

.field private final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/new;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t$if;->do:Lio/reactivex/new;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/t$if;->if:I

    .line 4
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/t$if;->for:J

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/t$if;->new:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/t$if;->try:Lio/reactivex/try;

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
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/t$if;->do()Landroid/support/v4/pq;

    move-result-object v0

    return-object v0
.end method

.method public do()Landroid/support/v4/pq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/pq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$if;->do:Lio/reactivex/new;

    iget v1, p0, Lio/reactivex/internal/operators/observable/t$if;->if:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/t$if;->for:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/t$if;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/t$if;->try:Lio/reactivex/try;

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/new;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/pq;

    move-result-object v0

    return-object v0
.end method
