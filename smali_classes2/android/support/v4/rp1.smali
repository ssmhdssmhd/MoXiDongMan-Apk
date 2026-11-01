.class public Landroid/support/v4/rp1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/rp1$do;
    }
.end annotation


# static fields
.field private static case:I = 0x0

.field private static do:Lio/reactivex/try; = null

.field private static final for:I = 0xa

.field private static if:Ljava/util/concurrent/ExecutorService;

.field private static new:I

.field private static try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Landroid/support/v4/rp1;->new:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Landroid/support/v4/rp1;->try:I

    .line 3
    sget v0, Landroid/support/v4/rp1;->new:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/rp1;->case:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lio/reactivex/try;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    if-nez v0, :cond_0

    .line 2
    sget v0, Landroid/support/v4/rp1;->case:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {v0}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    .line 4
    :cond_0
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    return-object v0
.end method

.method public static for(Lio/reactivex/new;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget v0, Landroid/support/v4/rp1;->case:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {v0}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    .line 4
    :cond_1
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    invoke-virtual {p0, v0}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/new;->unsubscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static if()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3
    sput-object v1, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_0
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/reactivex/try;->else()V

    .line 6
    sput-object v1, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    :cond_1
    return-void
.end method

.method public static new(Landroid/support/v4/jz1;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/jz1<",
            "TT;>;)",
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget v0, Landroid/support/v4/rp1;->case:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rp1;->if:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {v0}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    .line 4
    :cond_1
    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p0

    sget-object v0, Landroid/support/v4/rp1;->do:Lio/reactivex/try;

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->A0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/rp1$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;TR;)",
            "Landroid/support/v4/rp1$do<",
            "TT;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/rp1$do;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/rp1$do;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
