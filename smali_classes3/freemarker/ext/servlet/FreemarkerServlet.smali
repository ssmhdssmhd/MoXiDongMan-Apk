.class public Lfreemarker/ext/servlet/FreemarkerServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/servlet/FreemarkerServlet$case;,
        Lfreemarker/ext/servlet/FreemarkerServlet$else;,
        Lfreemarker/ext/servlet/FreemarkerServlet$try;,
        Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;,
        Lfreemarker/ext/servlet/FreemarkerServlet$if;,
        Lfreemarker/ext/servlet/FreemarkerServlet$new;,
        Lfreemarker/ext/servlet/FreemarkerServlet$do;,
        Lfreemarker/ext/servlet/FreemarkerServlet$for;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = ".freemarker.Request"

.field private static final B:Ljava/lang/String; = ".freemarker.RequestParameters"

.field private static final C:Ljava/lang/String; = ".freemarker.Session"

.field private static final D:Ljava/lang/String; = ".freemarker.Application"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final E:Ljava/lang/String; = ".freemarker.JspTaglibs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final F:Ljava/lang/String; = "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

.field private static final G:Ljava/lang/String;

.field private static final a:Ljava/lang/String; = "rethrow"

.field public static final abstract:Ljava/lang/String; = "ExceptionOnMissingTemplate"

.field private static final b:Ljava/lang/String; = "debug"

.field private static final c:Ljava/lang/String; = "htmlDebug"

.field public static final continue:Ljava/lang/String; = "ClasspathTlds"

.field private static final d:Ljava/lang/String; = "ignore"

.field public static final default:Ljava/lang/String; = "OverrideResponseContentType"

.field private static final e:Ljava/lang/String; = "debug"

.field public static final extends:Ljava/lang/String; = "ResponseCharacterEncoding"

.field private static final f:Lfreemarker/ext/servlet/FreemarkerServlet$if;

.field public static final finally:Ljava/lang/String; = "OverrideResponseLocale"

.field public static final g:Ljava/lang/String; = "never"

.field public static final h:Ljava/lang/String; = "always"

.field public static final i:Ljava/lang/String; = "whenTemplateHasMimeType"

.field private static final implements:Ljava/lang/String; = "beans"

.field private static final instanceof:Ljava/lang/String; = "jython"

.field private static final interface:Ljava/lang/String; = "DefaultEncoding"

.field public static final j:Ljava/lang/String; = "fromTemplate"

.field public static final k:Ljava/lang/String; = "legacy"

.field public static final l:Ljava/lang/String; = "doNotSet"

.field public static final m:Ljava/lang/String; = "force "

.field public static final n:Ljava/lang/String; = "org.freemarker.jsp.metaInfTldSources"

.field private static final native:Lfreemarker/log/if;

.field public static final o:Ljava/lang/String; = "org.freemarker.jsp.classpathTlds"

.field public static final p:Ljava/lang/String; = "webInfPerLibJars"

.field public static final package:Ljava/lang/String; = "BufferSize"

.field public static final private:Ljava/lang/String; = "MetaInfTldSources"

.field private static final protected:Ljava/lang/String; = "ObjectWrapper"

.field private static final public:Lfreemarker/log/if;

.field public static final q:Ljava/lang/String; = "classpath"

.field public static final r:Ljava/lang/String; = "clear"

.field public static final return:J = -0x21dd63e17889c2afL

.field public static final s:Ljava/lang/String; = "Request"

.field public static final static:Ljava/lang/String; = "TemplatePath"

.field private static final strictfp:Ljava/lang/String; = "Debug"

.field public static final switch:Ljava/lang/String; = "NoCache"

.field private static final synchronized:Ljava/lang/String; = "TemplateExceptionHandler"

.field public static final t:Ljava/lang/String; = "include_page"

.field public static final throws:Ljava/lang/String; = "ContentType"

.field private static final transient:Ljava/lang/String; = "simple"

.field public static final u:Ljava/lang/String; = "__FreeMarkerServlet.Request__"

.field public static final v:Ljava/lang/String; = "RequestParameters"

.field private static final volatile:Ljava/lang/String; = "TemplateDelay"

.field public static final w:Ljava/lang/String; = "Session"

.field public static final x:Ljava/lang/String; = "Application"

.field public static final y:Ljava/lang/String; = "__FreeMarkerServlet.Application__"

.field public static final z:Ljava/lang/String; = "JspTaglibs"


