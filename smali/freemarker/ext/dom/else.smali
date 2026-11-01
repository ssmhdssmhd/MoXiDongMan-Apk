.class Lfreemarker/ext/dom/else;
.super Lfreemarker/ext/dom/break;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/break;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method private abstract(Lorg/w3c/dom/Node;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/else;->private(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private continue(C)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private package(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    .line 2
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x3a

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "D"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v3

    invoke-virtual {v3}, Lfreemarker/core/d0;->E1()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lfreemarker/core/d0;->X1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private private(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lfreemarker/ext/dom/else;->continue(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/dom/else;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->getNodeNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lfreemarker/core/d0;->E1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2, v1}, Lfreemarker/core/d0;->d2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "*"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 2
    new-instance p1, Lfreemarker/ext/dom/this;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/this;-><init>(Lfreemarker/ext/dom/break;)V

    .line 3
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->getChildNodes()Lfreemarker/template/TemplateSequenceModel;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-interface {v0, v2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/dom/break;

    .line 6
    iget-object v5, v4, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_0

    .line 7
    invoke-virtual {p1, v4}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    const-string v1, "**"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    new-instance p1, Lfreemarker/ext/dom/this;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/this;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/break;)V

    return-object p1

    :cond_3
    const-string v0, "@"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "@@"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12
    sget-object v0, Lfreemarker/ext/dom/do;->ATTRIBUTES:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    new-instance p1, Lfreemarker/ext/dom/this;

    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/this;-><init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/break;)V

    return-object p1

    .line 14
    :cond_4
    sget-object v0, Lfreemarker/ext/dom/do;->START_TAG:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    new-instance p1, Lfreemarker/ext/dom/catch;

    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-direct {p1, v0}, Lfreemarker/ext/dom/catch;-><init>(Lorg/w3c/dom/Node;)V

    .line 16
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v1}, Lfreemarker/ext/dom/catch;->new(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_5
    sget-object v0, Lfreemarker/ext/dom/do;->END_TAG:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    new-instance p1, Lfreemarker/ext/dom/catch;

    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-direct {p1, v0}, Lfreemarker/ext/dom/catch;-><init>(Lorg/w3c/dom/Node;)V

    .line 19
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v1}, Lfreemarker/ext/dom/catch;->for(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 20
    :cond_6
    sget-object v0, Lfreemarker/ext/dom/do;->ATTRIBUTES_MARKUP:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    new-instance v0, Lfreemarker/ext/dom/catch;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/catch;-><init>(Lorg/w3c/dom/Node;)V

    .line 23
    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/dom/catch;->try(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/StringBuilder;)V

    .line 24
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_7
    sget-object v0, Lfreemarker/ext/dom/do;->PREVIOUS_SIBLING_ELEMENT:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 26
    iget-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_8

    .line 27
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/else;->abstract(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 29
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_9

    .line 30
    invoke-static {p1}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-instance p1, Lfreemarker/ext/dom/this;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/dom/this;-><init>(Ljava/util/List;Lfreemarker/ext/dom/break;)V

    :goto_2
    return-object p1

    .line 31
    :cond_a
    sget-object v0, Lfreemarker/ext/dom/do;->NEXT_SIBLING_ELEMENT:Lfreemarker/ext/dom/do;

    invoke-virtual {v0}, Lfreemarker/ext/dom/do;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    iget-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_b

    .line 33
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/else;->abstract(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 34
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    .line 35
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_c

    .line 36
    invoke-static {p1}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p1

    goto :goto_4

    :cond_c
    new-instance p1, Lfreemarker/ext/dom/this;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/dom/this;-><init>(Ljava/util/List;Lfreemarker/ext/dom/break;)V

    :goto_4
    return-object p1

    .line 37
    :cond_d
    invoke-super {p0, p1}, Lfreemarker/ext/dom/break;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 38
    :cond_e
    invoke-static {p1, v3}, Lfreemarker/ext/dom/case;->if(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/else;->package(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-nez p1, :cond_f

    .line 40
    new-instance p1, Lfreemarker/ext/dom/this;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/this;-><init>(Lfreemarker/ext/dom/break;)V

    return-object p1

    .line 41
    :cond_f
    invoke-static {p1}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object p1

    return-object p1

    :cond_10
    const-string v0, "@*"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 43
    new-instance p1, Lfreemarker/ext/dom/this;

    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/this;-><init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/break;)V

    return-object p1

    .line 44
    :cond_11
    invoke-super {p0, p1}, Lfreemarker/ext/dom/break;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 45
    :cond_12
    invoke-static {p1}, Lfreemarker/ext/dom/case;->do(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 46
    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->getChildNodes()Lfreemarker/template/TemplateSequenceModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/this;

    invoke-virtual {v0, p1}, Lfreemarker/ext/dom/this;->filterByName(Ljava/lang/String;)Lfreemarker/ext/dom/this;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lfreemarker/template/return;->size()I

    move-result v0

    if-eq v0, v3, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {p1, v2}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_5
    return-object p1

    .line 48
    :cond_14
    invoke-super {p0, p1}, Lfreemarker/ext/dom/break;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only elements with no child elements can be processed as text.\nThis element with name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    .line 7
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" has a child element named: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v1
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public strictfp(Ljava/lang/String;Lfreemarker/core/d0;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/dom/else;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/dom/break;->getNodeNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lfreemarker/ext/dom/case;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method
