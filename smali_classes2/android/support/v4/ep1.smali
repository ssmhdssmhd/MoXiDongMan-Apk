.class public Landroid/support/v4/ep1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile if:Landroid/support/v4/ep1;


# instance fields
.field private final do:Lio/reactivex/subjects/goto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/goto<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/reactivex/subjects/try;->else()Lio/reactivex/subjects/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/goto;->try()Lio/reactivex/subjects/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ep1;->do:Lio/reactivex/subjects/goto;

    return-void
.end method

.method public static do()Landroid/support/v4/ep1;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/ep1;->if:Landroid/support/v4/ep1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/support/v4/ep1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/support/v4/ep1;->if:Landroid/support/v4/ep1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/support/v4/ep1;

    invoke-direct {v1}, Landroid/support/v4/ep1;-><init>()V

    sput-object v1, Landroid/support/v4/ep1;->if:Landroid/support/v4/ep1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/support/v4/ep1;->if:Landroid/support/v4/ep1;

    return-object v0
.end method


# virtual methods
.method public for(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ep1;->do:Lio/reactivex/subjects/goto;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ep1;->do:Lio/reactivex/subjects/goto;

    invoke-virtual {v0}, Lio/reactivex/subjects/goto;->for()Z

    move-result v0

    return v0
.end method

.method public new()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Landroid/support/v4/ep1;->if:Landroid/support/v4/ep1;

    return-void
.end method

.method public try(Ljava/lang/Class;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ep1;->do:Lio/reactivex/subjects/goto;

    invoke-virtual {v0, p1}, Lio/reactivex/new;->ofType(Ljava/lang/Class;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
