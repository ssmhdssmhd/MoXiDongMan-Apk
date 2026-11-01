.class final Lio/reactivex/try$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/schedulers/SchedulerRunnableIntrospection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/try$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public case:J

.field public final do:Ljava/lang/Runnable;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public final synthetic else:Lio/reactivex/try$for;

.field public final for:J

.field public final if:Landroid/support/v4/tw1;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public new:J

.field public try:J


# direct methods
.method public constructor <init>(Lio/reactivex/try$for;JLjava/lang/Runnable;JLandroid/support/v4/tw1;J)V
    .locals 0
    .param p2    # J
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p5    # J
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/reactivex/try$for$do;->else:Lio/reactivex/try$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lio/reactivex/try$for$do;->do:Ljava/lang/Runnable;

    .line 3
    iput-object p7, p0, Lio/reactivex/try$for$do;->if:Landroid/support/v4/tw1;

    .line 4
    iput-wide p8, p0, Lio/reactivex/try$for$do;->for:J

    .line 5
    iput-wide p5, p0, Lio/reactivex/try$for$do;->try:J

    .line 6
    iput-wide p2, p0, Lio/reactivex/try$for$do;->case:J

    return-void
.end method


# virtual methods
.method public getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/try$for$do;->do:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/reactivex/try$for$do;->do:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, Lio/reactivex/try$for$do;->if:Landroid/support/v4/tw1;

    invoke-virtual {v0}, Landroid/support/v4/tw1;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/reactivex/try$for$do;->else:Lio/reactivex/try$for;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/try$for;->do(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 4
    sget-wide v4, Lio/reactivex/try;->do:J

    add-long v6, v2, v4

    iget-wide v8, p0, Lio/reactivex/try$for$do;->try:J

    const-wide/16 v10, 0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    iget-wide v6, p0, Lio/reactivex/try$for$do;->for:J

    add-long/2addr v8, v6

    add-long/2addr v8, v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v4, p0, Lio/reactivex/try$for$do;->case:J

    iget-wide v8, p0, Lio/reactivex/try$for$do;->new:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lio/reactivex/try$for$do;->new:J

    mul-long v8, v8, v6

    add-long/2addr v4, v8

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-wide v4, p0, Lio/reactivex/try$for$do;->for:J

    add-long v6, v2, v4

    .line 7
    iget-wide v8, p0, Lio/reactivex/try$for$do;->new:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lio/reactivex/try$for$do;->new:J

    mul-long v4, v4, v8

    sub-long v4, v6, v4

    iput-wide v4, p0, Lio/reactivex/try$for$do;->case:J

    move-wide v4, v6

    .line 8
    :goto_1
    iput-wide v2, p0, Lio/reactivex/try$for$do;->try:J

    sub-long/2addr v4, v2

    .line 9
    iget-object v0, p0, Lio/reactivex/try$for$do;->if:Landroid/support/v4/tw1;

    iget-object v2, p0, Lio/reactivex/try$for$do;->else:Lio/reactivex/try$for;

    invoke-virtual {v2, p0, v4, v5, v1}, Lio/reactivex/try$for;->for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    return-void
.end method
