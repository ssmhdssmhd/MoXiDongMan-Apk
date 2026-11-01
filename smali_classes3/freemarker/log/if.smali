.class public abstract Lfreemarker/log/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:Ljava/lang/String; = "Avalon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final case:Ljava/lang/String; = "none"

.field public static final catch:I = 0x3

.field public static final class:Ljava/lang/String; = "Log4j"

.field public static final const:I = 0x4

.field private static final default:Ljava/util/Map;

.field public static final do:Ljava/lang/String; = "org.freemarker.loggerLibrary"

.field public static final else:I = 0x1

.field public static final final:Ljava/lang/String; = "CommonsLogging"

.field private static final for:I = -0x1

.field public static final goto:Ljava/lang/String; = "JUL"

.field public static final if:I = -0x1

.field private static final import:Ljava/lang/String; = "org.apache.log4j.FileAppender"

.field private static final native:Ljava/lang/String; = "freemarker.log._Log4jOverSLF4JTester"

.field public static final new:Ljava/lang/String; = "auto"

.field private static final public:[Ljava/lang/String;

.field private static return:I = 0x0

.field private static static:Lfreemarker/log/LoggerFactory; = null

.field public static final super:I = 0x5

.field private static switch:Z = false

.field public static final this:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final throw:Ljava/lang/String; = "SLF4J"

.field private static throws:Ljava/lang/String; = null

.field public static final try:I = 0x0

.field private static final while:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "JUL"

    const-string v2, "org.apache.log.Logger"

    const-string v3, "Avalon"

    const-string v4, "org.apache.log4j.Logger"

    const-string v5, "Log4j"

    const-string v6, "org.apache.commons.logging.Log"

    const-string v7, "CommonsLogging"

    const-string v8, "org.slf4j.Logger"

    const-string v9, "SLF4J"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/log/if;->public:[Ljava/lang/String;

    .line 2
    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 3
    sput-object v0, Lfreemarker/log/if;->throws:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/log/if;->default:Ljava/util/Map;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/String;)Lfreemarker/log/if;
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/log/if;->throws:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfreemarker/log/if;->throws:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    sget-object v0, Lfreemarker/log/if;->default:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/log/if;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lfreemarker/log/if;->try(Z)V

    .line 6
    sget-object v1, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    invoke-interface {v1, p0}, Lfreemarker/log/LoggerFactory;->getLogger(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v1

    .line 7
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static catch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "\"."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lfreemarker/log/if$do;

    invoke-direct {v2, p0}, Lfreemarker/log/if$do;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read system property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lfreemarker/log/if;->return(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 3
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permissions to read system property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/log/if;->switch(Ljava/lang/String;)V

    return-object v1
.end method

.method private static class()Z
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Lfreemarker/log/if;->goto(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lfreemarker/log/if;->goto(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "org.apache.log4j.FileAppender"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    :try_start_2
    const-string v0, "freemarker.log.else"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "test"

    new-array v3, v1, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    return v1
.end method

.method public static default(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lfreemarker/log/if;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    sput-object p0, Lfreemarker/log/if;->throws:Ljava/lang/String;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static do(I)Lfreemarker/log/LoggerFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    const/4 v1, 0x5

    :goto_0
    if-lt v1, v0, :cond_2

    .line 1
    invoke-static {v1}, Lfreemarker/log/if;->super(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2
    invoke-static {}, Lfreemarker/log/if;->class()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    .line 3
    :cond_1
    :try_start_0
    invoke-static {v1}, Lfreemarker/log/if;->if(I)Lfreemarker/log/LoggerFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error when initializing logging for \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v1}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3, v2}, Lfreemarker/log/if;->return(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    const-string p0, "Auto detecton couldn\'t set up any logger libraries; FreeMarker logging suppressed."

    .line 7
    invoke-static {p0}, Lfreemarker/log/if;->switch(Ljava/lang/String;)V

    .line 8
    new-instance p0, Lfreemarker/log/goto;

    invoke-direct {p0}, Lfreemarker/log/goto;-><init>()V

    return-object p0

    .line 9
    :cond_3
    invoke-static {p0}, Lfreemarker/log/if;->if(I)Lfreemarker/log/LoggerFactory;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized extends(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-class v0, Lfreemarker/log/if;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lfreemarker/log/if;->do(I)Lfreemarker/log/LoggerFactory;

    move-result-object v1

    sput-object v1, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    .line 2
    sput p0, Lfreemarker/log/if;->return:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static finally(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2
    :catchall_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static goto(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lfreemarker/log/if;->public:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static if(I)Lfreemarker/log/LoggerFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/log/if;->goto(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 3
    invoke-static {p0}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freemarker.log._"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LoggerFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/log/LoggerFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error when creating logger factory for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 7
    new-instance p0, Lfreemarker/log/try;

    invoke-direct {p0}, Lfreemarker/log/try;-><init>()V

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 8
    new-instance p0, Lfreemarker/log/goto;

    invoke-direct {p0}, Lfreemarker/log/goto;-><init>()V

    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bug"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static return(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1}, Lfreemarker/log/if;->static(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static static(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-class v0, Lfreemarker/log/if;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v1, Lfreemarker/log/goto;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v0, "freemarker.logger"

    .line 4
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lfreemarker/log/if;->case(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    if-nez v2, :cond_4

    .line 7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_3

    const-string p0, "ERROR"

    goto :goto_3

    :cond_3
    const-string p0, "WARN"

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Lfreemarker/log/LoggerFactory;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 10
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\tException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lfreemarker/log/if;->finally(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 13
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\tCaused by: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lfreemarker/log/if;->finally(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static super(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static switch(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1}, Lfreemarker/log/if;->static(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static this(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "auto"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "none"

    return-object p0

    .line 1
    :cond_1
    sget-object v0, Lfreemarker/log/if;->public:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static throws(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lfreemarker/log/if;

    const/4 v1, -0x1

    if-lt p0, v1, :cond_5

    const/4 v1, 0x5

    if-gt p0, v1, :cond_5

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    sget v3, Lfreemarker/log/if;->return:I

    if-eq p0, v3, :cond_4

    .line 5
    :cond_1
    invoke-static {v2}, Lfreemarker/log/if;->try(Z)V

    .line 6
    sget-boolean v2, Lfreemarker/log/if;->switch:Z

    if-eqz v2, :cond_3

    sget-object v2, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget v1, Lfreemarker/log/if;->return:I

    if-eq p0, v1, :cond_4

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".selectLoggerLibrary(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p0}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\") call, because the \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "org.freemarker.loggerLibrary"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" system property is set to \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lfreemarker/log/if;->return:I

    .line 10
    invoke-static {p0}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lfreemarker/log/if;->switch(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    sget v2, Lfreemarker/log/if;->return:I

    .line 13
    invoke-static {p0}, Lfreemarker/log/if;->extends(I)V

    .line 14
    sget-object v3, Lfreemarker/log/if;->default:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logger library was already set earlier to \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v2}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"; change to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p0}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" won\'t effect loggers created earlier."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lfreemarker/log/if;->switch(Ljava/lang/String;)V

    .line 19
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 20
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Library enum value out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static try(Z)V
    .locals 9

    .line 1
    sget-object v0, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lfreemarker/log/if;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lfreemarker/log/if;->static:Lfreemarker/log/LoggerFactory;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "org.freemarker.loggerLibrary"

    .line 4
    invoke-static {v1}, Lfreemarker/log/if;->catch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 6
    :cond_2
    invoke-static {v5}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_0
    const/4 v7, 0x5

    if-gt v5, v7, :cond_4

    if-eqz v6, :cond_2

    :cond_4
    if-nez v6, :cond_5

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignored invalid \"org.freemarker.loggerLibrary\" system property value: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfreemarker/log/if;->switch(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 8
    monitor-exit v0

    return-void

    :cond_5
    if-eqz v6, :cond_7

    move v3, v5

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_7

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 10
    :cond_7
    :goto_1
    :try_start_1
    invoke-static {v3}, Lfreemarker/log/if;->extends(I)V

    if-eqz v1, :cond_b

    .line 11
    sput-boolean v4, Lfreemarker/log/if;->switch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v5

    if-eqz p0, :cond_9

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    .line 12
    :cond_9
    :goto_2
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t set up logger for \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v3}, Lfreemarker/log/if;->this(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a

    const-string v1, "; logging disabled"

    goto :goto_3

    :cond_a
    const-string v1, "."

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {p0, v5}, Lfreemarker/log/if;->return(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_b

    .line 15
    :try_start_3
    invoke-static {v2}, Lfreemarker/log/if;->extends(I)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_0
    move-exception p0

    .line 16
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bug"

    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_b
    :goto_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public abstract case(Ljava/lang/String;)V
.end method

.method public abstract const(Ljava/lang/String;)V
.end method

.method public abstract else(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract final(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract for(Ljava/lang/String;)V
.end method

.method public abstract import()Z
.end method

.method public abstract native()Z
.end method

.method public abstract new(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract package(Ljava/lang/String;)V
.end method

.method public abstract private(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract public()Z
.end method

.method public abstract throw()Z
.end method

.method public abstract while()Z
.end method
