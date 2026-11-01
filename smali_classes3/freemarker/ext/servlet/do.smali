.class public Lfreemarker/ext/servlet/do;
.super Lfreemarker/template/native;
.source "SourceFile"


# instance fields
.field private final context:Ljavax/servlet/ServletContext;

.field private final request:Ljavax/servlet/http/HttpServletRequest;

.field private final unlistedModels:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/template/native;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/servlet/do;->unlistedModels:Ljava/util/Map;

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/template/throws;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    .line 4
    iput-object p2, p0, Lfreemarker/ext/servlet/do;->context:Ljavax/servlet/ServletContext;

    .line 5
    iput-object p3, p0, Lfreemarker/ext/servlet/do;->request:Ljavax/servlet/http/HttpServletRequest;

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

    .line 1
    invoke-super {p0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/servlet/do;->unlistedModels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/servlet/do;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lfreemarker/ext/servlet/do;->request:Ljavax/servlet/http/HttpServletRequest;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0, v0}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    iget-object v0, p0, Lfreemarker/ext/servlet/do;->context:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/do;->unlistedModels:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
