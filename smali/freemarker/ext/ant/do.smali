.class public Lfreemarker/ext/ant/do;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private break:Lfreemarker/template/static;

.field private case:Ljava/io/File;

.field private catch:J

.field private class:Ljava/lang/String;

.field private const:Ljava/io/File;

.field private final default:Ljava/util/Map;

.field private do:Lfreemarker/ext/ant/if;

.field private else:Ljava/io/File;

.field private final:Lfreemarker/template/TemplateModel;

.field private final for:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private goto:Ljava/io/File;

.field private if:Lfreemarker/ext/ant/if;

.field private import:J

.field private native:Z

.field private new:Ljavax/xml/parsers/DocumentBuilder;

.field private public:Ljava/lang/String;

.field private return:Ljava/lang/String;

.field private static:Ljava/lang/String;

.field private super:Lfreemarker/template/TemplateNodeModel;

.field private switch:Z

.field private this:Ljava/lang/String;

.field private throw:Lfreemarker/template/TemplateModel;

.field private throws:Ljava/lang/String;

.field private try:Lfreemarker/template/do;

.field private while:Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 2
    new-instance v0, Lfreemarker/template/do;

    invoke-direct {v0}, Lfreemarker/template/do;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/ant/do;->try:Lfreemarker/template/do;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lfreemarker/ext/ant/do;->catch:J

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lfreemarker/ext/ant/do;->class:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    .line 6
    iput-wide v0, p0, Lfreemarker/ext/ant/do;->import:J

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lfreemarker/ext/ant/do;->native:Z

    const-string v1, ".html"

    .line 8
    iput-object v1, p0, Lfreemarker/ext/ant/do;->public:Ljava/lang/String;

    const-string v1, "file.encoding"

    const-string v2, "utf-8"

    .line 9
    invoke-static {v1, v2}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/do;->return:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lfreemarker/ext/ant/do;->static:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lfreemarker/ext/ant/do;->switch:Z

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lfreemarker/ext/ant/do;->throws:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/ant/do;->default:Ljava/util/Map;

    .line 14
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/do;->for:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 15
    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    return-void
.end method

