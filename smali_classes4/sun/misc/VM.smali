.class public Lsun/misc/VM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JVMTI_THREAD_STATE_ALIVE:I = 0x1

.field private static final JVMTI_THREAD_STATE_BLOCKED_ON_MONITOR_ENTER:I = 0x400

.field private static final JVMTI_THREAD_STATE_RUNNABLE:I = 0x4

.field private static final JVMTI_THREAD_STATE_TERMINATED:I = 0x2

.field private static final JVMTI_THREAD_STATE_WAITING_INDEFINITELY:I = 0x10

.field private static final JVMTI_THREAD_STATE_WAITING_WITH_TIMEOUT:I = 0x20

.field public static final STATE_GREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_YELLOW:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static allowArraySyntax:Z = false

.field private static allowGetCallerClass:Z = true

.field private static volatile booted:Z = false

.field private static defaultAllowArraySyntax:Z = false

.field private static directMemory:J = 0x4000000L

.field private static volatile finalRefCount:I

.field private static pageAlignDirectMemory:Z

.field private static volatile peakFinalRefCount:I

.field private static final savedProps:Ljava/util/Properties;

.field private static suspended:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 2
    sput v0, Lsun/misc/VM;->finalRefCount:I

    .line 3
    sput v0, Lsun/misc/VM;->peakFinalRefCount:I

    .line 4
    invoke-static {}, Lsun/misc/VM;->initialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinalRefCount(I)V
    .locals 1

    .line 1
    sget v0, Lsun/misc/VM;->finalRefCount:I

    add-int/2addr v0, p0

    sput v0, Lsun/misc/VM;->finalRefCount:I

    .line 2
    sget p0, Lsun/misc/VM;->finalRefCount:I

    sget v0, Lsun/misc/VM;->peakFinalRefCount:I

    if-le p0, v0, :cond_0

    .line 3
    sget p0, Lsun/misc/VM;->finalRefCount:I

    sput p0, Lsun/misc/VM;->peakFinalRefCount:I

    :cond_0
    return-void
.end method

.method public static allowArraySyntax()Z
    .locals 1

    .line 1
    sget-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    return v0
.end method

.method public static allowGetCallerClass()Z
    .locals 1

    .line 1
    sget-boolean v0, Lsun/misc/VM;->allowGetCallerClass:Z

    return v0
.end method

.method public static allowThreadSuspension(Ljava/lang/ThreadGroup;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->allowThreadSuspension(Z)Z

    move-result p0

    return p0
.end method

.method public static asChange(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static asChange_otherthread(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static booted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lsun/misc/VM;->booted:Z

    return-void
.end method

.method public static getFinalRefCount()I
    .locals 1

    .line 1
    sget v0, Lsun/misc/VM;->finalRefCount:I

    return v0
.end method

.method public static getPeakFinalRefCount()I
    .locals 1

    .line 1
    sget v0, Lsun/misc/VM;->peakFinalRefCount:I

    return v0
.end method

.method public static getSavedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should be non-empty if initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method private static native initialize()V
.end method

.method public static initializeOSEnvironment()V
    .locals 1

    .line 1
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsun/misc/OSEnvironment;->initialize()V

    :cond_0
    return-void
.end method

.method public static isBooted()Z
    .locals 1

    .line 1
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    return v0
.end method

.method public static isDirectMemoryPageAligned()Z
    .locals 1

    .line 1
    sget-boolean v0, Lsun/misc/VM;->pageAlignDirectMemory:Z

    return v0
.end method

.method public static native latestUserDefinedLoader()Ljava/lang/ClassLoader;
.end method

.method public static maxDirectMemory()J
    .locals 2

    .line 1
    sget-wide v0, Lsun/misc/VM;->directMemory:J

    return-wide v0
.end method

.method public static registerVMNotification(Lsun/misc/VMNotification;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static saveAndRemoveProperties(Ljava/util/Properties;)V
    .locals 5

    .line 1
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    if-nez v0, :cond_6

    .line 2
    sget-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    const-string v0, "sun.nio.MaxDirectMemorySize"

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "-1"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lsun/misc/VM;->directMemory:J

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 7
    sput-wide v0, Lsun/misc/VM;->directMemory:J

    :cond_1
    :goto_0
    const-string v0, "sun.nio.PageAlignDirectMemory"

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 10
    sput-boolean v1, Lsun/misc/VM;->pageAlignDirectMemory:Z

    :cond_2
    const-string v0, "sun.lang.ClassLoader.allowArraySyntax"

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    sget-boolean v0, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    const-string v0, "jdk.reflect.allowGetCallerClass"

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "jdk.logging.allowStackWalkSearch"

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    sput-boolean v1, Lsun/misc/VM;->allowGetCallerClass:Z

    const-string v0, "java.lang.Integer.IntegerCache.high"

    .line 17
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sun.zip.disableMemoryMapping"

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sun.java.launcher.diag"

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "System initialization has completed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static suspendThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    return v0
.end method

.method public static threadsSuspended()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-boolean v0, Lsun/misc/VM;->suspended:Z

    return v0
.end method

.method public static toThreadState(I)Ljava/lang/Thread$State;
    .locals 1

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    .line 1
    sget-object p0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object p0

    :cond_0
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_1

    .line 2
    sget-object p0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    return-object p0

    :cond_1
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2

    .line 3
    sget-object p0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    return-object p0

    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 4
    sget-object p0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    return-object p0

    :cond_3
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    .line 5
    sget-object p0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    return-object p0

    :cond_4
    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_5

    .line 6
    sget-object p0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object p0
.end method

.method public static unsuspendSomeThreads()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static unsuspendThreads()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    return-void
.end method
