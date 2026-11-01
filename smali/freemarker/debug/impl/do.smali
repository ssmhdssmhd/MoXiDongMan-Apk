.class Lfreemarker/debug/impl/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/do$if;
    }
.end annotation


# static fields
.field private static final case:Lfreemarker/log/if;

.field private static final else:Ljava/util/Random;


# instance fields
.field private final do:[B

.field private final for:Ljava/io/Serializable;

.field private final if:I

.field private new:Z

.field private try:Ljava/net/ServerSocket;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.debug.server"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/do;->case:Lfreemarker/log/if;

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/do;->else:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfreemarker/debug/impl/do;->new:Z

    const-string v0, "freemarker.debug.port"

    const/16 v1, 0x1b63

    .line 3
    invoke-static {v0, v1}, Lfreemarker/template/utility/const;->do(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lfreemarker/debug/impl/do;->if:I

    :try_start_0
    const-string v0, "freemarker.debug.password"

    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfreemarker/debug/impl/do;->do:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iput-object p1, p0, Lfreemarker/debug/impl/do;->for:Ljava/io/Serializable;

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Landroid/support/v4/kb2;

    invoke-direct {v0, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic do(Lfreemarker/debug/impl/do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/debug/impl/do;->else()V

    return-void
.end method

.method private else()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lfreemarker/debug/impl/do;->if:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lfreemarker/debug/impl/do;->try:Ljava/net/ServerSocket;

    .line 2
    :goto_0
    iget-boolean v0, p0, Lfreemarker/debug/impl/do;->new:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/debug/impl/do;->try:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfreemarker/debug/impl/do$if;

    invoke-direct {v2, p0, v0}, Lfreemarker/debug/impl/do$if;-><init>(Lfreemarker/debug/impl/do;Ljava/net/Socket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lfreemarker/debug/impl/do;->case:Lfreemarker/log/if;

    const-string v2, "Debugger server shut down."

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic for(Lfreemarker/debug/impl/do;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/debug/impl/do;->do:[B

    return-object p0
.end method

.method public static synthetic if()Ljava/util/Random;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/do;->else:Ljava/util/Random;

    return-object v0
.end method

.method public static synthetic new(Lfreemarker/debug/impl/do;)Ljava/io/Serializable;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/debug/impl/do;->for:Ljava/io/Serializable;

    return-object p0
.end method

.method public static synthetic try()Lfreemarker/log/if;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/do;->case:Lfreemarker/log/if;

    return-object v0
.end method


# virtual methods
.method public case()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfreemarker/debug/impl/do$do;

    invoke-direct {v1, p0}, Lfreemarker/debug/impl/do$do;-><init>(Lfreemarker/debug/impl/do;)V

    const-string v2, "FreeMarker Debugger Server Acceptor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public goto()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/debug/impl/do;->new:Z

    .line 2
    iget-object v0, p0, Lfreemarker/debug/impl/do;->try:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lfreemarker/debug/impl/do;->case:Lfreemarker/log/if;

    const-string v2, "Unable to close server socket."

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
