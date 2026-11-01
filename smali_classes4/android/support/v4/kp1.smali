.class public Landroid/support/v4/kp1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Landroid/support/v4/kp1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/kp1;

    invoke-direct {v0}, Landroid/support/v4/kp1;-><init>()V

    sput-object v0, Landroid/support/v4/kp1;->do:Landroid/support/v4/kp1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/util/concurrent/ThreadFactory;)Lrx/if;
    .locals 1

    const-string v0, "threadFactory == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/i31;

    invoke-direct {v0, p0}, Landroid/support/v4/i31;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static do()Lrx/if;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/util/case;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/case;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/kp1;->if(Ljava/util/concurrent/ThreadFactory;)Lrx/if;

    move-result-object v0

    return-object v0
.end method

.method public static for()Lrx/if;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/util/case;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/case;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/kp1;->new(Ljava/util/concurrent/ThreadFactory;)Lrx/if;

    move-result-object v0

    return-object v0
.end method

.method public static goto()Landroid/support/v4/kp1;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/kp1;->do:Landroid/support/v4/kp1;

    return-object v0
.end method

.method public static if(Ljava/util/concurrent/ThreadFactory;)Lrx/if;
    .locals 1

    const-string v0, "threadFactory == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/schedulers/if;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/if;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static new(Ljava/util/concurrent/ThreadFactory;)Lrx/if;
    .locals 1

    const-string v0, "threadFactory == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/schedulers/do;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/do;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static try()Lrx/if;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/util/case;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/case;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/kp1;->case(Ljava/util/concurrent/ThreadFactory;)Lrx/if;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public break()Lrx/if;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public catch(Lrx/functions/Action0;)Lrx/functions/Action0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public else()Lrx/if;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public this()Lrx/if;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
