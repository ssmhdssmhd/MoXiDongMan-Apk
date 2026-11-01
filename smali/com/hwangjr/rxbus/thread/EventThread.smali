.class public final enum Lcom/hwangjr/rxbus/thread/EventThread;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hwangjr/rxbus/thread/EventThread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum COMPUTATION:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum EXECUTOR:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum HANDLER:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum IO:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum MAIN_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum NEW_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum SINGLE:Lcom/hwangjr/rxbus/thread/EventThread;

.field public static final enum TRAMPOLINE:Lcom/hwangjr/rxbus/thread/EventThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v1, "MAIN_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hwangjr/rxbus/thread/EventThread;->MAIN_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 2
    new-instance v1, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v3, "NEW_THREAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hwangjr/rxbus/thread/EventThread;->NEW_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 3
    new-instance v3, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v5, "IO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hwangjr/rxbus/thread/EventThread;->IO:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 4
    new-instance v5, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v7, "COMPUTATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hwangjr/rxbus/thread/EventThread;->COMPUTATION:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 5
    new-instance v7, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v9, "TRAMPOLINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hwangjr/rxbus/thread/EventThread;->TRAMPOLINE:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 6
    new-instance v9, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v11, "SINGLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hwangjr/rxbus/thread/EventThread;->SINGLE:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 7
    new-instance v11, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v13, "EXECUTOR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/hwangjr/rxbus/thread/EventThread;->EXECUTOR:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 8
    new-instance v13, Lcom/hwangjr/rxbus/thread/EventThread;

    const-string v15, "HANDLER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/hwangjr/rxbus/thread/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/hwangjr/rxbus/thread/EventThread;->HANDLER:Lcom/hwangjr/rxbus/thread/EventThread;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/hwangjr/rxbus/thread/EventThread;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/hwangjr/rxbus/thread/EventThread;->$VALUES:[Lcom/hwangjr/rxbus/thread/EventThread;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getScheduler(Lcom/hwangjr/rxbus/thread/EventThread;)Lio/reactivex/try;
    .locals 1

    .line 1
    sget-object v0, Lcom/hwangjr/rxbus/thread/EventThread$1;->$SwitchMap$com$hwangjr$rxbus$thread$EventThread:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/hwangjr/rxbus/thread/ThreadHandler;->DEFAULT:Lcom/hwangjr/rxbus/thread/ThreadHandler;

    invoke-interface {p0}, Lcom/hwangjr/rxbus/thread/ThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/android/schedulers/do;->do(Landroid/os/Looper;)Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/hwangjr/rxbus/thread/ThreadHandler;->DEFAULT:Lcom/hwangjr/rxbus/thread/ThreadHandler;

    invoke-interface {p0}, Lcom/hwangjr/rxbus/thread/ThreadHandler;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-static {}, Lio/reactivex/schedulers/do;->this()Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-static {}, Lio/reactivex/schedulers/do;->try()Lio/reactivex/try;

    move-result-object p0

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hwangjr/rxbus/thread/EventThread;
    .locals 1

    .line 1
    const-class v0, Lcom/hwangjr/rxbus/thread/EventThread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hwangjr/rxbus/thread/EventThread;

    return-object p0
.end method

.method public static values()[Lcom/hwangjr/rxbus/thread/EventThread;
    .locals 1

    .line 1
    sget-object v0, Lcom/hwangjr/rxbus/thread/EventThread;->$VALUES:[Lcom/hwangjr/rxbus/thread/EventThread;

    invoke-virtual {v0}, [Lcom/hwangjr/rxbus/thread/EventThread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hwangjr/rxbus/thread/EventThread;

    return-object v0
.end method
