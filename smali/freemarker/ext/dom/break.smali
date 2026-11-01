.class public abstract Lfreemarker/ext/dom/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateNodeModelEx;
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;


# static fields
.field public static break:Ljava/lang/Class;

.field private static case:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final else:Ljava/util/Map;

.field private static goto:Lfreemarker/ext/dom/XPathSupport;

.field private static final new:Lfreemarker/log/if;

.field private static this:Lorg/xml/sax/ErrorHandler;

.field private static final try:Ljava/lang/Object;


# instance fields
.field public final do:Lorg/w3c/dom/Node;

.field private for:Lfreemarker/ext/dom/break;

.field private if:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "freemarker.dom"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/dom/break;->else:Ljava/util/Map;

    .line 4
    :try_start_0
    invoke-static {}, Lfreemarker/ext/dom/break;->switch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    sget-object v0, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->public()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No XPath support is available. If you need it, add Apache Xalan or Jaxen as dependency."

    .line 6
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    return-void
.end method

.method public static break(Lorg/w3c/dom/Node;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lfreemarker/ext/dom/break;->catch(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static catch(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3
    instance-of v2, v0, Lorg/w3c/dom/Text;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 4
    :goto_1
    instance-of v3, v1, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 8
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 10
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v0, p1}, Lfreemarker/ext/dom/break;->catch(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static class(Ljava/io/File;)Lfreemarker/ext/dom/break;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lfreemarker/ext/dom/break;->const(Ljava/io/File;ZZ)Lfreemarker/ext/dom/break;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/io/File;ZZ)Lfreemarker/ext/dom/break;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lfreemarker/ext/dom/break;->if()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 2
    invoke-static {}, Lfreemarker/ext/dom/break;->new()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p0}, Lfreemarker/ext/dom/break;->return(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0}, Lfreemarker/ext/dom/break;->throw(Lorg/w3c/dom/Node;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    invoke-static {p0}, Lfreemarker/ext/dom/break;->while(Lorg/w3c/dom/Node;)V

    .line 8
    :cond_3
    invoke-static {p0}, Lfreemarker/ext/dom/break;->break(Lorg/w3c/dom/Node;)V

    .line 9
    :goto_0
    invoke-static {p0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p0

    return-object p0
.end method

.method public static default()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.sun.org.apache.xpath.internal.XPath"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "freemarker.ext.dom.const"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    sput-object v0, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v1, "Using Sun\'s internal Xalan classes for XPath support"

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static else(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/w3c/dom/Text;

    const-string v1, ""

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/w3c/dom/CDATASection;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/ext/dom/break;->else(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_3

    .line 7
    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/ext/dom/break;->else(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static extends()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "org.apache.xpath.XPath"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "freemarker.ext.dom.super"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    sput-object v0, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v1, "Using Xalan classes for XPath support"

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final(Lorg/xml/sax/InputSource;)Lfreemarker/ext/dom/break;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lfreemarker/ext/dom/break;->super(Lorg/xml/sax/InputSource;ZZ)Lfreemarker/ext/dom/break;

    move-result-object p0

    return-object p0
.end method

.method public static finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    new-instance v0, Lfreemarker/ext/dom/try;

    check-cast p0, Lorg/w3c/dom/DocumentType;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/try;-><init>(Lorg/w3c/dom/DocumentType;)V

    goto :goto_0

    .line 3
    :pswitch_2
    new-instance v0, Lfreemarker/ext/dom/new;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/new;-><init>(Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 4
    :pswitch_3
    new-instance v0, Lfreemarker/ext/dom/class;

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/class;-><init>(Lorg/w3c/dom/ProcessingInstruction;)V

    goto :goto_0

    .line 5
    :pswitch_4
    new-instance v0, Lfreemarker/ext/dom/for;

    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/for;-><init>(Lorg/w3c/dom/CharacterData;)V

    goto :goto_0

    .line 6
    :pswitch_5
    new-instance v0, Lfreemarker/ext/dom/if;

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/if;-><init>(Lorg/w3c/dom/Attr;)V

    goto :goto_0

    .line 7
    :pswitch_6
    new-instance v0, Lfreemarker/ext/dom/else;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/else;-><init>(Lorg/w3c/dom/Element;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static if()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lfreemarker/ext/dom/break;->case:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 5
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 6
    sput-object v1, Lfreemarker/ext/dom/break;->case:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 7
    :cond_0
    sget-object v1, Lfreemarker/ext/dom/break;->case:Ljavax/xml/parsers/DocumentBuilderFactory;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static import(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p0, Lfreemarker/ext/dom/break;->case:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p0, Lfreemarker/ext/dom/break;->this:Lorg/xml/sax/ErrorHandler;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static new()Lorg/xml/sax/ErrorHandler;
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lfreemarker/ext/dom/break;->this:Lorg/xml/sax/ErrorHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static public(Ljava/lang/Class;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    const-class v0, Lfreemarker/ext/dom/XPathSupport;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement freemarker.ext.dom.XPathSupport"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static return(Lorg/w3c/dom/Node;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lfreemarker/ext/dom/break;->static(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static static(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    check-cast v2, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    move-object v2, v1

    .line 7
    :cond_1
    invoke-static {v0, p1}, Lfreemarker/ext/dom/break;->static(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 9
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_4
    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 10
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_a

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    check-cast v2, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    move-object v2, v1

    goto :goto_2

    :cond_7
    :goto_1
    if-eqz v2, :cond_9

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 15
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 17
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 20
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v2, v0

    :cond_a
    :goto_2
    move-object v0, v4

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_c

    .line 22
    check-cast v2, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_c
    return-void
.end method

.method public static super(Lorg/xml/sax/InputSource;ZZ)Lfreemarker/ext/dom/break;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lfreemarker/ext/dom/break;->if()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 2
    invoke-static {}, Lfreemarker/ext/dom/break;->new()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p0}, Lfreemarker/ext/dom/break;->return(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0}, Lfreemarker/ext/dom/break;->throw(Lorg/w3c/dom/Node;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    invoke-static {p0}, Lfreemarker/ext/dom/break;->while(Lorg/w3c/dom/Node;)V

    .line 8
    :cond_3
    invoke-static {p0}, Lfreemarker/ext/dom/break;->break(Lorg/w3c/dom/Node;)V

    .line 9
    :goto_0
    invoke-static {p0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_4

    .line 11
    new-instance p0, Ljava/net/MalformedURLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The SAX InputSource has systemId == null && characterStream == null && byteStream == null. This is often because it was created with a null InputStream or Reader, which is often because the XML file it should point to was not found. (The original exception was: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    throw p1
.end method

.method public static switch()V
    .locals 4

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-object v1, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    .line 3
    sput-object v1, Lfreemarker/ext/dom/break;->goto:Lfreemarker/ext/dom/XPathSupport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {}, Lfreemarker/ext/dom/break;->extends()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v3, "Failed to use Xalan internal XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 6
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v3, "Failed to use Xalan XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :catch_2
    :goto_0
    sget-object v1, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    .line 8
    :try_start_3
    invoke-static {}, Lfreemarker/ext/dom/break;->default()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v1

    .line 9
    :try_start_4
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v3, "Failed to use Sun internal XPath support. Tip: On Java 9+, you may need Xalan or Jaxen+Saxpath."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v1

    .line 10
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v3, "Failed to use Sun internal XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    :goto_1
    sget-object v1, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_1

    .line 12
    :try_start_5
    invoke-static {}, Lfreemarker/ext/dom/break;->throws()V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_5
    move-exception v1

    .line 13
    :try_start_6
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v3, "Failed to use Jaxen XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v1

    .line 14
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v3, "Failed to use Jaxen XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :catch_7
    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public static this()Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static throw(Lorg/w3c/dom/Node;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 4
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v0}, Lfreemarker/ext/dom/break;->throw(Lorg/w3c/dom/Node;)V

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static throws()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "org.jaxen.dom.DOMXPath"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "freemarker.ext.dom.goto"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/dom/XPathSupport;

    sput-object v1, Lfreemarker/ext/dom/break;->goto:Lfreemarker/ext/dom/XPathSupport;

    .line 4
    sget-object v1, Lfreemarker/ext/dom/break;->try:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    sput-object v0, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v1, "Using Jaxen classes for XPath support"

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static while(Lorg/w3c/dom/Node;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 4
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v0}, Lfreemarker/ext/dom/break;->while(Lorg/w3c/dom/Node;)V

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method case()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public do(Ljava/util/List;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->goto()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1, p1}, Lfreemarker/ext/dom/XPathSupport;->executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "No XPath support available"

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "Expecting exactly one arguments"

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    check-cast p1, Lfreemarker/ext/dom/break;

    iget-object p1, p1, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2
    aget-object v2, p1, v1

    .line 3
    const-class v3, Lfreemarker/template/TemplateDateModel;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lfreemarker/template/TemplateNumberModel;

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Lfreemarker/template/TemplateBooleanModel;

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "XML node values are always strings (text), that is, they can\'t be used as number, date/time/datetime or boolean without explicit conversion (such as someNode?number, someNode?datetime.xs, someNode?date.xs, someNode?time.xs, someNode?boolean)."

    aput-object v1, p1, v0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public for()Lfreemarker/ext/dom/break;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Lfreemarker/template/TemplateModel;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "@@"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    sget-object v0, Lfreemarker/ext/dom/do;->TEXT:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroid/support/v4/ez1;

    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/ext/dom/break;->else(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lfreemarker/ext/dom/do;->NAMESPACE:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Landroid/support/v4/ez1;

    invoke-direct {v1, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 7
    :cond_2
    sget-object v0, Lfreemarker/ext/dom/do;->LOCAL_NAME:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 9
    invoke-interface {p0}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_3
    new-instance v0, Landroid/support/v4/ez1;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_4
    sget-object v0, Lfreemarker/ext/dom/do;->MARKUP:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    new-instance v0, Lfreemarker/ext/dom/catch;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/catch;-><init>(Lorg/w3c/dom/Node;)V

    .line 14
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/dom/catch;->case(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 15
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_5
    sget-object v0, Lfreemarker/ext/dom/do;->NESTED_MARKUP:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    new-instance v0, Lfreemarker/ext/dom/catch;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/catch;-><init>(Lorg/w3c/dom/Node;)V

    .line 19
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/dom/catch;->else(Lorg/w3c/dom/NodeList;Ljava/lang/StringBuilder;)V

    .line 20
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 21
    :cond_6
    sget-object v0, Lfreemarker/ext/dom/do;->QNAME:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->case()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    new-instance v1, Landroid/support/v4/ez1;

    invoke-direct {v1, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    :cond_7
    return-object v1

    .line 24
    :cond_8
    invoke-static {p1}, Lfreemarker/ext/dom/do;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not supported for an XML node of type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->getNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_9
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported @@ key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_a
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->goto()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 29
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1, p1}, Lfreemarker/ext/dom/XPathSupport;->executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 30
    :cond_b
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public getChildNodes()Lfreemarker/template/TemplateSequenceModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->if:Lfreemarker/template/TemplateSequenceModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/ext/dom/this;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lfreemarker/ext/dom/this;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/break;)V

    iput-object v0, p0, Lfreemarker/ext/dom/break;->if:Lfreemarker/template/TemplateSequenceModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/dom/break;->if:Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public getNextSibling()Lfreemarker/template/TemplateNodeModelEx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v0

    return-object v0
.end method

.method public getNodeNamespace()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v4, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_1

    if-ne v0, v2, :cond_1

    move-object v1, v5

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    return-object v1
.end method

.method public final getNodeType()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const-string v1, "text"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v1, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". This should be impossible!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "notation"

    return-object v0

    :pswitch_1
    const-string v0, "document_fragment"

    return-object v0

    :pswitch_2
    const-string v0, "document_type"

    return-object v0

    :pswitch_3
    const-string v0, "document"

    return-object v0

    :pswitch_4
    const-string v0, "comment"

    return-object v0

    :pswitch_5
    const-string v0, "pi"

    return-object v0

    :pswitch_6
    const-string v0, "entity"

    return-object v0

    :pswitch_7
    const-string v0, "entity_reference"

    return-object v0

    :pswitch_8
    return-object v1

    :pswitch_9
    const-string v0, "attribute"

    return-object v0

    :pswitch_a
    const-string v0, "element"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParentNode()Lfreemarker/template/TemplateNodeModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->for:Lfreemarker/ext/dom/break;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    instance-of v2, v1, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/break;->for:Lfreemarker/ext/dom/break;

    .line 6
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->for:Lfreemarker/ext/dom/break;

    return-object v0
.end method

.method public getPreviousSibling()Lfreemarker/template/TemplateNodeModelEx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public goto()Lfreemarker/ext/dom/XPathSupport;
    .locals 5

    .line 1
    sget-object v0, Lfreemarker/ext/dom/break;->goto:Lfreemarker/ext/dom/XPathSupport;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Document;

    .line 4
    :cond_1
    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v2, Lfreemarker/ext/dom/break;->else:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/XPathSupport;

    :cond_2
    if-nez v0, :cond_3

    .line 7
    sget-object v3, Lfreemarker/ext/dom/break;->break:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/XPathSupport;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    .line 10
    :goto_0
    :try_start_3
    sget-object v2, Lfreemarker/ext/dom/break;->new:Lfreemarker/log/if;

    const-string v4, "Error instantiating xpathSupport class"

    invoke-virtual {v2, v4, v0}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v3

    .line 11
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public try()Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    return-object v0
.end method
