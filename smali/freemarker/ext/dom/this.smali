.class Lfreemarker/ext/dom/this;
.super Lfreemarker/template/return;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;


# static fields
.field private static final if:Lfreemarker/template/ObjectWrapper;


# instance fields
.field public contextNode:Lfreemarker/ext/dom/break;

.field public xpathSupport:Lfreemarker/ext/dom/XPathSupport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/dom/this$do;

    invoke-direct {v0}, Lfreemarker/ext/dom/this$do;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/this;->if:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/dom/break;)V
    .locals 1

    .line 2
    sget-object v0, Lfreemarker/ext/dom/this;->if:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/return;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 3
    iput-object p1, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lfreemarker/ext/dom/break;)V
    .locals 1

    .line 12
    sget-object v0, Lfreemarker/ext/dom/this;->if:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, p1, v0}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    .line 13
    iput-object p2, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/break;)V
    .locals 3

    .line 8
    sget-object v0, Lfreemarker/ext/dom/this;->if:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/return;-><init>(Lfreemarker/template/ObjectWrapper;)V

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lfreemarker/template/return;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/this;-><init>(Lfreemarker/ext/dom/break;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/break;)V
    .locals 3

    .line 4
    sget-object v0, Lfreemarker/ext/dom/this;->if:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/return;-><init>(Lfreemarker/template/ObjectWrapper;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lfreemarker/template/return;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p2, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    return-void
.end method

.method private do(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "This XML query result can\'t be used as "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, " because for that it had to contain exactly 1 XML node, but it contains "

    aput-object v2, v1, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, " nodes. That is, the constructing XML query has found "

    aput-object v2, v1, p1

    if-nez v0, :cond_0

    const-string p1, "no matches."

    goto :goto_0

    :cond_0
    const-string p1, "multiple matches."

    :goto_0
    const/4 v0, 0x5

    aput-object p1, v1, v0

    return-object v1
.end method

.method private if()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/break;

    iget-object v3, v3, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2
    aget-object v1, p1, v0

    .line 3
    const-class v2, Lfreemarker/template/TemplateScalarModel;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lfreemarker/template/TemplateDateModel;

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lfreemarker/template/TemplateNumberModel;

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lfreemarker/template/TemplateBooleanModel;

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    const-class v2, Lfreemarker/template/TemplateNodeModel;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "node"

    .line 8
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/this;->do(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "string"

    .line 9
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/this;->do(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public filterByName(Ljava/lang/String;)Lfreemarker/ext/dom/this;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/ext/dom/this;

    iget-object v1, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/this;-><init>(Lfreemarker/ext/dom/break;)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/dom/break;

    .line 5
    instance-of v5, v4, Lfreemarker/ext/dom/else;

    if-eqz v5, :cond_1

    .line 6
    move-object v5, v4

    check-cast v5, Lfreemarker/ext/dom/else;

    invoke-virtual {v5, p1, v2}, Lfreemarker/ext/dom/else;->strictfp(Ljava/lang/String;Lfreemarker/core/d0;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v0, v4}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/break;

    .line 3
    invoke-virtual {v0, p1}, Lfreemarker/ext/dom/break;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v3, "@@"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5
    sget-object v4, Lfreemarker/ext/dom/do;->MARKUP:Lfreemarker/ext/dom/do;

    invoke-virtual {v4}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lfreemarker/ext/dom/do;->NESTED_MARKUP:Lfreemarker/ext/dom/do;

    .line 6
    invoke-virtual {v4}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lfreemarker/ext/dom/do;->TEXT:Lfreemarker/ext/dom/do;

    .line 7
    invoke-virtual {v4}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 9
    invoke-static {p1}, Lfreemarker/ext/dom/do;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is only applicable to a single XML node, but it was applied on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " XML nodes (multiple matches)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "an empty list of XML nodes (no matches)."

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
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

    .line 12
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v1, v0, :cond_5

    .line 13
    invoke-virtual {p0, v1}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/break;

    .line 14
    invoke-virtual {v3, p1}, Lfreemarker/ext/dom/break;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    .line 15
    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_5
    new-instance p1, Landroid/support/v4/ez1;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 17
    :cond_6
    invoke-static {p1}, Lfreemarker/ext/dom/case;->do(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "@"

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    invoke-static {p1, v2}, Lfreemarker/ext/dom/case;->if(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "@*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_7
    const-string v3, "*"

    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "**"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    invoke-virtual {p0}, Lfreemarker/ext/dom/this;->getXPathSupport()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    .line 22
    :cond_9
    invoke-direct {p0}, Lfreemarker/ext/dom/this;->if()Ljava/util/List;

    move-result-object v0

    .line 23
    :goto_3
    invoke-interface {v1, v0, p1}, Lfreemarker/ext/dom/XPathSupport;->executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
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

    .line 25
    :cond_b
    :goto_4
    new-instance v3, Lfreemarker/ext/dom/this;

    iget-object v4, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    invoke-direct {v3, v4}, Lfreemarker/ext/dom/this;-><init>(Lfreemarker/ext/dom/break;)V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_d

    .line 26
    invoke-virtual {p0, v4}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v5

    check-cast v5, Lfreemarker/ext/dom/break;

    .line 27
    instance-of v6, v5, Lfreemarker/ext/dom/else;

    if-eqz v6, :cond_c

    .line 28
    check-cast v5, Lfreemarker/ext/dom/else;

    invoke-virtual {v5, p1}, Lfreemarker/ext/dom/else;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    check-cast v5, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v5, :cond_c

    .line 29
    invoke-interface {v5}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_c

    .line 30
    invoke-interface {v5, v7}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v8

    invoke-virtual {v3, v8}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 31
    :cond_d
    invoke-virtual {v3}, Lfreemarker/template/return;->size()I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 32
    invoke-virtual {v3, v1}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_e
    return-object v3
.end method

.method public getXPathSupport()Lfreemarker/ext/dom/XPathSupport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/this;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/ext/dom/this;->contextNode:Lfreemarker/ext/dom/break;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lfreemarker/ext/dom/break;->goto()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/this;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/break;

    invoke-virtual {v0}, Lfreemarker/ext/dom/break;->goto()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/this;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/dom/this;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/return;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
