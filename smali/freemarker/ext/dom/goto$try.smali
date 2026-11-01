.class final Lfreemarker/ext/dom/goto$try;
.super Lorg/jaxen/dom/DocumentNavigator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/dom/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jaxen/dom/DocumentNavigator;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lfreemarker/ext/dom/goto;->new(Ljava/lang/String;)Lfreemarker/template/static;

    move-result-object v0

    .line 2
    invoke-static {}, Lfreemarker/ext/dom/goto;->do()Lfreemarker/core/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfreemarker/core/v;->case(Lfreemarker/template/static;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 5
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 6
    new-instance v2, Lfreemarker/ext/dom/goto$case;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/ext/dom/goto$case;-><init>(Lfreemarker/ext/dom/goto$do;)V

    .line 7
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 8
    invoke-static {v3, v0}, Lfreemarker/ext/dom/goto;->if(Ljava/lang/String;Lfreemarker/template/static;)Lorg/xml/sax/InputSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 9
    invoke-virtual {v2}, Lfreemarker/ext/dom/goto$case;->do()I

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-static {}, Lfreemarker/ext/dom/goto;->do()Lfreemarker/core/v;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lfreemarker/core/v;->const(Ljava/lang/Object;Lfreemarker/template/static;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lorg/jaxen/FunctionCallException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse document for URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
