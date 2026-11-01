.class Lfreemarker/ext/dom/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/dom/XPathSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/dom/goto$case;
    }
.end annotation


# static fields
.field private static final case:Lfreemarker/core/v;

.field private static final do:Lfreemarker/core/v;

.field private static final else:Lorg/jaxen/Navigator;

.field private static final for:Lorg/jaxen/NamespaceContext;

.field private static final if:Ljava/util/ArrayList;

.field private static final new:Lorg/jaxen/VariableContext;

.field private static final try:Lorg/jaxen/FunctionContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/ext/dom/goto$do;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/goto$do;-><init>(I)V

    sput-object v0, Lfreemarker/ext/dom/goto;->do:Lfreemarker/core/v;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/goto;->if:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lfreemarker/ext/dom/goto$if;

    invoke-direct {v0}, Lfreemarker/ext/dom/goto$if;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/goto;->for:Lorg/jaxen/NamespaceContext;

    .line 4
    new-instance v0, Lfreemarker/ext/dom/goto$for;

    invoke-direct {v0}, Lfreemarker/ext/dom/goto$for;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/goto;->new:Lorg/jaxen/VariableContext;

    .line 5
    new-instance v0, Lfreemarker/ext/dom/goto$new;

    invoke-direct {v0}, Lfreemarker/ext/dom/goto$new;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/goto;->try:Lorg/jaxen/FunctionContext;

    .line 6
    new-instance v0, Lfreemarker/core/v;

    invoke-direct {v0, v1}, Lfreemarker/core/v;-><init>(I)V

    sput-object v0, Lfreemarker/ext/dom/goto;->case:Lfreemarker/core/v;

    .line 7
    new-instance v0, Lfreemarker/ext/dom/goto$try;

    invoke-direct {v0}, Lfreemarker/ext/dom/goto$try;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/goto;->else:Lorg/jaxen/Navigator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lfreemarker/core/v;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/dom/goto;->case:Lfreemarker/core/v;

    return-object v0
.end method

.method private static for(Ljava/lang/String;Lfreemarker/template/static;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p1, v1, v0}, Lfreemarker/template/static;->t1(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static synthetic if(Ljava/lang/String;Lfreemarker/template/static;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lfreemarker/ext/dom/goto;->for(Ljava/lang/String;Lfreemarker/template/static;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/String;)Lfreemarker/template/static;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/static;->e1()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v1

    invoke-virtual {v0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfreemarker/template/do;->x1(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 6
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {v0, v2, p0}, Lfreemarker/core/d0;->x3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v2

    invoke-virtual {v0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v2, p0, v0, v1, v5}, Lfreemarker/template/do;->T1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)Lfreemarker/template/static;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lfreemarker/ext/dom/goto;->do:Lfreemarker/core/v;

    invoke-virtual {v0}, Lfreemarker/core/v;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2
    monitor-enter v0
    :try_end_0
    .catch Landroid/support/v4/kb2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/BaseXPath;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/jaxen/BaseXPath;

    sget-object v2, Lfreemarker/ext/dom/goto;->else:Lorg/jaxen/Navigator;

    invoke-direct {v1, p2, v2}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    .line 5
    sget-object v2, Lfreemarker/ext/dom/goto;->for:Lorg/jaxen/NamespaceContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 6
    sget-object v2, Lfreemarker/ext/dom/goto;->try:Lorg/jaxen/FunctionContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 7
    sget-object v2, Lfreemarker/ext/dom/goto;->new:Lorg/jaxen/VariableContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 8
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    :try_start_2
    sget-object p1, Lfreemarker/ext/dom/goto;->if:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v1, p1}, Lorg/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 12
    sget-object p2, Lfreemarker/template/ObjectWrapper;->DEFAULT_WRAPPER:Lfreemarker/template/ObjectWrapper;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    new-instance p2, Lfreemarker/ext/dom/this;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lfreemarker/ext/dom/this;-><init>(Ljava/util/List;Lfreemarker/ext/dom/break;)V

    .line 14
    iput-object p0, p2, Lfreemarker/ext/dom/this;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;
    :try_end_2
    .catch Landroid/support/v4/kb2; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/jaxen/JaxenException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :catchall_0
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/support/v4/kb2; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/jaxen/JaxenException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Landroid/support/v4/k52;

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/kb2;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object p2

    .line 18
    instance-of v0, p2, Landroid/support/v4/k52;

    if-eqz v0, :cond_3

    .line 19
    check-cast p2, Landroid/support/v4/k52;

    throw p2

    .line 20
    :cond_3
    throw p1
.end method
