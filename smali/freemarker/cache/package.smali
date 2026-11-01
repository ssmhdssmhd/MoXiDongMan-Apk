.class public Lfreemarker/cache/package;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/cache/TemplateLoader;


# static fields
.field private static final try:Lfreemarker/log/if;


# instance fields
.field private final do:Ljavax/servlet/ServletContext;

.field private for:Ljava/lang/Boolean;

.field private final if:Ljava/lang/String;

.field private new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.cache"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/package;->try:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/cache/package;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lfreemarker/cache/package;->new:Z

    const-string v0, "servletContext"

    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "subdirPath"

    .line 5
    invoke-static {v0, p2}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_1
    iput-object p2, p0, Lfreemarker/cache/package;->if:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lfreemarker/cache/package;->do:Ljavax/servlet/ServletContext;

    return-void
.end method

.method private if()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/cache/package;->do:Ljavax/servlet/ServletContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getContextPath"

    sget-object v2, Landroid/support/v4/vm;->if:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/cache/package;->do:Ljavax/servlet/ServletContext;

    sget-object v2, Landroid/support/v4/vm;->do:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "[can\'t query before Serlvet 2.5]"

    return-object v0
.end method


# virtual methods
.method public closeTemplateSource(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lfreemarker/cache/finally;

    invoke-virtual {p1}, Lfreemarker/cache/finally;->do()V

    :goto_0
    return-void
.end method

.method public do()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/package;->new:Z

    return v0
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/cache/package;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lfreemarker/cache/package;->new:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lfreemarker/cache/package;->do:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    iget-object v1, p0, Lfreemarker/cache/package;->do:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lfreemarker/cache/finally;

    invoke-virtual {p0}, Lfreemarker/cache/package;->for()Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfreemarker/cache/finally;-><init>(Ljava/net/URL;Ljava/lang/Boolean;)V

    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    .line 8
    sget-object v2, Lfreemarker/cache/package;->try:Lfreemarker/log/if;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public for()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/package;->for:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    check-cast p1, Lfreemarker/cache/finally;

    invoke-virtual {p1}, Lfreemarker/cache/finally;->new()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    check-cast p1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    check-cast p1, Lfreemarker/cache/finally;

    .line 4
    invoke-virtual {p1}, Lfreemarker/cache/finally;->if()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public new(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/cache/package;->new:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfreemarker/cache/public;->do(Lfreemarker/cache/TemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(subdirPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/cache/package;->if:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", servletContext={contextPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Lfreemarker/cache/package;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/cache/package;->do:Ljavax/servlet/ServletContext;

    .line 4
    invoke-interface {v1}, Ljavax/servlet/ServletContext;->getServletContextName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/cache/package;->for:Ljava/lang/Boolean;

    return-void
.end method
