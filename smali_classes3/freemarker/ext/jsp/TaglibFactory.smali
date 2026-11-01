.class public Lfreemarker/ext/jsp/TaglibFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/TaglibFactory$final;,
        Lfreemarker/ext/jsp/TaglibFactory$import;,
        Lfreemarker/ext/jsp/TaglibFactory$while;,
        Lfreemarker/ext/jsp/TaglibFactory$case;,
        Lfreemarker/ext/jsp/TaglibFactory$super;,
        Lfreemarker/ext/jsp/TaglibFactory$throw;,
        Lfreemarker/ext/jsp/TaglibFactory$public;,
        Lfreemarker/ext/jsp/TaglibFactory$const;,
        Lfreemarker/ext/jsp/TaglibFactory$else;,
        Lfreemarker/ext/jsp/TaglibFactory$catch;,
        Lfreemarker/ext/jsp/TaglibFactory$this;,
        Lfreemarker/ext/jsp/TaglibFactory$goto;,
        Lfreemarker/ext/jsp/TaglibFactory$new;,
        Lfreemarker/ext/jsp/TaglibFactory$class;,
        Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;,
        Lfreemarker/ext/jsp/TaglibFactory$TldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$try;,
        Lfreemarker/ext/jsp/TaglibFactory$for;,
        Lfreemarker/ext/jsp/TaglibFactory$native;,
        Lfreemarker/ext/jsp/TaglibFactory$break;
    }
.end annotation


# static fields
.field public static final const:Ljava/util/List;

.field public static final final:Ljava/util/List;

.field private static final import:I = 0x2

.field private static final native:Ljava/lang/String; = "META-INF/"

.field private static final public:Ljava/lang/String; = "/META-INF/"

.field private static final return:Ljava/lang/String; = "/META-INF/taglib.tld"

.field private static final static:Ljava/lang/String; = "!/"

.field private static final super:Lfreemarker/log/if;

.field private static final switch:Ljava/lang/String;

.field private static final throw:I = 0x0

.field private static final while:I = 0x1


# instance fields
.field private final break:Ljava/util/Map;

.field public case:Z

.field private catch:Ljava/util/List;

.field private class:I

.field private final do:Ljavax/servlet/ServletContext;

.field public else:Z

.field private for:Ljava/util/List;

.field private final goto:Ljava/lang/Object;

.field private if:Lfreemarker/template/ObjectWrapper;

.field private new:Ljava/util/List;

.field private final this:Ljava/util/Map;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->const:Ljava/util/List;

    .line 2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory$native;->do:Lfreemarker/ext/jsp/TaglibFactory$native;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->final:Ljava/util/List;

    const-string v0, "freemarker.jsp"

    .line 4
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    const-string v0, "file.encoding"

    const-string v1, "utf-8"

    .line 5
    invoke-static {v0, v1}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->switch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->final:Ljava/util/List;

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    .line 3
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->const:Ljava/util/List;

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->new:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->try:Z

    .line 5
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->case:Z

    .line 6
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->else:Z

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->goto:Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->this:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->break:Ljava/util/Map;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    .line 11
    iput v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->class:I

    .line 12
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    return-void
.end method

