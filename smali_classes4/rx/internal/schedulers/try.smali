.class final enum Lrx/internal/schedulers/try;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/schedulers/try;",
        ">;"
    }
.end annotation


# static fields
.field public static final THREAD_FACTORY:Lrx/internal/util/case;

.field public static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"

.field private static final synthetic do:[Lrx/internal/schedulers/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/schedulers/try;

    .line 1
    sput-object v0, Lrx/internal/schedulers/try;->do:[Lrx/internal/schedulers/try;

    .line 2
    new-instance v0, Lrx/internal/util/case;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/case;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/try;->THREAD_FACTORY:Lrx/internal/util/case;

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

.method public static create()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lrx/plugins/if;->break()Lrx/functions/Func0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lrx/internal/schedulers/try;->createDefault()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static createDefault()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    invoke-static {}, Lrx/internal/schedulers/try;->threadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static threadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/schedulers/try;->THREAD_FACTORY:Lrx/internal/util/case;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/schedulers/try;
    .locals 1

    .line 1
    const-class v0, Lrx/internal/schedulers/try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/internal/schedulers/try;

    return-object p0
.end method

.method public static values()[Lrx/internal/schedulers/try;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/schedulers/try;->do:[Lrx/internal/schedulers/try;

    invoke-virtual {v0}, [Lrx/internal/schedulers/try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/schedulers/try;

    return-object v0
.end method
