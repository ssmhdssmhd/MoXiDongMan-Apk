.class public Lfreemarker/cache/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/cache/TemplateLoader;


# static fields
.field private static final break:Lfreemarker/log/if;

.field private static final case:Z

.field private static final else:I = 0x32

.field private static final goto:I = 0x3e8

.field private static final this:Z

.field public static try:Ljava/lang/String; = "org.freemarker.emulateCaseSensitiveFileSystem"


# instance fields
.field public final do:Ljava/io/File;

.field private for:Z

.field private final if:Ljava/lang/String;

.field private new:Lfreemarker/cache/break;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "org.freemarker.emulateCaseSensitiveFileSystem"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sput-boolean v0, Lfreemarker/cache/else;->case:Z

    .line 4
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lfreemarker/cache/else;->this:Z

    const-string v0, "freemarker.cache"

    .line 5
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/else;->break:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Lfreemarker/template/utility/const;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lfreemarker/cache/else;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/cache/else;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_0
    new-instance v0, Lfreemarker/cache/else$do;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/cache/else$do;-><init>(Lfreemarker/cache/else;Ljava/io/File;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 5
    aget-object p2, p1, p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lfreemarker/cache/else;->do:Ljava/io/File;

    const/4 p2, 0x1

    .line 6
    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lfreemarker/cache/else;->if:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lfreemarker/cache/else;->else()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/cache/else;->this(Z)V
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public static synthetic do()Z
    .locals 1

    .line 1
    sget-boolean v0, Lfreemarker/cache/else;->this:Z

    return v0
.end method

.method public static synthetic for(Lfreemarker/cache/else;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/cache/else;->for:Z

    return p0
.end method

.method private goto(Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    invoke-virtual {v2, v0}, Lfreemarker/cache/break;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    return v3

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7
    iget-object v2, p0, Lfreemarker/cache/else;->do:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lfreemarker/cache/else;->goto(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 10
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 11
    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 12
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_6

    .line 13
    aget-object v5, v1, v2

    .line 14
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    sget-object p1, Lfreemarker/cache/else;->break:Lfreemarker/log/if;

    invoke-virtual {p1}, Lfreemarker/log/if;->throw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emulating file-not-found because of letter case differences to the real file, for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    :cond_4
    return v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_6
    iget-object p1, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    monitor-enter p1

    .line 18
    :try_start_1
    iget-object v1, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lfreemarker/cache/break;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    monitor-exit p1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static synthetic if(Lfreemarker/cache/else;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/cache/else;->if:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic new(Lfreemarker/cache/else;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/cache/else;->goto(Ljava/io/File;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/else;->for:Z

    return v0
.end method

.method public closeTemplateSource(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public else()Z
    .locals 1

    .line 1
    sget-boolean v0, Lfreemarker/cache/else;->case:Z

    return v0
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/cache/else$if;

    invoke-direct {v0, p0, p1}, Lfreemarker/cache/else$if;-><init>(Lfreemarker/cache/else;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/cache/else$for;

    invoke-direct {v0, p0, p1}, Lfreemarker/cache/else$for;-><init>(Lfreemarker/cache/else;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/cache/else$new;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/cache/else$new;-><init>(Lfreemarker/cache/else;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Reader;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public this(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lfreemarker/cache/break;

    const/16 v1, 0x32

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lfreemarker/cache/break;-><init>(II)V

    iput-object v0, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/cache/else;->new:Lfreemarker/cache/break;

    .line 4
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lfreemarker/cache/else;->for:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfreemarker/cache/public;->do(Lfreemarker/cache/TemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(baseDir=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/cache/else;->do:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/cache/else;->if:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", canonicalBasePath=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lfreemarker/cache/else;->if:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfreemarker/cache/else;->for:Z

    if-eqz v1, :cond_1

    const-string v3, ", emulateCaseSensitiveFileSystem=true"

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/else;->do:Ljava/io/File;

    return-object v0
.end method
