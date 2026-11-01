.class final Lcom/google/common/util/concurrent/try$try;
.super Lcom/google/common/util/concurrent/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/try$try$new;
    }
.end annotation


# instance fields
.field private final import:Ljava/util/concurrent/locks/ReentrantLock;

.field private final native:Ljava/lang/Runnable;

.field public final synthetic public:Lcom/google/common/util/concurrent/try;

.field private volatile throw:Ljava/util/concurrent/Future;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile while:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try;->import:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance p1, Lcom/google/common/util/concurrent/try$try$new;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/try$try$new;-><init>(Lcom/google/common/util/concurrent/try$try;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try;->native:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/try;Lcom/google/common/util/concurrent/try$do;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/try$try;-><init>(Lcom/google/common/util/concurrent/try;)V

    return-void
.end method

.method public static synthetic import(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/try$try;->throw:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public static synthetic native(Lcom/google/common/util/concurrent/try$try;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try;->throw:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method public static synthetic public(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/try$try;->while:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic return(Lcom/google/common/util/concurrent/try$try;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/try$try;->native:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/try$try;->import:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method public final case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try;->throw:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try;->while:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/try$try$for;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/try$try$for;-><init>(Lcom/google/common/util/concurrent/try$try;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try;->for()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/try$try$do;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/try$try$do;-><init>(Lcom/google/common/util/concurrent/try$try;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/implements;->native(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/try$try;->while:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try;->while:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/try$try$if;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/try$try$if;-><init>(Lcom/google/common/util/concurrent/try$try;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
