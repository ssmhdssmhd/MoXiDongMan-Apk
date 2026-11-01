.class public Landroid/support/v4/lm1;
.super Landroid/support/v4/vz0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/vz0<",
        "Lcom/wsw/cospa/event/RefreshDownloadListObserver;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile if:Landroid/support/v4/lm1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/vz0;-><init>()V

    return-void
.end method

.method public static case()Landroid/support/v4/lm1;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/lm1;->if:Landroid/support/v4/lm1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/support/v4/lm1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/support/v4/lm1;->if:Landroid/support/v4/lm1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/support/v4/lm1;

    invoke-direct {v1}, Landroid/support/v4/lm1;-><init>()V

    sput-object v1, Landroid/support/v4/lm1;->if:Landroid/support/v4/lm1;

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
    sget-object v0, Landroid/support/v4/lm1;->if:Landroid/support/v4/lm1;

    return-object v0
.end method


# virtual methods
.method public varargs if([Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Landroid/support/v4/vz0;->do:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/event/RefreshDownloadListObserver;

    .line 2
    invoke-interface {v0}, Lcom/wsw/cospa/event/RefreshDownloadListObserver;->onRefreshDownloadListMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