.method private case()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lfreemarker/ext/ant/do;->throws:Ljava/lang/String;

    const-string v2, ",; "

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x2e

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move-object v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 9
    :goto_1
    :try_start_0
    iget-object v3, p0, Lfreemarker/ext/ant/do;->default:Ljava/util/Map;

    invoke-static {v1}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method private goto(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lfreemarker/ext/ant/do;->public:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    iget-boolean p3, p0, Lfreemarker/ext/ant/do;->native:Z

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-gtz p3, :cond_0

    iget-wide v3, p0, Lfreemarker/ext/ant/do;->catch:J

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-gtz p3, :cond_0

    iget-wide v3, p0, Lfreemarker/ext/ant/do;->import:J

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-lez p3, :cond_6

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lfreemarker/ext/ant/do;->new(Ljava/io/File;)V

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input:  "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;I)V

    .line 11
    iget-object p2, p0, Lfreemarker/ext/ant/do;->final:Lfreemarker/template/TemplateModel;

    if-nez p2, :cond_1

    iget-object p2, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    if-eqz p2, :cond_1

    .line 12
    iget-object v1, p0, Lfreemarker/ext/ant/do;->new:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 13
    new-instance v1, Lfreemarker/ext/xml/if;

    iget-object v3, p0, Lfreemarker/ext/ant/do;->new:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v4, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-direct {v1, v3}, Lfreemarker/ext/xml/if;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/ext/ant/do;->final:Lfreemarker/template/TemplateModel;

    .line 14
    invoke-static {p2}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/ext/ant/do;->super:Lfreemarker/template/TemplateNodeModel;

    .line 15
    :cond_1
    iget-object p2, p0, Lfreemarker/ext/ant/do;->new:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p2, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 16
    new-instance v1, Lfreemarker/ext/xml/if;

    invoke-direct {v1, p2}, Lfreemarker/ext/xml/if;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-static {p2}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v3

    .line 18
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "document"

    .line 19
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0, v4}, Lfreemarker/ext/ant/do;->else(Ljava/util/Map;)V

    .line 21
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lfreemarker/ext/ant/do;->return:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :try_start_3
    iget-object v5, p0, Lfreemarker/ext/ant/do;->break:Lfreemarker/template/static;

    if-eqz v5, :cond_7

    .line 23
    iget-object v5, p0, Lfreemarker/ext/ant/do;->do:Lfreemarker/ext/ant/if;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "project"

    const-string v7, "doc"

    if-eqz v5, :cond_3

    .line 24
    :try_start_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v8, "model"

    .line 25
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-interface {v5, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v8, p0, Lfreemarker/ext/ant/do;->super:Lfreemarker/template/TemplateNodeModel;

    if-eqz v8, :cond_2

    .line 28
    check-cast v8, Lfreemarker/ext/dom/break;

    invoke-virtual {v8}, Lfreemarker/ext/dom/break;->try()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_2
    iget-object v8, p0, Lfreemarker/ext/ant/do;->do:Lfreemarker/ext/ant/if;

    invoke-virtual {v8, v5}, Lfreemarker/ext/ant/if;->for(Ljava/util/Map;)V

    .line 30
    :cond_3
    iget-object v5, p0, Lfreemarker/ext/ant/do;->break:Lfreemarker/template/static;

    invoke-virtual {v5, v4, v1}, Lfreemarker/template/static;->U0(Ljava/lang/Object;Ljava/io/Writer;)Lfreemarker/core/d0;

    move-result-object v4

    .line 31
    invoke-virtual {v4, v3}, Lfreemarker/core/d0;->m3(Lfreemarker/template/TemplateNodeModel;)V

    .line 32
    iget-object v3, p0, Lfreemarker/ext/ant/do;->if:Lfreemarker/ext/ant/if;

    if-eqz v3, :cond_5

    .line 33
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "env"

    .line 34
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v3, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p2, p0, Lfreemarker/ext/ant/do;->super:Lfreemarker/template/TemplateNodeModel;

    if-eqz p2, :cond_4

    .line 37
    check-cast p2, Lfreemarker/ext/dom/break;

    invoke-virtual {p2}, Lfreemarker/ext/dom/break;->try()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v3, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_4
    iget-object p2, p0, Lfreemarker/ext/ant/do;->if:Lfreemarker/ext/ant/if;

    invoke-virtual {p2, v3}, Lfreemarker/ext/ant/if;->for(Ljava/util/Map;)V

    .line 39
    :cond_5
    invoke-virtual {v4}, Lfreemarker/core/d0;->d3()V

    .line 40
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;I)V
    :try_end_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    return-void

    .line 43
    :cond_7
    :try_start_6
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "No template file specified in build script or in XML file"

    invoke-direct {p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p2

    .line 44
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 45
    throw p2
    :try_end_7
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception p2

    :goto_0
    if-eqz v1, :cond_8

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to delete "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;I)V

    .line 48
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p1

    :catch_1
    move-exception p1

    .line 50
    :goto_1
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 51
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_2

    :cond_9
    move-object p2, p1

    .line 52
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML parsing error in "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;I)V

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Line number "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;)V

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Column number "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;)V

    .line 55
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method private new(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static public(Ljava/util/Map;)Lfreemarker/template/TemplateModel;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/template/native;

    invoke-direct {v0}, Lfreemarker/template/native;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/support/v4/ez1;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public break(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->case:Ljava/io/File;

    return-void
.end method

.method public catch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->return:Ljava/lang/String;

    return-void
.end method

.method public class(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->public:Ljava/lang/String;

    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 1

    const-string v0, "false"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lfreemarker/ext/ant/do;->native:Z

    return-void
.end method

.method public do(Lfreemarker/ext/ant/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->if:Lfreemarker/ext/ant/if;

    return-void
.end method

.method public else(Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/ant/do;->throw:Lfreemarker/template/TemplateModel;

    const-string v1, "properties"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lfreemarker/ext/ant/do;->while:Lfreemarker/template/TemplateModel;

    const-string v1, "userProperties"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lfreemarker/ext/ant/do;->final:Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_0

    const-string v1, "project"

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lfreemarker/ext/ant/do;->super:Lfreemarker/template/TemplateNodeModel;

    const-string v1, "project_node"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/ant/do;->default:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lfreemarker/ext/ant/do;->default:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->throws:Ljava/lang/String;

    return-void
.end method

.method public for(Lfreemarker/ext/ant/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->do:Lfreemarker/ext/ant/if;

    return-void
.end method

.method public if(Lfreemarker/ext/ant/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->if:Lfreemarker/ext/ant/if;

    return-void
.end method

.method public import(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->static:Ljava/lang/String;

    return-void
.end method

.method public native(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/ant/do;->switch:Z

    return-void
.end method

.method public super(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->class:Ljava/lang/String;

    return-void
.end method

.method public this(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    return-void
.end method

.method public throw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    return-void
.end method

.method public try()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/ant/do;->case:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 4
    iget-object v0, p0, Lfreemarker/ext/ant/do;->goto:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/ant/do;->goto:Ljava/io/File;

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    iput-object v0, p0, Lfreemarker/ext/ant/do;->goto:Ljava/io/File;

    move-object v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lfreemarker/ext/ant/do;->goto:Ljava/io/File;

    invoke-virtual {p0, v2}, Lfreemarker/ext/ant/do;->while(Ljava/io/File;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfreemarker/ext/ant/do;->goto:Ljava/io/File;

    iget-object v3, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Do not specify an absolute location for the template as well as a templateDir"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lfreemarker/ext/ant/do;->catch:J

    .line 18
    :cond_6
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/ant/do;->this:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 19
    iget-object v2, p0, Lfreemarker/ext/ant/do;->try:Lfreemarker/template/do;

    iget-object v3, p0, Lfreemarker/ext/ant/do;->static:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lfreemarker/template/do;->P1(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/static;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/ant/do;->break:Lfreemarker/template/static;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transforming into: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/ant/do;->case:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Lfreemarker/ext/ant/do;->class:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 22
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    iget-object v4, p0, Lfreemarker/ext/ant/do;->class:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lfreemarker/ext/ant/do;->import:J

    goto :goto_2

    .line 25
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Project file is defined, but could not be located: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0, v2}, Lfreemarker/ext/ant/do;->log(Ljava/lang/String;I)V

    .line 28
    iput-object v1, p0, Lfreemarker/ext/ant/do;->const:Ljava/io/File;

    .line 29
    :cond_9
    :goto_2
    invoke-direct {p0}, Lfreemarker/ext/ant/do;->case()V

    .line 30
    iget-object v0, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    invoke-virtual {p0, v0}, Lfreemarker/ext/ant/do;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lfreemarker/ext/ant/do;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/ext/ant/do;->public(Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/do;->throw:Lfreemarker/template/TemplateModel;

    .line 32
    iget-object v1, p0, Lfreemarker/ext/ant/do;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/ext/ant/do;->public(Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/do;->while:Lfreemarker/template/TemplateModel;

    .line 33
    iget-object v1, p0, Lfreemarker/ext/ant/do;->for:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-boolean v2, p0, Lfreemarker/ext/ant/do;->switch:Z

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 34
    :try_start_1
    iget-object v1, p0, Lfreemarker/ext/ant/do;->for:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/do;->new:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 37
    iget-object v2, p0, Lfreemarker/ext/ant/do;->else:Ljava/io/File;

    aget-object v3, v0, v1

    iget-object v4, p0, Lfreemarker/ext/ant/do;->case:Ljava/io/File;

    invoke-direct {p0, v2, v3, v4}, Lfreemarker/ext/ant/do;->goto(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-void

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    const-string v3, "Could not create document builder"

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_1
    move-exception v0

    .line 39
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/do;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "destdir attribute must be set!"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public while(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/ext/ant/do;->goto:Ljava/io/File;

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/ant/do;->try:Lfreemarker/template/do;

    invoke-virtual {v0, p1}, Lfreemarker/template/do;->K2(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
