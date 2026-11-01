.class final Lfreemarker/ext/jsp/TaglibFactory$const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation


# instance fields
.field private final do:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$const;->do(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$const;->do:Ljava/util/Map;

    return-void
.end method

.method private static final do(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$super;

    invoke-direct {v0, p2}, Lfreemarker/ext/jsp/TaglibFactory$super;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 2
    invoke-interface {p1}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-interface {p1}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getXmlSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lfreemarker/ext/jsp/TaglibFactory;->new(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 5
    invoke-static {p0}, Lfreemarker/ext/jsp/if;->class(Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/if;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$super;->if()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/if;->for(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$super;->if()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_1

    .line 8
    :goto_0
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$super;->for()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event listeners specified in the TLD could not be  registered since the web application doesn\'t have a listener of class "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lfreemarker/ext/jsp/if;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". To remedy this, add this element to web.xml:\n| <listener>\n|   <listener-class>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lfreemarker/ext/jsp/if;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</listener-class>\n| </listener>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 12
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 13
    throw p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$const;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$const;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
