.class public Lfreemarker/template/utility/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/new$if;,
        Lfreemarker/template/utility/new$do;
    }
.end annotation


# static fields
.field private static for:Ljava/util/HashMap;


# instance fields
.field private do:Lorg/w3c/dom/Node;

.field private if:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/template/utility/new;->for:Ljava/util/HashMap;

    const-string v1, "*"

    const-string v2, "children"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lfreemarker/template/utility/new;->for:Ljava/util/HashMap;

    const-string v1, "@*"

    const-string v2, "attributes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/utility/new;->if:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    return-void
.end method

.method private static case(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 1

    :cond_0
    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic do(Lfreemarker/template/utility/new;)Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method private static for(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lorg/w3c/dom/Element;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0}, Lfreemarker/template/utility/new;->new(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 9
    :goto_1
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0}, Lfreemarker/template/utility/new;->new(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static if(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/w3c/dom/Text;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/new;->if(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private static new(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 1

    :cond_0
    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static try(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 1

    .line 1
    invoke-static {p0}, Lfreemarker/template/utility/new;->case(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else(Lfreemarker/template/utility/new;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/new;->if:Ljava/util/HashMap;

    const-string v1, "parent"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/utility/new;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lfreemarker/template/utility/new;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/template/utility/new;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lfreemarker/template/utility/new;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1b

    const-string v2, "attributes"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 7
    new-instance v0, Lfreemarker/template/native;

    invoke-direct {v0}, Lfreemarker/template/native;-><init>()V

    .line 8
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v3, v2, :cond_1a

    .line 9
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    .line 10
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 12
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_3

    .line 13
    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/support/v4/ez1;

    invoke-direct {v1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v0, v1

    goto/16 :goto_3

    .line 15
    :cond_3
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "Trying to get an attribute value for a non-element node"

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v2, "is_element"

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_5

    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_3

    :cond_6
    const-string v2, "is_text"

    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    instance-of v0, v0, Lorg/w3c/dom/Text;

    if-eqz v0, :cond_7

    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_3

    :cond_7
    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_3

    :cond_8
    const-string v2, "name"

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v2, "children"

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    new-instance v0, Lfreemarker/template/utility/new$if;

    iget-object v1, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfreemarker/template/utility/new$if;-><init>(Lfreemarker/template/utility/new;Lorg/w3c/dom/NodeList;)V

    goto/16 :goto_3

    :cond_a
    const-string v2, "parent"

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 25
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2

    .line 26
    :cond_b
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_2

    :cond_c
    const-string v2, "ancestorByName"

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 28
    new-instance v0, Lfreemarker/template/utility/new$do;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/new$do;-><init>(Lfreemarker/template/utility/new;)V

    goto/16 :goto_3

    :cond_d
    const-string v2, "nextSibling"

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 30
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    .line 31
    :cond_e
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_f
    const-string v2, "previousSibling"

    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 33
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_2

    .line 34
    :cond_10
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_11
    const-string v2, "nextSiblingElement"

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 36
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/new;->new(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_2

    .line 37
    :cond_12
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_13
    const-string v2, "previousSiblingElement"

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 39
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/new;->case(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_2

    .line 40
    :cond_14
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_15
    const-string v2, "nextElement"

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 42
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/new;->for(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_16

    goto/16 :goto_2

    .line 43
    :cond_16
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_17
    const-string v2, "previousElement"

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 45
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/new;->try(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_2

    .line 46
    :cond_18
    new-instance v1, Lfreemarker/template/utility/new;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/new;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_19
    const-string v1, "text"

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 48
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-static {v1}, Lfreemarker/template/utility/new;->if(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    .line 49
    :cond_1a
    :goto_3
    iget-object v1, p0, Lfreemarker/template/utility/new;->if:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/new;->do:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