# instance fields
.field private break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

.field private case:Lfreemarker/template/do;

.field private catch:Ljava/nio/charset/Charset;

.field private class:Lfreemarker/ext/servlet/FreemarkerServlet$case;

.field private const:Ljava/util/List;

.field private do:Ljava/lang/String;

.field private else:Lfreemarker/template/ObjectWrapper;

.field private final:Ljava/util/List;

.field private for:Ljava/lang/Integer;

.field private goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

.field private if:Z

.field private import:Z

.field private new:Z

.field private super:Ljava/lang/Object;

.field private this:Lfreemarker/ext/servlet/FreemarkerServlet$try;

.field private throw:Lfreemarker/ext/servlet/else;

.field public try:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private while:Lfreemarker/ext/jsp/TaglibFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "freemarker.servlet"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    const-string v0, "freemarker.runtime"

    .line 2
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->public:Lfreemarker/log/if;

    .line 3
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$if;

    const-string v1, "text/html"

    invoke-direct {v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$if;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->f:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    .line 4
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 6
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->final()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$try;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$try;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->public(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->this:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    .line 4
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    .line 5
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$case;->ALWAYS:Lfreemarker/ext/servlet/FreemarkerServlet$case;

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->class:Lfreemarker/ext/servlet/FreemarkerServlet$case;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->super:Ljava/lang/Object;

    return-void
.end method

.method private default()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->else:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v1}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->import:Z

    if-nez v0, :cond_1

    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->public()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->import:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->import:Z

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".wrapper != config.getObjectWrapper(); possibly the result of incorrect extension of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private extends(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lfreemarker/template/TemplateException;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->public:Lfreemarker/log/if;

    invoke-virtual {v0, p1, p2}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    invoke-virtual {v0, p1, p2}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1, p2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :try_start_0
    invoke-virtual {v0, p2}, Ljavax/servlet/ServletException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    throw v0
.end method

.method private finally(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lfreemarker/ext/servlet/case;->new(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "webInfPerLibJars"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory$native;->do:Lfreemarker/ext/jsp/TaglibFactory$native;

    goto/16 :goto_1

    :cond_0
    const-string v3, "classpath"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$for;

    const/16 v3, 0x20

    const-string v4, ".*"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/ext/jsp/TaglibFactory$for;-><init>(Ljava/util/regex/Pattern;)V

    goto :goto_1

    :cond_1
    const-string v3, ":"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    new-instance v3, Lfreemarker/ext/jsp/TaglibFactory$for;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v3, v2}, Lfreemarker/ext/jsp/TaglibFactory$for;-><init>(Ljava/util/regex/Pattern;)V

    move-object v2, v3

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Empty regular expression after \"classpath:\""

    invoke-direct {p1, v0, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 15
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid \"classpath\" value syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    const-string v3, "clear"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory$try;->do:Lfreemarker/ext/jsp/TaglibFactory$try;

    :goto_1
    if-nez v1, :cond_5

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :cond_6
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item has no recognized source type prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_7
    return-object v1
.end method

.method private import(Lfreemarker/template/static;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/t;->instanceof()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lfreemarker/template/static;->e1()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private package(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "B"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    const-string v1, "K"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "KB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "KIB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "M"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "MB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "MIB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    :goto_2
    const/high16 v1, 0x100000

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v1, 0x400

    :cond_7
    :goto_4
    int-to-long v2, v2

    int-to-long v0, v1

    mul-long v2, v2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_9

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v2, v0

    if-gtz p1, :cond_8

    long-to-int p1, v2

    return p1

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size can\'t bigger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size can\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private protected(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->if:Z

    if-eqz v0, :cond_0

    const-string v0, "Cache-Control"

    const-string v1, "no-store, no-cache, must-revalidate, post-check=0, pre-check=0"

    .line 2
    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Pragma"

    const-string v1, "no-cache"

    .line 3
    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->G:Ljava/lang/String;

    const-string v1, "Expires"

    invoke-interface {p1, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private public(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 2
    invoke-interface {v3}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;->getInitParamValue()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "}"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "${"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a one of the enumeration values: "

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    array-length p1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_4

    aget-object v4, p2, v3

    if-nez v2, :cond_3

    const-string v5, ", "

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 12
    :goto_3
    invoke-interface {v4}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;->getInitParamValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private return()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/servlet/FreemarkerServlet$for;,
            Lfreemarker/ext/servlet/FreemarkerServlet$new;,
            Lfreemarker/ext/servlet/FreemarkerServlet$do;
        }
    .end annotation

    const-string v0, "template_exception_handler"

    const-string v1, "template_update_delay"

    const-string v2, "default_encoding"

    const-string v3, "TemplateDelay"

    const-string v4, "DefaultEncoding"

    const-string v5, "TemplateExceptionHandler"

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->do()Lfreemarker/template/do;

    move-result-object v6

    iput-object v6, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    const-string v6, "incompatible_improvements"

    .line 2
    invoke-virtual {p0, v6}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3
    :try_start_0
    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v8, v6, v7}, Lfreemarker/template/do;->B0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$for;

    invoke-direct {v1, v6, v7, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$for;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v7}, Lfreemarker/template/do;->l2()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    sget-object v8, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v7, v8}, Lfreemarker/template/do;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    .line 7
    :cond_1
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v7}, Lfreemarker/template/do;->h2()Z

    move-result v7

    if-nez v7, :cond_2

    .line 8
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lfreemarker/template/do;->u0(Z)V

    .line 9
    :cond_2
    sget-object v7, Lfreemarker/ext/servlet/FreemarkerServlet;->f:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    iput-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    .line 10
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->case()Lfreemarker/template/ObjectWrapper;

    move-result-object v7

    iput-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->else:Lfreemarker/template/ObjectWrapper;

    .line 11
    sget-object v7, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    invoke-virtual {v7}, Lfreemarker/log/if;->throw()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using object wrapper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->else:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->else:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {v7, v8}, Lfreemarker/template/do;->x0(Lfreemarker/template/ObjectWrapper;)V

    const-string v7, "TemplatePath"

    .line 14
    invoke-virtual {p0, v7}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->do:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 15
    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v8}, Lfreemarker/template/do;->m2()Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "class://"

    .line 16
    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->do:Ljava/lang/String;

    .line 17
    :cond_4
    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->do:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 18
    :try_start_1
    iget-object v9, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {p0, v8}, Lfreemarker/ext/servlet/FreemarkerServlet;->this(Ljava/lang/String;)Lfreemarker/cache/TemplateLoader;

    move-result-object v8

    invoke-virtual {v9, v8}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$for;

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->do:Ljava/lang/String;

    invoke-direct {v1, v7, v2, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$for;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->for()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->const:Ljava/util/List;

    .line 21
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->if()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->final:Ljava/util/List;

    .line 22
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v8

    invoke-interface {v8}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v8

    .line 23
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    const-string v10, "ContentType"

    if-eqz v9, :cond_21

    .line 24
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v9}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_20

    if-eqz v11, :cond_1f

    :try_start_2
    const-string v12, "ObjectWrapper"

    .line 26
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "object_wrapper"

    .line 27
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 28
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 29
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    .line 30
    :cond_7
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 31
    invoke-virtual {p0, v2}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    .line 32
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v10, v11}, Lfreemarker/template/do;->J2(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_8
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$do;

    invoke-direct {v0, v2, v4}, Lfreemarker/ext/servlet/FreemarkerServlet$do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_9
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 35
    invoke-virtual {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$do; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v10, :cond_a

    .line 36
    :try_start_3
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Lfreemarker/template/do;->j3(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$do; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_2
    nop

    goto :goto_2

    .line 37
    :cond_a
    :try_start_4
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$do;

    invoke-direct {v0, v1, v3}, Lfreemarker/ext/servlet/FreemarkerServlet$do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_b
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_4
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$do; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v13, "debug"

    if-eqz v12, :cond_11

    .line 39
    :try_start_5
    invoke-virtual {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_10

    const-string v10, "rethrow"

    .line 40
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 41
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->RETHROW_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/do;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_2

    .line 42
    :cond_c
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 43
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/do;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_2

    :cond_d
    const-string v10, "htmlDebug"

    .line 44
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 45
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/do;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_2

    :cond_e
    const-string v10, "ignore"

    .line 46
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 47
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->IGNORE_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/do;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_2

    .line 48
    :cond_f
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$for;

    const-string v1, "Not one of the supported values."

    invoke-direct {v0, v5, v11, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$for;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_10
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$do;

    invoke-direct {v1, v0, v5}, Lfreemarker/ext/servlet/FreemarkerServlet$do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string v12, "NoCache"

    .line 50
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 51
    invoke-static {v11}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->if:Z

    goto/16 :goto_2

    :cond_12
    const-string v12, "BufferSize"

    .line 52
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 53
    invoke-direct {p0, v11}, Lfreemarker/ext/servlet/FreemarkerServlet;->package(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->for:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 54
    :cond_13
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$do; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v14, "Debug"

    if-eqz v12, :cond_15

    .line 55
    :try_start_6
    invoke-virtual {p0, v14}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_14

    .line 56
    invoke-static {v11}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->try:Z

    goto/16 :goto_2

    .line 57
    :cond_14
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$do;

    invoke-direct {v0, v14, v13}, Lfreemarker/ext/servlet/FreemarkerServlet$do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_15
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 59
    invoke-static {v11}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->try:Z

    goto/16 :goto_2

    .line 60
    :cond_16
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 61
    new-instance v10, Lfreemarker/ext/servlet/FreemarkerServlet$if;

    invoke-direct {v10, v11}, Lfreemarker/ext/servlet/FreemarkerServlet$if;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    goto/16 :goto_2

    :cond_17
    const-string v10, "OverrideResponseContentType"

    .line 62
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 63
    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$try;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$try;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lfreemarker/ext/servlet/FreemarkerServlet;->public(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v10

    check-cast v10, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->this:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    goto/16 :goto_2

    :cond_18
    const-string v10, "ResponseCharacterEncoding"

    .line 64
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 65
    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$else;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$else;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lfreemarker/ext/servlet/FreemarkerServlet;->public(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v10

    check-cast v10, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    .line 66
    sget-object v12, Lfreemarker/ext/servlet/FreemarkerServlet$else;->FORCE_CHARSET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-ne v10, v12, :cond_6

    const/4 v10, 0x6

    .line 67
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 68
    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->catch:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_19
    const-string v10, "OverrideResponseLocale"

    .line 69
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 70
    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$case;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$case;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lfreemarker/ext/servlet/FreemarkerServlet;->public(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v10

    check-cast v10, Lfreemarker/ext/servlet/FreemarkerServlet$case;

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->class:Lfreemarker/ext/servlet/FreemarkerServlet$case;

    goto/16 :goto_2

    :cond_1a
    const-string v10, "ExceptionOnMissingTemplate"

    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 72
    invoke-static {v11}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->new:Z

    goto/16 :goto_2

    :cond_1b
    const-string v10, "MetaInfTldSources"

    .line 73
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 74
    invoke-direct {p0, v11}, Lfreemarker/ext/servlet/FreemarkerServlet;->finally(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->const:Ljava/util/List;

    goto/16 :goto_2

    :cond_1c
    const-string v10, "ClasspathTlds"

    .line 75
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v12, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->final:Ljava/util/List;

    if-eqz v12, :cond_1d

    .line 78
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_1d
    invoke-static {v11}, Lfreemarker/ext/servlet/case;->new(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->final:Ljava/util/List;

    goto/16 :goto_2

    .line 81
    :cond_1e
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v10, v9, v11}, Lfreemarker/template/do;->B0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$do; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    .line 82
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$for;

    invoke-direct {v1, v9, v11, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$for;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 83
    throw v0

    .line 84
    :cond_1f
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$new;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init-param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v9}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without param-value. Maybe the web.xml is not well-formed?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$new;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_20
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$new;

    const-string v1, "init-param without param-name. Maybe the web.xml is not well-formed?"

    invoke-direct {v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$new;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_21
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    invoke-static {v0}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-ne v0, v1, :cond_22

    goto :goto_3

    .line 88
    :cond_22
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$for;

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->if(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You can\'t specify the charset in the content type, because the \"ResponseCharacterEncoding\" init-param isn\'t set to \"legacy\"."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10, v1, v2}, Lfreemarker/ext/servlet/FreemarkerServlet$for;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_23
    :goto_3
    return-void
.end method

.method private strictfp(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->continue(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->for:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->for:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setBufferSize(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    const-string v2, "Can\'t set buffer size any more,"

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->interface(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v2

    const-string v3, "."

    if-eqz v2, :cond_2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested template "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->class:Lfreemarker/ext/servlet/FreemarkerServlet$case;

    sget-object v4, Lfreemarker/ext/servlet/FreemarkerServlet$case;->NEVER:Lfreemarker/ext/servlet/FreemarkerServlet$case;

    if-eq v2, v4, :cond_4

    .line 10
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->break(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/util/Locale;

    move-result-object v1

    .line 11
    :cond_4
    :try_start_1
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v2, v0, v1}, Lfreemarker/template/do;->Q1(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/static;

    move-result-object v0
    :try_end_1
    .catch Landroid/support/v4/m52; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lfreemarker/core/h3; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v1, 0x0

    .line 12
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->this:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$try;->NEVER:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    if-eq v2, v3, :cond_a

    .line 13
    :cond_5
    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->while(Lfreemarker/template/static;)Lfreemarker/ext/servlet/FreemarkerServlet$if;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 14
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$else;->DO_NOT_SET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-eq v1, v3, :cond_6

    .line 15
    invoke-static {v2}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->if(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v2}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->for(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :goto_1
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 18
    invoke-static {v2}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Z

    move-result v1

    goto :goto_2

    .line 19
    :cond_7
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->this:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$try;->ALWAYS:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    if-ne v2, v3, :cond_a

    .line 20
    :cond_8
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    invoke-static {v2}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    .line 22
    invoke-static {v3}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->if(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->import(Lfreemarker/template/static;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_9
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->goto:Lfreemarker/ext/servlet/FreemarkerServlet$if;

    invoke-static {v2}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->if(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 25
    :cond_a
    :goto_2
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-eq v2, v3, :cond_c

    sget-object v4, Lfreemarker/ext/servlet/FreemarkerServlet$else;->DO_NOT_SET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-eq v2, v4, :cond_c

    .line 26
    sget-object v4, Lfreemarker/ext/servlet/FreemarkerServlet$else;->FORCE_CHARSET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-eq v2, v4, :cond_b

    if-nez v1, :cond_c

    .line 27
    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->import(Lfreemarker/template/static;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_b
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->catch:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 29
    :cond_c
    :goto_3
    invoke-direct {p0, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->protected(Ljavax/servlet/http/HttpServletResponse;)V

    .line 30
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .line 31
    :try_start_2
    invoke-direct {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->default()V

    .line 32
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->else:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {p0, v2, v1, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->try(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 33
    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->abstract(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/static;Lfreemarker/template/TemplateModel;)Z

    move-result v2
    :try_end_2
    .catch Lfreemarker/template/TemplateException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_e

    .line 34
    :try_start_3
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfreemarker/template/static;->U0(Ljava/lang/Object;Ljava/io/Writer;)Lfreemarker/core/d0;

    move-result-object v2

    .line 35
    iget-object v4, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-eq v4, v3, :cond_d

    .line 36
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 37
    invoke-virtual {v2, v3}, Lfreemarker/core/d0;->y0(Ljava/lang/String;)V

    .line 38
    :cond_d
    invoke-virtual {p0, v2, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->volatile(Lfreemarker/core/d0;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->private(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/static;Lfreemarker/template/TemplateModel;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->private(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/static;Lfreemarker/template/TemplateModel;)V

    .line 40
    throw v2
    :try_end_4
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_e
    :goto_4
    return-void

    :catch_1
    move-exception p1

    .line 41
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/core/t;->f()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    .line 42
    sget-object v1, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    if-eq v0, v1, :cond_f

    sget-object v1, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    if-eq v0, v1, :cond_f

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 44
    :cond_f
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    :cond_10
    const-string p2, "Error executing FreeMarker template"

    .line 45
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->extends(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error when loading template "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v0}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->extends(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing error with template "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v0}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->extends(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1

    :catch_4
    move-exception p1

    .line 52
    iget-boolean v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->new:Z

    if-nez v1, :cond_12

    .line 53
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responding HTTP 404 \"Not found\" for missing template "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {v0}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v1, v0, p1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/16 p1, 0x194

    const-string v0, "Page template not found"

    .line 57
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void

    .line 58
    :cond_12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Template not found for name "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {v0}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->extends(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1
.end method

.method private while(Lfreemarker/template/static;)Lfreemarker/ext/servlet/FreemarkerServlet$if;
    .locals 3

    const-string v0, "content_type"

    .line 1
    invoke-virtual {p1, v0}, Lfreemarker/core/t;->import(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lfreemarker/ext/servlet/FreemarkerServlet$if;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$if;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lfreemarker/template/static;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e91;->do()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->break:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    sget-object v2, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    if-ne v1, v2, :cond_1

    .line 5
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; charset="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->import(Lfreemarker/template/static;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$if;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 6
    :cond_1
    new-instance p1, Lfreemarker/ext/servlet/FreemarkerServlet$if;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$if;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public abstract(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/static;Lfreemarker/template/TemplateModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public break(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/util/Locale;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public case()Lfreemarker/template/ObjectWrapper;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    const-string v1, "ObjectWrapper"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "object_wrapper"

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "beans"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lfreemarker/template/ObjectWrapper;->BEANS_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-object v0

    :cond_0
    const-string v1, "simple"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lfreemarker/template/ObjectWrapper;->SIMPLE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-object v0

    :cond_1
    const-string v1, "jython"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "freemarker.ext.jython.goto"

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/ObjectWrapper;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->new()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Conflicting init-params: object_wrapper and ObjectWrapper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    invoke-virtual {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->i2()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->new()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    .line 18
    :cond_5
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    .line 19
    :cond_6
    :try_start_1
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v2, v1, v0}, Lfreemarker/template/do;->B0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 20
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set object_wrapper"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public catch(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->strictfp(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public class(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->strictfp(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public const()Lfreemarker/template/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    return-object v0
.end method

.method public continue(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public do()Lfreemarker/template/do;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/do;

    invoke-direct {v0}, Lfreemarker/template/do;-><init>()V

    return-object v0
.end method

.method public else(Ljavax/servlet/http/HttpServletRequest;)Lfreemarker/ext/servlet/for;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/servlet/for;

    invoke-direct {v0, p1}, Lfreemarker/ext/servlet/for;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method public final()Ljava/lang/String;
    .locals 1

    const-string v0, "always"

    return-object v0
.end method

.method public for()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->final:Ljava/util/List;

    return-object v0
.end method

.method public goto(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/TaglibFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory;

    invoke-direct {v0, p2}, Lfreemarker/ext/jsp/TaglibFactory;-><init>(Ljavax/servlet/ServletContext;)V

    .line 2
    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->h(Lfreemarker/template/ObjectWrapper;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->const:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v1, "org.freemarker.jsp.metaInfTldSources"

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    :try_start_0
    invoke-direct {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->finally(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Landroid/support/v4/k52;

    const-string v0, "Failed to parse system property \"org.freemarker.jsp.metaInfTldSources\""

    invoke-direct {p2, v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

    .line 10
    invoke-interface {p2, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 11
    invoke-static {p2}, Lfreemarker/ext/servlet/case;->try(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 12
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->native:Lfreemarker/log/if;

    const-string v3, "Failed to parse application context attribute \"org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern\" - it will be ignored"

    invoke-virtual {v1, v3, p2}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 15
    new-instance v3, Lfreemarker/ext/jsp/TaglibFactory$for;

    invoke-direct {v3, v1}, Lfreemarker/ext/jsp/TaglibFactory$for;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->g(Ljava/util/List;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object p2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->final:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const-string p2, "org.freemarker.jsp.classpathTlds"

    .line 20
    invoke-static {p2, v2}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    :try_start_2
    invoke-static {p2}, Lfreemarker/ext/servlet/case;->new(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 23
    new-instance p2, Landroid/support/v4/k52;

    const-string v0, "Failed to parse system property \"org.freemarker.jsp.classpathTlds\""

    invoke-direct {p2, v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 24
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->f(Ljava/util/List;)V

    return-object v0
.end method

.method public if()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->const:Ljava/util/List;

    return-object v0
.end method

.method public interface(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "javax.servlet.include.servlet_path"

    .line 1
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "javax.servlet.include.path_info"

    .line 2
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public native()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->return()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljavax/servlet/ServletException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while initializing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " servlet; see cause exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public new()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->case:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->m1(Landroid/support/v4/we2;)Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public private(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/static;Lfreemarker/template/TemplateModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public super()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->else:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public switch(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public this(Ljava/lang/String;)Lfreemarker/cache/TemplateLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->const()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lfreemarker/ext/servlet/case;->do(Ljava/lang/String;Lfreemarker/template/do;Ljava/lang/Class;Ljavax/servlet/ServletContext;)Lfreemarker/cache/TemplateLoader;

    move-result-object p1

    return-object p1
.end method

.method public final throw()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->do:Ljava/lang/String;

    return-object v0
.end method

.method public throws(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/ext/servlet/new;Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ".freemarker.Session"

    .line 1
    invoke-interface {p4, v0, p3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->switch(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public transient()V
    .locals 0

    return-void
.end method

.method public try(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/ext/servlet/do;

    invoke-direct {v0, p1, p2, p3}, Lfreemarker/ext/servlet/do;-><init>(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;)V

    .line 2
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->super:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->throw:Lfreemarker/ext/servlet/else;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lfreemarker/ext/servlet/else;

    invoke-direct {v2, p0, p1}, Lfreemarker/ext/servlet/else;-><init>(Ljavax/servlet/GenericServlet;Lfreemarker/template/ObjectWrapper;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->goto(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/TaglibFactory;

    move-result-object v3

    const-string v4, ".freemarker.Application"

    .line 6
    invoke-interface {p2, v4, v2}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, ".freemarker.JspTaglibs"

    .line 7
    invoke-interface {p2, v4, v3}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p3, p4}, Lfreemarker/ext/servlet/FreemarkerServlet;->static(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 9
    iput-object v3, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->while:Lfreemarker/ext/jsp/TaglibFactory;

    .line 10
    iput-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->throw:Lfreemarker/ext/servlet/else;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v3, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->while:Lfreemarker/ext/jsp/TaglibFactory;

    .line 12
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p2, "Application"

    .line 13
    invoke-virtual {v0, p2, v2}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const-string p2, "__FreeMarkerServlet.Application__"

    .line 14
    invoke-virtual {v0, p2, v2}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const-string p2, "JspTaglibs"

    .line 15
    invoke-virtual {v0, p2, v3}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const/4 p2, 0x0

    .line 16
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v1, ".freemarker.Session"

    .line 17
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/servlet/new;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1, p2}, Lfreemarker/ext/servlet/new;->isOrphaned(Ljavax/servlet/http/HttpSession;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    :cond_1
    new-instance v1, Lfreemarker/ext/servlet/new;

    invoke-direct {v1, p2, p1}, Lfreemarker/ext/servlet/new;-><init>(Ljavax/servlet/http/HttpSession;Lfreemarker/template/ObjectWrapper;)V

    .line 20
    invoke-virtual {p0, p3, p4, v1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->throws(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/ext/servlet/new;Ljavax/servlet/http/HttpSession;)V

    goto :goto_1

    .line 21
    :cond_2
    new-instance v1, Lfreemarker/ext/servlet/new;

    invoke-direct {v1, p0, p3, p4, p1}, Lfreemarker/ext/servlet/new;-><init>(Lfreemarker/ext/servlet/FreemarkerServlet;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V

    :cond_3
    :goto_1
    const-string p2, "Session"

    .line 22
    invoke-virtual {v0, p2, v1}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const-string p2, ".freemarker.Request"

    .line 23
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/ext/servlet/if;

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p2}, Lfreemarker/ext/servlet/if;->if()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v1

    if-eq v1, p3, :cond_5

    .line 25
    :cond_4
    new-instance p2, Lfreemarker/ext/servlet/if;

    invoke-direct {p2, p3, p4, p1}, Lfreemarker/ext/servlet/if;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V

    const-string p1, ".freemarker.Request"

    .line 26
    invoke-interface {p3, p1, p2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, ".freemarker.RequestParameters"

    .line 27
    invoke-virtual {p0, p3}, Lfreemarker/ext/servlet/FreemarkerServlet;->else(Ljavax/servlet/http/HttpServletRequest;)Lfreemarker/ext/servlet/for;

    move-result-object v1

    .line 28
    invoke-interface {p3, p1, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string p1, "Request"

    .line 29
    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const-string p1, "include_page"

    .line 30
    new-instance v1, Lfreemarker/ext/servlet/try;

    invoke-direct {v1, p3, p4}, Lfreemarker/ext/servlet/try;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    invoke-virtual {v0, p1, v1}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const-string p1, "__FreeMarkerServlet.Request__"

    .line 31
    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const-string p1, ".freemarker.RequestParameters"

    .line 32
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/servlet/for;

    const-string p2, "RequestParameters"

    .line 33
    invoke-virtual {v0, p2, p1}, Lfreemarker/ext/servlet/do;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    :try_end_2
    .catch Ljavax/servlet/ServletException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 34
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/servlet/ServletException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Landroid/support/v4/k52;

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 36
    new-instance p2, Landroid/support/v4/k52;

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public volatile(Lfreemarker/core/d0;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/d0;->d3()V

    return-void
.end method
