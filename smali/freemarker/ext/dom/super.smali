.class Lfreemarker/ext/dom/super;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/dom/XPathSupport;


# static fields
.field private static final if:Lorg/apache/xml/utils/PrefixResolver;


# instance fields
.field private do:Lorg/apache/xpath/XPathContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/dom/super$do;

    invoke-direct {v0}, Lfreemarker/ext/dom/super$do;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/super;->if:Lorg/apache/xml/utils/PrefixResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0}, Lorg/apache/xpath/XPathContext;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/dom/super;->do:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method private static do(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public declared-synchronized executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    instance-of v0, p1, Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lfreemarker/ext/dom/super;->do(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Landroid/support/v4/k52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t perform an XPath query against a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Expecting a single org.w3c.dom.Node."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    :cond_2
    new-instance p1, Landroid/support/v4/k52;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xalan can\'t perform an XPath query against a Node Set (contains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " node(s)). Expecting a single Node."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "Xalan can\'t perform an XPath query against an empty Node Set."

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (There\'s no such restriction if you configure FreeMarker to use Jaxen for XPath.)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    check-cast p1, Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    sget-object v8, Lfreemarker/ext/dom/super;->if:Lorg/apache/xml/utils/PrefixResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 9
    iget-object p2, p0, Lfreemarker/ext/dom/super;->do:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    .line 10
    iget-object v2, p0, Lfreemarker/ext/dom/super;->do:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, v2, p2, v8}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object p2

    .line 11
    instance-of v0, p2, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_8

    .line 12
    new-instance v0, Lfreemarker/ext/dom/this;

    invoke-direct {v0, p1}, Lfreemarker/ext/dom/this;-><init>(Lorg/w3c/dom/Node;)V

    .line 13
    iput-object p0, v0, Lfreemarker/ext/dom/this;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    .line 14
    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p1

    .line 15
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {v0, p2}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    :cond_6
    if-nez p2, :cond_5

    .line 17
    invoke-virtual {v0}, Lfreemarker/template/return;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7

    invoke-virtual {v0, v1}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-object v0

    .line 18
    :cond_8
    :try_start_2
    instance-of p1, p2, Lorg/apache/xpath/objects/XBoolean;

    if-eqz p1, :cond_a

    .line 19
    check-cast p2, Lorg/apache/xpath/objects/XBoolean;

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XBoolean;->bool()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_2

    :cond_9
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-object p1

    .line 20
    :cond_a
    :try_start_3
    instance-of p1, p2, Lorg/apache/xpath/objects/XNull;
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 21
    monitor-exit p0

    return-object p1

    .line 22
    :cond_b
    :try_start_4
    instance-of p1, p2, Lorg/apache/xpath/objects/XString;

    if-eqz p1, :cond_c

    .line 23
    new-instance p1, Landroid/support/v4/ez1;

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 24
    :cond_c
    :try_start_5
    instance-of p1, p2, Lorg/apache/xpath/objects/XNumber;

    if-eqz p1, :cond_d

    .line 25
    new-instance p1, Landroid/support/v4/az1;

    check-cast p2, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XNumber;->num()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 26
    :cond_d
    :try_start_6
    new-instance p1, Landroid/support/v4/k52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot deal with type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception p1

    .line 27
    :try_start_7
    new-instance p2, Landroid/support/v4/k52;

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
