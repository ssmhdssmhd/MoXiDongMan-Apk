.class public final Lio/reactivex/internal/schedulers/else;
.super Lio/reactivex/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/else$for;,
        Lio/reactivex/internal/schedulers/else$if;,
        Lio/reactivex/internal/schedulers/else$do;
    }
.end annotation


# static fields
.field private static final break:J

.field private static final case:Ljava/lang/String; = "RxCachedWorkerPoolEvictor"

.field private static final catch:Ljava/util/concurrent/TimeUnit;

.field public static final class:Lio/reactivex/internal/schedulers/else$for;

.field private static final const:Ljava/lang/String; = "rx2.io-priority"

.field public static final else:Lio/reactivex/internal/schedulers/this;

.field public static final final:Lio/reactivex/internal/schedulers/else$do;

.field private static final goto:Ljava/lang/String; = "rx2.io-keep-alive-time"

.field private static final new:Ljava/lang/String; = "RxCachedThreadScheduler"

.field public static final this:J = 0x3cL

.field public static final try:Lio/reactivex/internal/schedulers/this;


# instance fields
.field public final for:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/schedulers/else$do;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/reactivex/internal/schedulers/else;->catch:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx2.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    .line 2
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/internal/schedulers/else;->break:J

    .line 3
    new-instance v0, Lio/reactivex/internal/schedulers/else$for;

    new-instance v1, Lio/reactivex/internal/schedulers/this;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/this;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/else$for;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/else;->class:Lio/reactivex/internal/schedulers/else$for;

    .line 4
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/goto;->dispose()V

    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    new-instance v1, Lio/reactivex/internal/schedulers/this;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/this;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/else;->try:Lio/reactivex/internal/schedulers/this;

    .line 8
    new-instance v2, Lio/reactivex/internal/schedulers/this;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Lio/reactivex/internal/schedulers/this;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/reactivex/internal/schedulers/else;->else:Lio/reactivex/internal/schedulers/this;

    .line 9
    new-instance v0, Lio/reactivex/internal/schedulers/else$do;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lio/reactivex/internal/schedulers/else$do;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/else;->final:Lio/reactivex/internal/schedulers/else$do;

    .line 10
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/else$do;->try()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/else;->try:Lio/reactivex/internal/schedulers/this;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/else;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/schedulers/else;->if:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/schedulers/else;->final:Lio/reactivex/internal/schedulers/else$do;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/else;->for:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/else;->goto()V

    return-void
.end method


# virtual methods
.method public break()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/else$do;

    iget-object v0, v0, Lio/reactivex/internal/schedulers/else$do;->for:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->new()I

    move-result v0

    return v0
.end method

.method public else()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/else;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/else$do;

    .line 2
    sget-object v1, Lio/reactivex/internal/schedulers/else;->final:Lio/reactivex/internal/schedulers/else$do;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/schedulers/else;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/else$do;->try()V

    return-void
.end method

.method public goto()V
    .locals 5

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/else$do;

    sget-wide v1, Lio/reactivex/internal/schedulers/else;->break:J

    sget-object v3, Lio/reactivex/internal/schedulers/else;->catch:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/schedulers/else;->if:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/schedulers/else$do;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/schedulers/else;->for:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/else;->final:Lio/reactivex/internal/schedulers/else$do;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/else$do;->try()V

    :cond_0
    return-void
.end method

.method public if()Lio/reactivex/try$for;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/else$if;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/else;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/schedulers/else$do;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/else$if;-><init>(Lio/reactivex/internal/schedulers/else$do;)V

    return-object v0
.end method
