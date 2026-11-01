.class public final Lio/reactivex/internal/operators/observable/k2;
.super Lio/reactivex/internal/operators/observable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/k2$for;,
        Lio/reactivex/internal/operators/observable/k2$do;,
        Lio/reactivex/internal/operators/observable/k2$if;
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
.field public final case:J

.field public final else:I

.field public final for:J

.field public final goto:Z

.field public final if:J

.field public final new:Ljava/util/concurrent/TimeUnit;

.field public final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "JIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/do;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/k2;->if:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/k2;->for:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/k2;->new:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/k2;->try:Lio/reactivex/try;

    .line 6
    iput-wide p8, p0, Lio/reactivex/internal/operators/observable/k2;->case:J

    .line 7
    iput p10, p0, Lio/reactivex/internal/operators/observable/k2;->else:I

    .line 8
    iput-boolean p11, p0, Lio/reactivex/internal/operators/observable/k2;->goto:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 11
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
    new-instance v1, Landroid/support/v4/zw1;

    invoke-direct {v1, p1}, Landroid/support/v4/zw1;-><init>(Lio/reactivex/Observer;)V

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/k2;->if:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/k2;->for:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 3
    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/k2;->case:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v7, Lio/reactivex/internal/operators/observable/k2$if;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/k2;->if:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/k2;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/k2;->try:Lio/reactivex/try;

    iget v6, p0, Lio/reactivex/internal/operators/observable/k2;->else:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/k2$if;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;I)V

    invoke-interface {p1, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v10, Lio/reactivex/internal/operators/observable/k2$do;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/k2;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/k2;->try:Lio/reactivex/try;

    iget v6, p0, Lio/reactivex/internal/operators/observable/k2;->else:I

    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/k2;->goto:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/observable/k2$do;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IJZ)V

    invoke-interface {p1, v10}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    new-instance v9, Lio/reactivex/internal/operators/observable/k2$for;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/k2;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2;->try:Lio/reactivex/try;

    .line 7
    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/observable/k2;->else:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/observable/k2$for;-><init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;I)V

    .line 8
    invoke-interface {p1, v9}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
