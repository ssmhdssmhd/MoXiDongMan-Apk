.class Lfreemarker/ext/dom/new;
.super Lfreemarker/ext/dom/break;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# instance fields
.field private catch:Lfreemarker/ext/dom/else;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/break;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "*"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/dom/new;->package()Lfreemarker/ext/dom/else;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "**"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 5
    new-instance v0, Lfreemarker/ext/dom/this;

    invoke-direct {v0, p1, p0}, Lfreemarker/ext/dom/this;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/break;)V

    return-object v0

    .line 6
    :cond_1
    invoke-static {p1}, Lfreemarker/ext/dom/case;->do(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/else;

    .line 8
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfreemarker/ext/dom/else;->strictfp(Ljava/lang/String;Lfreemarker/core/d0;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    .line 9
    :cond_2
    new-instance p1, Lfreemarker/ext/dom/this;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/this;-><init>(Lfreemarker/ext/dom/break;)V

    return-object p1

    .line 10
    :cond_3
    invoke-super {p0, p1}, Lfreemarker/ext/dom/break;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "@document"

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public package()Lfreemarker/ext/dom/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/new;->catch:Lfreemarker/ext/dom/else;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/dom/break;->do:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/break;->finally(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/break;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/else;

    iput-object v0, p0, Lfreemarker/ext/dom/new;->catch:Lfreemarker/ext/dom/else;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/dom/new;->catch:Lfreemarker/ext/dom/else;

    return-object v0
.end method