.method private static a(Ljava/net/URL;)Ljava/net/MalformedURLException;
    .locals 3

    .line 1
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract jar entry path from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private abstract()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, ", "

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/super;->instanceof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static synthetic break()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->k()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->i(Ljava/io/InputStream;)Ljava/io/FilterInputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 6
    invoke-virtual {p0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance p1, Lfreemarker/ext/jsp/TaglibFactory$case;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lfreemarker/ext/jsp/TaglibFactory$case;-><init>(Lfreemarker/ext/jsp/TaglibFactory$do;)V

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 9
    invoke-interface {p0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 10
    invoke-interface {p0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 11
    invoke-interface {p0, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "XML parser setup failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic case(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->transient(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic catch(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private class(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->break:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " to TLD location "

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored duplicate mapping of taglib URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p1}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->break:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mapped taglib URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p1}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private const(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->final(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    throw p1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$final;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    const-string v1, "__FreeMarkerServlet.Request__"

    invoke-virtual {v0, v1}, Lfreemarker/core/d0;->D2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    instance-of v1, v0, Lfreemarker/ext/servlet/if;

    if-eqz v1, :cond_3

    .line 3
    check-cast v0, Lfreemarker/ext/servlet/if;

    .line 4
    invoke-virtual {v0}, Lfreemarker/ext/servlet/if;->if()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$final;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t resolve relative URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as request URL information is unavailable."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/TaglibFactory$final;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$final;

    const-string v1, "Failed to get FreemarkerServlet request information"

    invoke-direct {v0, v1, p0}, Lfreemarker/ext/jsp/TaglibFactory$final;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static default(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "META-INF/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$import;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-direct {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory$import;-><init>(Ljava/net/URL;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic do()Lfreemarker/log/if;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/util/jar/JarFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServletContext resource URL was null (missing resource?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/if;->case(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory;->l(Ljava/net/URL;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jar file doesn\'t exist - falling back to stream mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/if;->case(Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_2
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static synthetic else(Lfreemarker/ext/jsp/TaglibFactory;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory;->class(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V

    return-void
.end method

.method private static extends()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->k()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lfreemarker/ext/jsp/TaglibFactory;->default(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 4
    :cond_0
    const-class v2, Lfreemarker/ext/jsp/TaglibFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lfreemarker/ext/jsp/TaglibFactory;->protected(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {v2, v0}, Lfreemarker/ext/jsp/TaglibFactory;->default(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    :cond_1
    return-object v0
.end method

.method private final(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getXmlSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/ext/jsp/TaglibFactory;->volatile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing TLD; skipping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    monitor-enter p1

    .line 4
    :try_start_1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->catch:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/jsp/TaglibFactory;->class(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 7
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method private static finally(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->switch:Ljava/lang/String;

    invoke-static {p1, v1}, Lfreemarker/template/utility/super;->break(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance p0, Landroid/support/v4/mc;

    invoke-direct {p0}, Landroid/support/v4/mc;-><init>()V

    throw p0
.end method

.method public static synthetic for(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory;->j(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic goto(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->instanceof(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static i(Ljava/io/InputStream;)Ljava/io/FilterInputStream;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$if;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/TaglibFactory$if;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static synthetic if()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->switch:Ljava/lang/String;

    return-object v0
.end method

.method private static implements(Ljava/net/URL;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jar"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vfszip"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wsjar"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private import()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 3
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lfreemarker/ext/jsp/TaglibFactory$try;

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 5
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/jsp/TaglibFactory$break;

    .line 6
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory$native;->do:Lfreemarker/ext/jsp/TaglibFactory$native;

    if-ne v3, v4, :cond_3

    .line 7
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->return()V

    goto/16 :goto_4

    .line 8
    :cond_3
    instance-of v4, v3, Lfreemarker/ext/jsp/TaglibFactory$for;

    if-eqz v4, :cond_c

    .line 9
    check-cast v3, Lfreemarker/ext/jsp/TaglibFactory$for;

    .line 10
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v4}, Lfreemarker/log/if;->throw()Z

    move-result v5

    const-string v6, "/META-INF/"

    if-eqz v5, :cond_4

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking for TLD-s in classpathRoots["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3}, Lfreemarker/ext/jsp/TaglibFactory$for;->do()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "**/*.tld"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4, v5}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    .line 14
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->extends()Ljava/util/Set;

    move-result-object v0

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/ext/jsp/TaglibFactory$import;

    .line 17
    invoke-virtual {v5}, Lfreemarker/ext/jsp/TaglibFactory$import;->for()Ljava/net/URL;

    move-result-object v7

    .line 18
    invoke-static {v7}, Lfreemarker/ext/jsp/TaglibFactory;->implements(Ljava/net/URL;)Z

    move-result v8

    .line 19
    invoke-static {v5}, Lfreemarker/ext/jsp/TaglibFactory$import;->do(Lfreemarker/ext/jsp/TaglibFactory$import;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_7

    const-string v10, "!/"

    .line 20
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 21
    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 23
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x9

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 24
    :cond_8
    :goto_3
    invoke-virtual {v3}, Lfreemarker/ext/jsp/TaglibFactory$for;->do()Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 25
    invoke-direct {p0, v7}, Lfreemarker/ext/jsp/TaglibFactory;->l(Ljava/net/URL;)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 26
    invoke-direct {p0, v9}, Lfreemarker/ext/jsp/TaglibFactory;->throw(Ljava/io/File;)V

    goto :goto_2

    :cond_9
    if-eqz v8, :cond_a

    .line 27
    invoke-direct {p0, v7}, Lfreemarker/ext/jsp/TaglibFactory;->while(Ljava/net/URL;)V

    goto :goto_2

    .line 28
    :cond_a
    sget-object v7, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v7}, Lfreemarker/log/if;->throw()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list entries under this URL; TLD-s won\'t be discovered here: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v5}, Lfreemarker/ext/jsp/TaglibFactory$import;->if()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v7, v5}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 32
    :cond_c
    new-instance v0, Landroid/support/v4/mc;

    invoke-direct {v0}, Landroid/support/v4/mc;-><init>()V

    throw v0

    :cond_d
    :goto_5
    return-void
.end method

.method private static instanceof(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "tld"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static interface(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/16 v2, 0x61

    const/4 v4, 0x2

    if-lt v1, v2, :cond_7

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x3a

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    return v4

    :cond_2
    :goto_0
    if-ge v3, v1, :cond_6

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v2, :cond_3

    if-le v6, v5, :cond_5

    :cond_3
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-le v6, v7, :cond_5

    :cond_4
    const/16 v7, 0x2b

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_5

    return v4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v4

    .line 5
    :cond_8
    new-instance p0, Ljava/net/MalformedURLException;

    const-string v0, "empty string is not a valid URI"

    invoke-direct {p0, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null is not a valid URI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static j(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "!/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    .line 4
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory;->switch:Ljava/lang/String;

    .line 5
    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Servlet context resource not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 7
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get URL for serlvetContext resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / jar entry "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p2}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1, p0}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static k()Ljava/lang/ClassLoader;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    const-string v3, "Can\'t access Thread Context ClassLoader"

    invoke-virtual {v2, v3, v0}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private l(Ljava/net/URL;)Ljava/io/File;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->try:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->switch:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Landroid/support/v4/mc;

    invoke-direct {v0, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private native(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "/META-INF/"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->e(Ljava/lang/String;)Ljava/util/jar/JarFile;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ".tld"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 3
    sget-object v5, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v5}, Lfreemarker/log/if;->throw()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning for /META-INF/*.tld-s in JarFile: servletContext:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    .line 7
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    new-instance v6, Lfreemarker/ext/jsp/TaglibFactory$catch;

    invoke-direct {v6, p0, p1, v5, v2}, Lfreemarker/ext/jsp/TaglibFactory$catch;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    invoke-direct {p0, v6}, Lfreemarker/ext/jsp/TaglibFactory;->const(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scanning for /META-INF/*.tld-s in ZipInputStream (slow): servletContext:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_6

    .line 15
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    return-void

    .line 17
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    new-instance v7, Lfreemarker/ext/jsp/TaglibFactory$catch;

    invoke-direct {v7, p0, p1, v6, v2}, Lfreemarker/ext/jsp/TaglibFactory$catch;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    invoke-direct {p0, v5, v7}, Lfreemarker/ext/jsp/TaglibFactory;->final(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 21
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 23
    throw p1

    .line 24
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServletContext resource not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static synthetic new(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory;->c(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method

.method private private(Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldLocation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lfreemarker/ext/jsp/TaglibFactory$final;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->break:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->class:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 p1, 0x4

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    .line 4
    :cond_2
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->import()V

    goto :goto_1

    .line 5
    :cond_3
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->static()V

    goto :goto_1

    .line 6
    :cond_4
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->switch()V

    goto :goto_1

    .line 7
    :cond_5
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->super()V

    .line 8
    :goto_1
    iget v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->class:I

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->class:I

    goto :goto_0
.end method

.method private static protected(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 0

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0
.end method

.method private public(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".tld"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$class;

    invoke-direct {v2, p0, v1}, Lfreemarker/ext/jsp/TaglibFactory$class;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->const(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory;->public(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private return()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Looking for TLD locations in servletContext:/WEB-INF/lib/*.{jar,zip}/META-INF/*.tld"

    .line 2
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    const-string v1, "/WEB-INF/lib"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lfreemarker/ext/jsp/TaglibFactory;->transient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->native(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    const-string v1, "Looking for TLD locations in servletContext:/WEB-INF/**/*.tld"

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    const-string v0, "/WEB-INF"

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory;->public(Ljava/lang/String;)V

    return-void
.end method

.method private super()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lfreemarker/ext/jsp/TaglibFactory$final;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->new:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    const-string v1, "Looking for TLD locations in TLD-s specified in cfg.classpathTlds"

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "/"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$new;

    invoke-direct {v2, v1}, Lfreemarker/ext/jsp/TaglibFactory$new;-><init>(Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {v2}, Lfreemarker/ext/jsp/TaglibFactory$new;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v4}, Lfreemarker/log/if;->public()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored classpath TLD location "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because of error"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 13
    :try_start_1
    invoke-direct {p0, v1, v2}, Lfreemarker/ext/jsp/TaglibFactory;->final(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 15
    throw v0

    .line 16
    :cond_4
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$final;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "classpathTlds can\'t specify a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory$final;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$final;

    const-string v1, "classpathTlds can\'t contain empty item"

    invoke-direct {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory$final;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method private switch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    const-string v1, "Looking for TLD locations in servletContext:/WEB-INF/web.xml"

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$public;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/jsp/TaglibFactory$public;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    .line 3
    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    const-string v3, "/WEB-INF/web.xml"

    invoke-interface {v2, v3}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "No web.xml was found in servlet context"

    .line 4
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    invoke-interface {v0, v3}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->c(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 7
    throw v0
.end method

.method private synchronized(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)Lfreemarker/template/TemplateHashModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading taglib for URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from TLD location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$const;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory;->if:Lfreemarker/template/ObjectWrapper;

    invoke-direct {v0, v1, p1, v2}, Lfreemarker/ext/jsp/TaglibFactory$const;-><init>(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)V

    .line 6
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->this:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->break:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic this(Lfreemarker/ext/jsp/TaglibFactory;)Ljavax/servlet/ServletContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/jsp/TaglibFactory;->do:Ljavax/servlet/ServletContext;

    return-object p0
.end method

.method private throw(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning for *.tld-s in File directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/TaglibFactory$do;-><init>(Lfreemarker/ext/jsp/TaglibFactory;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 5
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 6
    aget-object v1, v0, p1

    .line 7
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$else;

    invoke-direct {v2, v1}, Lfreemarker/ext/jsp/TaglibFactory$else;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->const(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list this directory for some reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped scanning for *.tld for non-existent directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private throws()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->goto:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->class:I

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lfreemarker/ext/jsp/TaglibFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " object was already in use."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static transient(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".jar"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic try(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->interface(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private volatile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$throw;

    invoke-direct {v0}, Lfreemarker/ext/jsp/TaglibFactory$throw;-><init>()V

    .line 2
    invoke-static {p1, p2, v0}, Lfreemarker/ext/jsp/TaglibFactory;->c(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 3
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$throw;->do()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private while(Ljava/net/URL;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->case:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/net/JarURLConnection;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Ljava/net/JarURLConnection;

    .line 4
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->a(Ljava/net/URL;)Ljava/net/MalformedURLException;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!/"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_a

    const/16 v4, 0x3a

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->l(Ljava/net/URL;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const-string v2, ".tld"

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 14
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v4}, Lfreemarker/log/if;->throw()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning for /META-INF/**/*.tld-s in random access mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 17
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 18
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {p1, v4}, Lfreemarker/ext/jsp/TaglibFactory;->finally(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 22
    new-instance v6, Lfreemarker/ext/jsp/TaglibFactory$this;

    invoke-direct {v6, p0, v4, v3, v3}, Lfreemarker/ext/jsp/TaglibFactory$this;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    invoke-direct {p0, v6}, Lfreemarker/ext/jsp/TaglibFactory;->const(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    goto :goto_1

    .line 23
    :cond_5
    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning for /META-INF/**/*.tld-s in stream mode (slow): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 25
    :cond_6
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 26
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :cond_7
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_9

    .line 28
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8
    return-void

    .line 30
    :cond_9
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lfreemarker/ext/jsp/TaglibFactory;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-static {p1, v7}, Lfreemarker/ext/jsp/TaglibFactory;->finally(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 34
    new-instance v8, Lfreemarker/ext/jsp/TaglibFactory$this;

    invoke-direct {v8, p0, v7, v3, v3}, Lfreemarker/ext/jsp/TaglibFactory$this;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    invoke-direct {p0, v6, v8}, Lfreemarker/ext/jsp/TaglibFactory;->final(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 35
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 36
    throw p1
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 37
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading ZIP (see cause excepetion) from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 38
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 39
    :try_start_7
    throw v0

    .line 40
    :catch_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 41
    :goto_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    throw p1

    .line 43
    :cond_a
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->a(Ljava/net/URL;)Ljava/net/MalformedURLException;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public continue()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->throws()V

    const-string v0, "classpathTlds"

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->new:Ljava/util/List;

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->throws()V

    const-string v0, "metaInfTldSources"

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->for:Ljava/util/List;

    return-void
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->goto:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->this:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/jsp/TaglibFactory$const;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :try_start_1
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->super:Lfreemarker/log/if;

    invoke-virtual {v4}, Lfreemarker/log/if;->throw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locating TLD for taglib URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->private(Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldLocation;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    :try_start_2
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->interface(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 8
    :try_start_3
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_6

    move-object v2, p1

    .line 9
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lfreemarker/ext/jsp/TaglibFactory;->this:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/jsp/TaglibFactory$const;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    .line 11
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4

    .line 12
    :cond_4
    :try_start_5
    invoke-static {v2}, Lfreemarker/ext/jsp/TaglibFactory;->transient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lfreemarker/ext/jsp/TaglibFactory$catch;

    const-string v5, "/META-INF/taglib.tld"

    invoke-direct {v4, p0, v2, v5, v3}, Lfreemarker/ext/jsp/TaglibFactory$catch;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    goto :goto_1

    :cond_5
    new-instance v4, Lfreemarker/ext/jsp/TaglibFactory$class;

    invoke-direct {v4, p0, v2}, Lfreemarker/ext/jsp/TaglibFactory$class;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    move-object p1, v2

    .line 13
    :goto_2
    :try_start_6
    invoke-direct {p0, v4, p1}, Lfreemarker/ext/jsp/TaglibFactory;->synchronized(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)Lfreemarker/template/TemplateHashModel;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception v1

    .line 14
    new-instance v2, Landroid/support/v4/k52;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while loading tag library for URI "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from TLD location "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v4}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; see cause exception."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    if-nez v4, :cond_8

    .line 17
    :try_start_8
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->abstract()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 18
    :try_start_9
    new-instance v4, Lfreemarker/ext/jsp/TaglibFactory$final;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No TLD was found for the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " JSP taglib URI. (TLD-s are searched according the JSP 2.2 specification. In development- and embedded-servlet-container setups you may also need the \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "MetaInfTldSources"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" and \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ClasspathTlds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " init-params or the similar system properites."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_3

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Also note these TLD-s were skipped earlier due to errors; see error in the log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lfreemarker/ext/jsp/TaglibFactory$final;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_4

    .line 21
    :cond_8
    :try_start_a
    new-instance v2, Landroid/support/v4/mc;

    invoke-direct {v2}, Landroid/support/v4/mc;-><init>()V

    throw v2

    :catch_2
    move-exception v2

    .line 22
    new-instance v4, Lfreemarker/ext/jsp/TaglibFactory$final;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed taglib URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lfreemarker/ext/jsp/TaglibFactory$final;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_3
    move-exception v2

    :goto_4
    if-eqz v1, :cond_9

    goto :goto_5

    .line 23
    :cond_9
    :try_start_b
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->abstract()Ljava/lang/String;

    move-result-object v3

    .line 24
    :goto_5
    new-instance v1, Landroid/support/v4/k52;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while looking for TLD file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; see cause exception."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_a

    const-string p1, ""

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (Note: These TLD-s were skipped earlier due to errors; see errors in the log: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method public h(Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->throws()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->if:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public package()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->new:Ljava/util/List;

    return-object v0
.end method

.method public strictfp()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->if:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method
