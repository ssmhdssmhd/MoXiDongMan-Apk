.class public Lcom/hwangjr/rxbus/RxBus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBus:Lcom/hwangjr/rxbus/Bus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/hwangjr/rxbus/Bus;
    .locals 3

    const-class v0, Lcom/hwangjr/rxbus/RxBus;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/hwangjr/rxbus/RxBus;->sBus:Lcom/hwangjr/rxbus/Bus;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/hwangjr/rxbus/Bus;

    sget-object v2, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->ANY:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    invoke-direct {v1, v2}, Lcom/hwangjr/rxbus/Bus;-><init>(Lcom/hwangjr/rxbus/thread/ThreadEnforcer;)V

    sput-object v1, Lcom/hwangjr/rxbus/RxBus;->sBus:Lcom/hwangjr/rxbus/Bus;

    .line 3
    :cond_0
    sget-object v1, Lcom/hwangjr/rxbus/RxBus;->sBus:Lcom/hwangjr/rxbus/Bus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
