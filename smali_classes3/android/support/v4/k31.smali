.class public final Landroid/support/v4/k31;
.super Lio/reactivex/try;
.source "SourceFile"


# static fields
.field private static final for:Ljava/lang/String; = "RxNewThreadScheduler"

.field private static final new:Lio/reactivex/internal/schedulers/this;

.field private static final try:Ljava/lang/String; = "rx2.newthread-priority"


# instance fields
.field public final if:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "rx2.newthread-priority"

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v1, Lio/reactivex/internal/schedulers/this;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/this;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/k31;->new:Lio/reactivex/internal/schedulers/this;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/k31;->new:Lio/reactivex/internal/schedulers/this;

    invoke-direct {p0, v0}, Landroid/support/v4/k31;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/k31;->if:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public if()Lio/reactivex/try$for;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/goto;

    iget-object v1, p0, Landroid/support/v4/k31;->if:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/goto;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
